require_relative '../plurals'

module StringInflection
  module Methods
    module Singular
      PLURAL_PATTERNS = [
        [/([hosxz])es$/i, '\1'],
        [/ies$/i, 'y'],
        [/(m)en$/i, '\1an'],
      ]
      extend Method
      @method_definition = proc {
        s = split(/[^\w]/).last
        diff = StringInflection.plurals[s.downcase]
        return s[0..(-1 - diff[0])] + diff[1] if diff
        PLURAL_PATTERNS.each do |i|
          return s if s.sub!(i[0], i[1])
        end
        s[0..-2]
      }
    end
  end
end
