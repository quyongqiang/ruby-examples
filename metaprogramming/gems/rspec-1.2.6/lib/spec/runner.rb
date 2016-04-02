#---
# Excerpted from "Metaprogramming Ruby: Program Like the Ruby Pros",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/ppmetr for more book information.
#---
require 'spec/runner/configuration'
require 'spec/runner/options'
require 'spec/runner/option_parser'
require 'spec/runner/example_group_runner'
require 'spec/runner/command_line'
require 'spec/runner/drb_command_line'
require 'spec/runner/backtrace_tweaker'
require 'spec/runner/reporter'
require 'spec/runner/spec_parser'
require 'spec/runner/class_and_arguments_parser'
require 'spec/runner/extensions/kernel'

module Spec
  module Runner
    
    class ExampleGroupCreationListener
      def register_example_group(klass)
        Spec::Runner.options.add_example_group klass
      end
    end
    
    Spec::Example::ExampleGroupFactory.example_group_creation_listeners << ExampleGroupCreationListener.new
    
    class << self
      def configuration # :nodoc:
        @configuration ||= Spec::Runner::Configuration.new
      end

      # Use this to configure various configurable aspects of
      # RSpec:
      #
      #   Spec::Runner.configure do |configuration|
      #     # Configure RSpec here
      #   end
      #
      # The yielded <tt>configuration</tt> object is a
      # Spec::Runner::Configuration instance. See its RDoc
      # for details about what you can do with it.
      #
      def configure
        yield configuration
      end
      
      def autorun # :nodoc:
        at_exit {exit run unless $!}
      end

      def options # :nodoc:
        @options ||= begin
          parser = ::Spec::Runner::OptionParser.new($stderr, $stdout)
          parser.order!(ARGV)
          parser.options
        end
      end
    
      def use options
        @options = options
      end

      def run
        options.examples_run? || options.run_examples
      end

    end
  end
end