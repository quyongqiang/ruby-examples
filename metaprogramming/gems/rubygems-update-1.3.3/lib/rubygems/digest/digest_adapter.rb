#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
#--
# Copyright 2006 by Chad Fowler, Rich Kilmer, Jim Weirich and others.
# All rights reserved.
# See LICENSE.txt for permissions.
#++

require 'rubygems'

##
# There is an incompatibility between the way Ruby 1.8.5 and 1.8.6 handles
# digests. This DigestAdapter will take a pre-1.8.6 digest and adapt it to
# the 1.8.6 API.
#
# Note that only the digest and hexdigest methods are adapted, since these
# are the only functions used by RubyGems.

class Gem::DigestAdapter

  ##
  # Initialize a digest adapter.

  def initialize(digest_class)
    @digest_class = digest_class
  end

  ##
  # Return a new digester.  Since we are only implementing the stateless
  # methods, we will return ourself as the instance.

  def new
    self
  end

  ##
  # Return the digest of +string+ as a hex string.

  def hexdigest(string)
    @digest_class.new(string).hexdigest
  end

  ##
  # Return the digest of +string+ as a binary string.

  def digest(string)
    @digest_class.new(string).digest
  end

end

