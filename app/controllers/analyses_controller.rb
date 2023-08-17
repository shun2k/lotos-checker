class AnalysesController < ApplicationController
  before_action :set_analysis, only: %i[ show edit update destroy ]

  # GET /analyses or /analyses.json
  def index
    @analyses = Analysis.all
  end

  # GET /analyses/1 or /analyses/1.json
  def show
  end

  # GET /analyses/new
  def new
    @number_data = params[:number_data]
    @analysis = Analysis.new(data: @number_data)
    
  end

  # GET /analyses/1/edit
  def edit
  end

  # GET /analyses/data_generate
  def generate_data
     # データベースからデータを取得
     data = Loto7.pluck(:first, :second, :third, :forth, :fifth, :sixth, :seventh).flatten.compact

     # 最後のレコードのtimesカラムのデータを取得
     last_data_times = Loto7.pluck(:times).last

     # 最後のレコードのannouncementカラムのデータを取得
     @last_data_announcement = Loto7.pluck(:announcement).last

     # 数字の出現回数をカウント
     count_hash = Hash.new(0)
     data.each do |value|
       number = value.to_i
       count_hash[number] += 1 if (1..37).include?(number)
     end
     
     # 各数字の確率を計算
     total_count = last_data_times.to_i
     probability_hash = {}
     count_hash.each do |number, count|
       probability = (count.to_f / total_count) * 100
       probability_hash[number] = probability
     end
 
     # 4. 結果を出力
     # puts "総数: #{total_count}"
     # (1..37).each do |number|
     #   puts "#{number}: #{count_hash[number]} (#{probability_hash[number]}%)"
     # end
     @count_hash = count_hash
     @probability_hash = probability_hash
     @total_count = total_count

     # number_dataのhashを作り、JSON型に変換 
     @number_data = {
      total_count: total_count,
      count_hash: @count_hash,
      probability_hash: @probability_hash
     }.to_json
     puts @number_data
  end


  # POST /analyses or /analyses.json
  def create
    @analysis = Analysis.new(analysis_params)

    respond_to do |format|
      if @analysis.save
        format.html { redirect_to analysis_url(@analysis), notice: "Analysis was successfully created." }
        format.json { render :show, status: :created, location: @analysis }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /analyses/1 or /analyses/1.json
  def update
    respond_to do |format|
      if @analysis.update(analysis_params)
        format.html { redirect_to analysis_url(@analysis), notice: "Analysis was successfully updated." }
        format.json { render :show, status: :ok, location: @analysis }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @analysis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analyses/1 or /analyses/1.json
  def destroy
    @analysis.destroy

    respond_to do |format|
      format.html { redirect_to analyses_url, notice: "Analysis was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_analysis
      @analysis = Analysis.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def analysis_params
      params.require(:analysis).permit(:data, :times)
    end
end
