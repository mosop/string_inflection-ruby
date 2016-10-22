require_relative 'spec_helper'
using StringInflection::Cases

module StringInflectionCasesRefinementFeature
  TWO_WORDS = [
    "fooBar",
    "foo-bar",
    "FooBar",
    "foo_bar",
    "foo bar"
  ]

  module Helper
    def string_to_camel(s)
      s.to_camel
    end

    def string_to_kebab(s)
      s.to_kebab
    end

    def string_to_pascal(s)
      s.to_pascal
    end

    def string_to_snake(s)
      s.to_snake
    end
  end

  RSpec.describe name do
    include Helper

    def self.expect_case(method, expected)
      context method do
        method = "string_to_#{method}"
        TWO_WORDS.each do |source|
          it "#{source} to #{expected}" do
            expect(__send__(method, source)).to eq expected
          end
        end
      end
    end

    expect_case 'camel', 'fooBar'
    expect_case 'kebab', 'foo-bar'
    expect_case 'pascal', 'FooBar'
    expect_case 'snake', 'foo_bar'
  end
end
