require 'cucumber/formatter/pretty'
module Slowhandcuke
  class Formatter < Cucumber::Formatter::Pretty
    def before_step( step )
      @io.printf '... %s', step.name
      @io.flush
      super
    end

    def before_step_result( *args )
      @io.printf "\r"
      super
    end
  end
end
