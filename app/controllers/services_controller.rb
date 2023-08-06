class ServicesController < ApplicationController

  def index
    @loto7s = Loto7.all
  end

  def show
    @loto7s = Loto7.new
  end

  def search
    @params = params[:numbers]
    @search_results = Loto7.where(first: params[:numbers][0], second: params[:numbers][1], third: params[:numbers][2], forth: params[:numbers][3], fifth: params[:numbers][4], sixth: params[:numbers][5], seventh: params[:numbers][6])
    
    if @search_results.empty?
      flash.now[:notice] = "該当するデータはありません。"
    end
  end
  
end
