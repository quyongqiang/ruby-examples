#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
require 'nokogiri'

# = XmlMini Nokogiri implementation
module ActiveSupport
  module XmlMini_Nokogiri #:nodoc:
    extend self

    # Parse an XML Document string into a simple hash using libxml / nokogiri.
    # string::
    #   XML Document string to parse
    def parse(string)
      if string.blank?
        {}
      else
        doc = Nokogiri::XML(string)
        raise doc.errors.first if doc.errors.length > 0
        doc.to_hash
      end
    end

    module Conversions
      module Document
        def to_hash
          root.to_hash
        end
      end

      module Node
        CONTENT_ROOT = '__content__'

        # Convert XML document to hash
        #
        # hash::
        #   Hash to merge the converted element into.
        def to_hash(hash = {})
          hash[name] ||= attributes_as_hash

          walker = lambda { |memo, parent, child, callback|
            next if child.blank? && 'file' != parent['type']

            if child.text?
              (memo[CONTENT_ROOT] ||= '') << child.content
              next
            end

            name = child.name

            child_hash = child.attributes_as_hash
            if memo[name]
              memo[name] = [memo[name]].flatten
              memo[name] << child_hash
            else
              memo[name] = child_hash
            end

            # Recusively walk children
            child.children.each { |c|
              callback.call(child_hash, child, c, callback)
            }
          }

          children.each { |c| walker.call(hash[name], self, c, walker) }
          hash
        end

        def attributes_as_hash
          Hash[*(attribute_nodes.map { |node|
            [node.node_name, node.value]
          }.flatten)]
        end
      end
    end

    Nokogiri::XML::Document.send(:include, Conversions::Document)
    Nokogiri::XML::Node.send(:include, Conversions::Node)
  end
end
