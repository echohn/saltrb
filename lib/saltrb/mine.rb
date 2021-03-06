require_relative 'common'

module Saltrb
  module Mine
    BASE="mine"
    funcs = [ :delete, :flush, :get, :get_docker, :send, :update ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command, timeout = Saltrb::DEFAULT_TIMEOUT) {
        return Saltrb.runner("#{name}", target, self::BASE, command, timeout)
      }
    end
  end
end
