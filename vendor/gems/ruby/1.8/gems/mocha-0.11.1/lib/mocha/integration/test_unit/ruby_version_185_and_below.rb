require 'test/unit/testcase'
require 'mocha/integration/test_unit/assertion_counter'
require 'mocha/expectation_error'

module Mocha

  module Integration

    module TestUnit

      module RubyVersion185AndBelow
        def self.included(mod)
          $stderr.puts "Monkey patching Test::Unit for Ruby <= v1.8.5" if $mocha_options['debug']
        end
        def run(result)
          assertion_counter = AssertionCounter.new(result)
          yield(Test::Unit::TestCase::STARTED, name)
          @_result = result
          begin
            begin
              setup
              __send__(@method_name)
              mocha_verify(assertion_counter)
            rescue Mocha::ExpectationError => e
              add_failure(e.message, e.backtrace)
            rescue Test::Unit::AssertionFailedError => e
              add_failure(e.message, e.backtrace)
            rescue StandardError, ScriptError
              add_error($!)
            ensure
              begin
                teardown
              rescue Test::Unit::AssertionFailedError => e
                add_failure(e.message, e.backtrace)
              rescue StandardError, ScriptError
                add_error($!)
              end
            end
          ensure
            mocha_teardown
          end
          result.add_run
          yield(Test::Unit::TestCase::FINISHED, name)
        end
      end

    end

  end

end
