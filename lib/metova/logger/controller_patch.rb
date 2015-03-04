module MetovaLogs
  module ControllerPatch

    def append_info_to_payload(payload)
      super
      payload[:ip] = request.remote_ip
      if current_user
        payload[:user] = [
          (current_user.try(:email) || 'NOEMAIL'),
          current_user.id
        ].join('/')
      end
    end

  end
end

ActionController::Base.send :include, MetovaLogs::ControllerPatch
