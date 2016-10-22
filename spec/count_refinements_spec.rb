require_relative 'spec_helper'
using StringInflection::Plural
using StringInflection::Singular

module StringInflectionCountRefinementsFeature
  module Helper
    def string_to_plural(s)
      s.to_plural
    end

    def string_to_singular(s)
      s.to_singular
    end
  end

  RSpec.describe name do
    include Helper

    def self.expect_case(method, expectations)
      context method do
        method = "string_to_#{method}"
        expectations.each do |ex|
          it "#{ex[0]} to #{ex[1]}" do
            expect(__send__(method, ex[0])).to eq ex[1]
          end
        end
      end
    end

    expect_case 'plural', [
      ['apple', 'apples'],
      ['child', 'children']
    ]

    expect_case 'singular', [
      ['apples', 'apple'],
      ['data', 'datum']
    ]
  end
end
