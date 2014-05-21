module Api::V1
  class ArticlesController < ApiController

    doorkeeper_for :all
    respond_to     :json

    def index
      respond_with current_resource_owner.articles
    end
  end
end
