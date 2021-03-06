#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
class MigrationGenerator < Rails::Generator::NamedBase  
  def manifest
    record do |m|
      m.migration_template 'migration.rb', 'db/migrate', :assigns => get_local_assigns
    end
  end

  
  private  
    def get_local_assigns
      returning(assigns = {}) do
        if class_name.underscore =~ /^(add|remove)_.*_(?:to|from)_(.*)/
          assigns[:migration_action] = $1
          assigns[:table_name]       = $2.pluralize
        else
          assigns[:attributes] = []
        end
      end
    end
end
