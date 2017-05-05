class Level2sController < ApplicationController
  before_action :set_level2, only: [:show, :edit, :update, :destroy]

  # GET /level2s
  # GET /level2s.json
  def index
    @level2s = Level2.all
  end

  # GET /level2s/1
  # GET /level2s/1.json
  def show
  end

  # GET /level2s/new
  def new
    @level2 = Level2.new
  end

  # GET /level2s/1/edit
  def edit
  end

  # POST /level2s
  # POST /level2s.json
  def create
    @level2 = Level2.new(level2_params)

    respond_to do |format|
      if @level2.save
        format.html { redirect_to @level2, notice: 'Level2 was successfully created.' }
        format.json { render :show, status: :created, location: @level2 }
      else
        format.html { render :new }
        format.json { render json: @level2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /level2s/1
  # PATCH/PUT /level2s/1.json
  def update
    respond_to do |format|
      if @level2.update(level2_params)
        format.html { redirect_to @level2, notice: 'Level2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @level2 }
      else
        format.html { render :edit }
        format.json { render json: @level2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /level2s/1
  # DELETE /level2s/1.json
  def destroy
    @level2.destroy
    respond_to do |format|
      format.html { redirect_to level2s_url, notice: 'Level2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_level2
      @level2 = Level2.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def level2_params
      params.require(:level2).permit(:name, :level1_id)
    end
end
