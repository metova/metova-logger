module Metova
  module Logger
    module ControllerPatch

      def append_info_to_payload(payload)
        super
        payload[:ip] = request.remote_ip
        if defined?(current_user) && current_user
          payload[:user] = [
            (current_user.try(:email) || 'NOEMAIL'),
            current_user.id
          ].join('/')
        end
      end

    end
  end
end

ActionController::Base.send :include, Metova::Logger::ControllerPatch
