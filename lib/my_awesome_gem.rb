# frozen_string_literal: true

require_relative "my_awesome_gem/version"

module MyAwesomeGem
  class Error < StandardError; end

  class Tell
    def iseven(num)
      if num%2
        "its odd"
      else
        "its even"
      end
    end
  end
end
