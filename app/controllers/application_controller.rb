class ApplicationController < ActionController::API
  include ActionController::Cookies

def find_user
  @current_user = User.find_by(id: session[:user_id])
end

end
