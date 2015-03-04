require 'rails'
require 'lograge'

module Metova
  module Logger
    class Railtie < ::Rails::Railtie

      config.log_tags = [
        lambda { |request| request.uuid[0..15] }
      ]

      config.lograge.enabled = true
      config.lograge.custom_options = lambda do |event|
        {
          time: event.time,
          user: event.payload[:user],
          ip: event.payload[:ip],
        }
      end

    end
  end
end
