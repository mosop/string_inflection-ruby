require_relative '../spec_helper'
using StringInflection::Singular
using StringInflection::Plural

module StringInflectionFixPreserveCaseInSingularOrPluralFormFeature
  RSpec.describe name do
    def self.expect_plural(source, expected)
      it "#{source} to #{expected}" do
        expect(source.to_plural).to eq expected
      end
    end

    def self.expect_singular(source, expected)
      it "#{source} to #{expected}" do
        expect(source.to_singular).to eq expected
      end
    end

    describe "singular" do
      expect_singular "FooBars", "FooBar"
      expect_singular "Children", "Child"
    end

    describe "plural" do
      expect_plural "FooBar", "FooBars"
      expect_plural "Datum", "Data"
    end
  end
end
