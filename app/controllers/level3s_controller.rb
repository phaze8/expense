class Level3sController < ApplicationController
  before_action :set_level3, only: [:show, :edit, :update, :destroy]

  # GET /level3s
  # GET /level3s.json
  def index
    @level3s = Level3.all
  end

  # GET /level3s/1
  # GET /level3s/1.json
  def show
  end

  # GET /level3s/new
  def new
    @level3 = Level3.new
  end

  # GET /level3s/1/edit
  def edit
  end

  # POST /level3s
  # POST /level3s.json
  def create
    @level3 = Level3.new(level3_params)

    respond_to do |format|
      if @level3.save
        format.html { redirect_to @level3, notice: 'Level3 was successfully created.' }
        format.json { render :show, status: :created, location: @level3 }
      else
        format.html { render :new }
        format.json { render json: @level3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level3s/1
  # PATCH/PUT /level3s/1.json
  def update
    respond_to do |format|
      if @level3.update(level3_params)
        format.html { redirect_to @level3, notice: 'Level3 was successfully updated.' }
        format.json { render :show, status: :ok, location: @level3 }
      else
        format.html { render :edit }
        format.json { render json: @level3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level3s/1
  # DELETE /level3s/1.json
  def destroy
    @level3.destroy
    respond_to do |format|
      format.html { redirect_to level3s_url, notice: 'Level3 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level3
      @level3 = Level3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level3_params
      params.require(:level3).permit(:name, :code, :level2_id)
    end
end
