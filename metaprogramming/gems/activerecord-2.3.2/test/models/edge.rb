#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
# This class models an edge in a directed graph.
class Edge < ActiveRecord::Base
  belongs_to :source, :class_name => 'Vertex', :foreign_key => 'source_id'
  belongs_to :sink,   :class_name => 'Vertex', :foreign_key => 'sink_id'
end
