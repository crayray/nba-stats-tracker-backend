# class ApplicationController < ActionController::API
#     skip_before_action :verify_authenticity_token
# end

class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token
  end