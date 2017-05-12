class CostsController < ApplicationController
  before_action :set_cost, only: [:show, :edit, :update, :destroy]
  include CostsHelper
  # GET /costs
  # GET /costs.json
  def index
    @costs = Cost.all
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
  end

  # GET /costs/new
  def new
    @cost = Cost.new
    @cost.submitter = cookies[:submitter]
    @cost.level1_id = Level1.where('name = ?', "G&A").first.id
    @cost.level2_id = Level2.where('name = ?', "Expense").first.id
    @level1s = Level1.all.order(:name)
    @level2s = Level2.all.order(:name)
    @level3s = Level3.all.order(:name)
      t = Time.now
      puts t
      @costs = Cost.where("submitter = ? and cast(created_at as date) = cast(now() as date)", cookies[:submitter]).order('expense_date desc')
      puts @costs

  end

  # GET /costs/1/edit
  def edit
    @level1s = Level1.all.order(:name)
    @level2s = Level2.all.order(:name)
    @level3s = Level3.all.order(:name)
  end

  # POST /costs
  # POST /costs.json
  def create
    @cost = Cost.new(cost_params)
    puts @cost.errors[:name]
    respond_to do |format|
      if @cost.save

        format.html { redirect_to new_cost_url, notice: 'Expense was successfully added.' }
        format.json { render :show, status: :created, location: @cost }
      else
        notice = 'Error: '
        @cost.errors.full_messages.each do |message| 
          notice = notice + message + " "
        end
        format.html { redirect_to :back, notice: notice }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /costs/1
  # PATCH/PUT /costs/1.json
  def update
    respond_to do |format|
      if @cost.update(cost_params)
        format.html { redirect_to @cost, notice: 'Cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @cost }
      else
        format.html { render :edit }
        format.json { render json: @cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /costs/1
  # DELETE /costs/1.json
  def destroy
    @cost.destroy
    respond_to do |format|
      format.html { direct_to new_cost_url, notice: 'Cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cost
      @cost = Cost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:cost).permit(:submitter, :expense_date, :level1_id, :level2_id, :level3_id, :amount, :comments, :image, :number_of_people, :people_names, :onsite)
    end
end
