require_relative '../spec_helper'
using StringInflection::Plural

module StringInflectionFixYToIesFeature
  RSpec.describe name do
    it "works" do
      expect("city".to_plural).to eq "cities"
    end
  end
end
