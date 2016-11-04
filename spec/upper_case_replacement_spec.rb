require_relative 'spec_helper'
using StringInflection::Singular
using StringInflection::Plural

module StringInflectionUpperCaseReplacementFeature
  RSpec.describe name do
    def to_singular(s)
      s.to_singular up: true
    end

    def to_plural(s)
      s.to_plural up: true
    end

    def self.expect(method, source, expected)
      it "#{source} to #{expected}" do
        expect(__send__("to_#{method}", source)).to eq expected
      end
    end

    context "to_singular" do
      expect :singular, 'FOOS', 'FOO'
      expect :singular, 'DATA', 'DATUM'
      expect :singular, 'data', 'datUM'
    end

    context "to_plural" do
      expect :plural, 'FOO', 'FOOS'
      expect :plural, 'CHILD', 'CHILDREN'
      expect :plural, 'child', 'childREN'
    end
  end
end
