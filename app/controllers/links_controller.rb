class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(params[:link])
    @link.create_short_url
    if @link.save
      redirect_to @link
    else
      redirect_to new_link_path, notice: "Your URL is not valid."
    end
  end

  def show
    @link = Link.find(params[:id])
  end

end