module Metova
  module Logger
    module ControllerPatch
      def append_info_to_payload(payload)
        super
        payload[:ip] = request.remote_ip
        if defined?(current_user) && current_user
          payload[:user] = [
            (current_user.try(:email) || 'NO_EMAIL'),
            (current_user.try(:id) || 'NO_ID')
          ].join('/')
        end
      end
    end
  end
end

ActionController::Base.include Metova::Logger::ControllerPatch
