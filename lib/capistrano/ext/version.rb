module Capistrano
  module Ext
    module Rvm
      module Version #:nodoc:
        MAJOR = 0
        MINOR = 0
        TINY  = 2

        STRING = [MAJOR, MINOR, TINY].join(".")
      end
    end
  end
end
