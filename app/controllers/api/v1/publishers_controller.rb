class Api::V1::PublishersController < ApplicationController
  def create
    @publisher = Publisher.new(publisher_params)
    if !@publisher.save
      render :json => {:message => @publisher.errors.full_messages}, status: 500
    end
  end
  
  private
    def publisher_params
      params.permit(:name, :telephone, :address)
    end
end