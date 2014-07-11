class SiteListController < ApplicationController
  skip_before_action :verify_authenticity_token
  http_basic_authenticate_with :name => "orwell", :password => "orwell"

  def list
    #@sites = Site.all
    @sites = Site.order('created_at DESC').page(params[:page]).per_page(10)
  end

end
