module Api::V1
  class UserController < ApiController

    doorkeeper_for :all
    respond_to     :json

    def index
      respond_with current_resource_owner
    end
  end
end
