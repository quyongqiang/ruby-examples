#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
require File.dirname(__FILE__) + '/spec_helper'

class BddFramework
  def intuitive?
    true
  end
  
  def adopted_quickly?
    true
  end
end

describe "BDD framework" do

  before(:each) do
    @bdd_framework = BddFramework.new
  end

  it "should be adopted quickly" do
    @bdd_framework.should be_adopted_quickly
  end
  
  it "should be intuitive" do
    @bdd_framework.should be_intuitive
  end

end
