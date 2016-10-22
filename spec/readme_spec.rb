require_relative 'spec_helper'
using StringInflection

module StringInflectionReadmeFeature
  RSpec.describe name do
    it 'Usage' do
      expect('foo bar'.to_camel).to eq 'fooBar'
      expect('foo bar'.to_kebab).to eq 'foo-bar'
      expect('foo bar'.to_pascal).to eq 'FooBar'
      expect('foo bar'.to_snake).to eq 'foo_bar'
      expect('data'.to_singular).to eq 'datum'
      expect('child'.to_plural).to eq 'children'
    end
  end
end
