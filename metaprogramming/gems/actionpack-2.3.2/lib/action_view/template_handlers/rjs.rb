#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
module ActionView
  module TemplateHandlers
    class RJS < TemplateHandler
      include Compilable

      def compile(template)
        "@template_format = :html;" +
        "controller.response.content_type ||= Mime::JS;" +
          "update_page do |page|;#{template.source}\nend"
      end
    end
  end
end
