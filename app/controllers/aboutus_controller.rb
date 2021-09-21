class AboutusController < ApplicationController
  def show
    render template: "aboutus/#{params[:aboutu]}"
  end
  end
