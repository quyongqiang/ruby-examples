#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
module ActionView
  module Helpers
    # Provides a set of methods for making it easier to debug Rails objects.
    module DebugHelper
      # Returns a YAML representation of +object+ wrapped with <pre> and </pre>.
      # If the object cannot be converted to YAML using +to_yaml+, +inspect+ will be called instead.
      # Useful for inspecting an object at the time of rendering.
      #
      # ==== Example
      #
      #   @user = User.new({ :username => 'testing', :password => 'xyz', :age => 42}) %>
      #   debug(@user)
      #   # =>
      #   <pre class='debug_dump'>--- !ruby/object:User
      #   attributes:
      #   &nbsp; updated_at:
      #   &nbsp; username: testing
      #
      #   &nbsp; age: 42
      #   &nbsp; password: xyz
      #   &nbsp; created_at:
      #   attributes_cache: {}
      #
      #   new_record: true
      #   </pre>

      def debug(object)
        begin
          Marshal::dump(object)
          "<pre class='debug_dump'>#{h(object.to_yaml).gsub("  ", "&nbsp; ")}</pre>"
        rescue Exception => e  # errors from Marshal or YAML
          # Object couldn't be dumped, perhaps because of singleton methods -- this is the fallback
          "<code class='debug_dump'>#{h(object.inspect)}</code>"
        end
      end
    end
  end
end
