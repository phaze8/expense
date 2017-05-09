class PersonsController < ApplicationController
	include PersonsHelper
	def new
	    @person = Person.new
	    if cookies[:random].blank?
	    	cookies[:random] = random_string
	    end
	    @persons = Person.where("temp = ?", cookies[:random])
        puts @persons
        respond_to do |format|
  			format.html { format.js }
		end
	end
# POST /persons
  # POST /persons.json
  def create
    @person = Person.new(person_params)

    respond_to do |format|
      if @person.save

        format.html { redirect_to new_cost_url, notice: 'Person was successfully added.' }
        format.json { render :show, status: :created, location: @person }
      else
        format.html { render :new }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persons/1
  # PATCH/PUT /persons/1.json
  def update
    respond_to do |format|
      if @person.update(cost_params)
        format.html { redirect_to @person, notice: 'Personb was successfully updated.' }
        format.json { render :show, status: :ok, location: @person }
      else
        format.html { render :edit }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persons/1
  # DELETE /persons/1.json
  def destroy
    @person.destroy
    respond_to do |format|
      format.html { direct_to new_person_url, notice: 'Person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person
      @person = Person.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cost_params
      params.require(:person).permit(:name, :company, :cost_id)
    end
end