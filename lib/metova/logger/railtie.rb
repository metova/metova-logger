require 'rails'
require 'lograge'

module Metova
  module Logger
    class Railtie < ::Rails::Railtie

      initializer 'metova.logger' do |app|
        app.config.log_tags = [
          lambda { |req| req.uuid[0..15] }
        ]
      end

      config.lograge.enabled = true
      config.lograge.custom_options = lambda do |event|
        params = event.payload[:params].reject do |k|
          %w(controller action format).include? k
        end

        {
          time: event.time,
          user: event.payload[:user],
          ip: event.payload[:ip],
          params: "<PARAMS>#{params}</PARAMS>"
        }
      end

    end
  end
end
