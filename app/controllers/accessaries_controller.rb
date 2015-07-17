class AccessariesController < ApplicationController
  before_action :set_accessary, only: [:show, :edit, :update, :destroy]

  # GET /accessaries
  # GET /accessaries.json
  def index
    @accessaries = Accessary.all
  end

  # GET /accessaries/1
  # GET /accessaries/1.json
  def show
    @employees=Employee.all
    @moniters =Moniter.all
    @systems=System.all
    @accessary=Accessary.find(params[:id])
   end

  # GET /accessaries/new
  def new
    @accessary = Accessary.new
  end

  # GET /accessaries/1/edit
  def edit
  end

  # POST /accessaries
  # POST /accessaries.json
  def create
    @accessary = Accessary.new(accessary_params)
    @accessary.attributes = {'peripheral_ids' => []}.merge(params[:accessary] || {})

    respond_to do |format|
      if @accessary.save
        format.html { redirect_to @accessary, notice: 'Accessary was successfully created.' }
        format.json { render :show, status: :created, location: @accessary }
      else
        format.html { render :new }
        format.json { render json: @accessary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accessaries/1
  # PATCH/PUT /accessaries/1.json
  def update
    respond_to do |format|
      if @accessary.update(accessary_params)
        format.html { redirect_to @accessary, notice: 'Accessary was successfully updated.' }
        format.json { render :show, status: :ok, location: @accessary }
      else
        format.html { render :edit }
        format.json { render json: @accessary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accessaries/1
  # DELETE /accessaries/1.json
  def destroy
    @accessary.destroy
    respond_to do |format|
      format.html { redirect_to accessaries_url, notice: 'Accessary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accessary
      @accessary = Accessary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accessary_params
      params.require(:accessary).permit(:employee_id, :moniter_id, :system_id, :items, :peripheral_ids =>[])
    end
end
