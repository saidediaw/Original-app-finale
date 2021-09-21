class PagesController < ApplicationController
  def show
    render template: "pages/#{params[:about]}"
  end
end
