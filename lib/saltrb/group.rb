require_relative 'common'

module Saltrb
  module Group
    BASE="group"
    funcs = [ :add, :adduser, :chgid, :delete, :deluser, :getent, :info, :members ]

    funcs.each do |name|
      define_singleton_method "#{name}", ->(target, command) {
        return Saltrb.runner("#{name}", target, self::BASE, command, Saltrb::DEFAULT_TIMEOUT)
      }
    end
  end
end