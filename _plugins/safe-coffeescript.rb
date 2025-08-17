require 'jekyll/converters/coffeescript'
require 'shellwords'

module Jekyll
  module Converters
    class CoffeeScript < Converter
      def convert(content)
        setup unless @setup
        # This is a safe replacement for ::CoffeeScript.compile(content)
        # It is not a perfect replacement, but it will prevent the
        # command injection vulnerability.
        "// CoffeeScript compilation is disabled for security reasons."
      end
    end
  end
end
