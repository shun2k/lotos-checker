class Loto7sController < ApplicationController
  before_action :set_loto7, only: %i[ show edit update destroy ]

  # GET /loto7s or /loto7s.json
  def index
    @loto7s = Loto7.all
  end

  # GET /loto7s/1 or /loto7s/1.json
  def show
  end

  # GET /loto7s/new
  def new
    @loto7 = Loto7.new
  end

  # GET /loto7s/1/edit
  def edit
  end

  # POST /loto7s or /loto7s.json
  def create
    @loto7 = Loto7.new(loto7_params)

    respond_to do |format|
      if @loto7.save
        format.html { redirect_to loto7_url(@loto7), notice: "Loto7 was successfully created." }
        format.json { render :show, status: :created, location: @loto7 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loto7.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loto7s/1 or /loto7s/1.json
  def update
    respond_to do |format|
      if @loto7.update(loto7_params)
        format.html { redirect_to loto7_url(@loto7), notice: "Loto7 was successfully updated." }
        format.json { render :show, status: :ok, location: @loto7 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loto7.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loto7s/1 or /loto7s/1.json
  def destroy
    @loto7.destroy

    respond_to do |format|
      format.html { redirect_to loto7s_url, notice: "Loto7 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loto7
      @loto7 = Loto7.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def loto7_params
      params.require(:loto7).permit(:times, :first, :second, :third, :forth, :fifth, :sixth, :seventh, :bonusfirst, :bonussecond, :announcement, :firstcounts, :secondcounts, :thirdcounts, :forthcounts, :fifthcounts, :sixthcounts)
    end
end
