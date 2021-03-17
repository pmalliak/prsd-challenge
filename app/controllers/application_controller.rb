class ApplicationController < ActionController::API
  include Pagy::Backend
  helper ApplicationHelper
end
