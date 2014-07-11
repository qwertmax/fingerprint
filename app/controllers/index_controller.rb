class IndexController < ApplicationController
  
  def index

  end

  def fp
    jsFile = Fp::Application.assets.find_asset('fingerprint.js')
    jsBody = Uglifier.compile(
      jsFile,
      :output => {
        :comments => :none
        })
    render :text => jsBody, :formats => [:js]
  end

end
