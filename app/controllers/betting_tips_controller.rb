class BettingTipsController < ApplicationController
  before_action :set_betting_tip, only: [:show, :edit, :update, :destroy]

  # GET /betting_tips
  # GET /betting_tips.json
  def index
    @betting_tips = BettingTip.all
  end

  # GET /betting_tips/1
  # GET /betting_tips/1.json
  def show
  end

  # GET /betting_tips/new
  def new
    @betting_tip = BettingTip.new
  end

  # GET /betting_tips/1/edit
  def edit
  end

  # POST /betting_tips
  # POST /betting_tips.json
  def create
    @betting_tip = BettingTip.new(betting_tip_params)

    respond_to do |format|
      if @betting_tip.save
        format.html { redirect_to @betting_tip, notice: 'Betting tip was successfully created.' }
        format.json { render :show, status: :created, location: @betting_tip }
      else
        format.html { render :new }
        format.json { render json: @betting_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /betting_tips/1
  # PATCH/PUT /betting_tips/1.json
  def update
    respond_to do |format|
      if @betting_tip.update(betting_tip_params)
        format.html { redirect_to @betting_tip, notice: 'Betting tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @betting_tip }
      else
        format.html { render :edit }
        format.json { render json: @betting_tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /betting_tips/1
  # DELETE /betting_tips/1.json
  def destroy
    @betting_tip.destroy
    respond_to do |format|
      format.html { redirect_to betting_tips_url, notice: 'Betting tip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_betting_tip
      @betting_tip = BettingTip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def betting_tip_params
      params.require(:betting_tip).permit(:date, :time, :gameid)
    end
end
