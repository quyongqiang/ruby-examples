#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
module ActiveSupport #:nodoc:
  module CoreExtensions #:nodoc:
    module Array #:nodoc:
      module ExtractOptions
        # Extracts options from a set of arguments. Removes and returns the last
        # element in the array if it's a hash, otherwise returns a blank hash.
        #
        #   def options(*args)
        #     args.extract_options!
        #   end
        #
        #   options(1, 2)           # => {}
        #   options(1, 2, :a => :b) # => {:a=>:b}
        def extract_options!
          last.is_a?(::Hash) ? pop : {}
        end
      end
    end
  end
end
