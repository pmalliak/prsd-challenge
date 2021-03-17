class Api::V1::AuthorsController < ApplicationController
  def create
    @author = Author.new(author_params)
    if !@author.save
      render :json => {:message => @author.errors.full_messages}, status: 500
    end
  end
  
  private
    def author_params
      params.permit(:first_name, :last_name, :birthday, :email)
    end
end