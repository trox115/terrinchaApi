module CurrentUserConcern
  extend ActiveSupport::Concern
  included do
    before_action :set_current_user
  end
  def set_current_user
    print 'ola'
    @current_user = Cliente.find(session[:user_id]) if session[:user_id]
  end
end
