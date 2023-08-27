class ServicesController < ApplicationController

  def index
    @loto7s = Loto7.all
  end

  def show
    # 選択した数字が全て一致する検索
    @params = params[:numbers]

    @search_results = Loto7.where(first: params[:numbers][0], second: params[:numbers][1], third: params[:numbers][2], forth: params[:numbers][3], fifth: params[:numbers][4], sixth: params[:numbers][5], seventh: params[:numbers][6])
    
    if @search_results.empty?
      # 7つの数字の内、6つと一致の検索
      # services層のsearch_serviceからsql文を取得
      search_service = SearchService.new
      @six_hit_results = search_service.make_sql_six_hit(@params)

      # if @six_hit_results.empty? && 
      #   flash.now[:notice] = "該当するデータはありません"
      # end
    end

    # puts "下 data 表示"
    # puts @six_hit_results
    # puts "上　data 表示"
  end

  def search
    @loto7s = Loto7.new
  end

  def analysis_results
    @analysis = Analysis.last
    @data_hash = JSON.parse(@analysis.data)
  end
  
end
