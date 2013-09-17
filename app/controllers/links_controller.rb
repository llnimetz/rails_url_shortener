class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    @link.create_short_url
    @link.save
    redirect_to @link
  end

  def show
    @link = Link.find(params[:id])
  end

end