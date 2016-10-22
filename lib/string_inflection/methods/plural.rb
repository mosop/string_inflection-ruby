require_relative '../singulars'

module StringInflection
  module Methods
    module Plural
      SINGULAR_PATTERNS = [
        [/([sxz])$/i, '\1es'],
        [/y$/i, 'ies'],
        [/(m)an$/i, '\1en'],
      ]
      extend Method
      @method_definition = proc {
        s = split(/[^\w]/).last
        s.downcase!
        diff = StringInflection.singulars[s]
        return s[0..(-1 - diff[0])] + diff[1] if diff
        SINGULAR_PATTERNS.each do |i|
          s if s.sub!(i[0], i[1])
        end
        s + 's'
      }
    end
  end
end
