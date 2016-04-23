module Overlook
  module Csgo
    module Demo
      class KeyReader
        def read(key)
          {
            1 => key.val_string,
            2 => key.val_float,
            3 => key.val_long,
            4 => key.val_short,
            5 => key.val_byte,
            6 => key.val_bool
          }[key.type]
        end
      end
    end
  end
end
