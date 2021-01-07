class StarsController < ApplicationController
  layout 'stars'

  def index
    @msg='Star Data.'
    @data=Star.all
  end

  def show
    @msg='Star Data.'
    @data=Star.find(params[:id])
  end

  def add
    @msg="Add New Data."
    @star=Star.new
  end

  def create
    if request.post? then
      Star.create(star_params)
    end
    redirect_to '/stars'
  end

  def edit
    @msg="edit data.[id="+ params[:id] +"]"
    @star=Star.find(params[:id])
  end

  def update
    obj=Star.find(params[:id])
    obj.update(star_params)
    redirect_to '/stars'
  end

  def delete
    obj=Star.find(params[:id])
    obj.destroy
    redirect_to '/stars'
  end

  def find
    @msg='explore for search words'
    @stars=Array.new
    if request.post? then
      @stars=Star.where "age >= ?", params[:find]
    end
  end

  private 
  def star_params
    params.require(:star).permit(:name,:age,:mail)
  end
end

