class UserDataController < ApplicationController

  def index
    #data = ActiveSupport::JSON.decode params[:data]
    #render :json => data and return

    @user = User.get_user params[:site]

    if params[:readonly] != "true"
      site = Site.new site_params
      site.user = @user
      site.save
    end

    render :partial => 'partials/user_data', :formats => 'json'
  end

  private

  def site_params
    params.require(:site).permit(:fp, :sitename, :uri)
  end

end
