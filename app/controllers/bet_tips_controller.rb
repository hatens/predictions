class BetTipsController < ApplicationController
  before_action :set_bet_tip, only: [:show, :edit, :update, :destroy]

  # GET /bet_tips
  # GET /bet_tips.json
  def index
    @bet_tips = BetTip.all
  end

  # GET /bet_tips/1
  # GET /bet_tips/1.json
  def show
  end

  # GET /bet_tips/new
  def new
    @bet_tip = BetTip.new
  end

  # GET /bet_tips/1/edit
  def edit
  end

  # POST /bet_tips
  # POST /bet_tips.json
  def create
    @bet_tip = BetTip.new(bet_tip_params)

    respond_to do |format|
      if @bet_tip.save
        format.html { redirect_to @bet_tip, notice: 'Bet tip was successfully created.' }
        format.json { render :show, status: :created, location: @bet_tip }
      else
        format.html { render :new }
        format.json { render json: @bet_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bet_tips/1
  # PATCH/PUT /bet_tips/1.json
  def update
    respond_to do |format|
      if @bet_tip.update(bet_tip_params)
        format.html { redirect_to @bet_tip, notice: 'Bet tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @bet_tip }
      else
        format.html { render :edit }
        format.json { render json: @bet_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bet_tips/1
  # DELETE /bet_tips/1.json
  def destroy
    @bet_tip.destroy
    respond_to do |format|
      format.html { redirect_to bet_tips_url, notice: 'Bet tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bet_tip
      @bet_tip = BetTip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bet_tip_params
      params.require(:bet_tip).permit(:date, :time, :gameid, :visitteam, :hometeam, :odds, :selection)
    end
end
