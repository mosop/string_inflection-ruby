require_relative 'spec_helper'
using StringInflection::Singular
using StringInflection::Plural

module StringInflectionCountForMultipleWordsFeature
  PREFIXES = [
    "Foo ",
    "Foo-",
    "Foo_",
    "Foo"
  ]

  RSpec.describe name do
    def to_singular(s)
      s.to_singular
    end

    def to_plural(s)
      s.to_plural
    end

    def self.expect(method, source_word, expected_word)
      PREFIXES.each do |prefix|
        source = "#{prefix}#{source_word}"
        expected = "#{prefix}#{expected_word}"
        it "#{source} to #{expected}" do
          expect(__send__("to_#{method}", source)).to eq expected
        end
      end
    end

    context "to_singular" do
      expect :singular, 'Bars', 'Bar'
      expect :singular, 'Data', 'Datum'
    end

    context "to_plural" do
      expect :plural, 'Bar', 'Bars'
      expect :plural, 'Child', 'Children'
    end
  end
end
