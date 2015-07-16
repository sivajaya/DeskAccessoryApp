class MonitersController < ApplicationController
  before_action :set_moniter, only: [:show, :edit, :update, :destroy]

  # GET /moniters
  # GET /moniters.json
  def index
    @moniters = Moniter.all
  end

  # GET /moniters/1
  # GET /moniters/1.json
  def show
  end

  # GET /moniters/new
  def new
    @moniter = Moniter.new
  end

  # GET /moniters/1/edit
  def edit
  end

  # POST /moniters
  # POST /moniters.json
  def create
    @moniter = Moniter.new(moniter_params)

    respond_to do |format|
      if @moniter.save
        format.html { redirect_to @moniter, notice: 'Monitor was successfully Saved.' }
        format.json { render :show, status: :created, location: @moniter }
      else
        format.html { render :new }
        format.json { render json: @moniter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moniters/1
  # PATCH/PUT /moniters/1.json
  def update
    respond_to do |format|
      if @moniter.update(moniter_params)
        format.html { redirect_to @moniter, notice: 'Moniter was successfully updated.' }
        format.json { render :show, status: :ok, location: @moniter }
      else
        format.html { render :edit }
        format.json { render json: @moniter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moniters/1
  # DELETE /moniters/1.json
  def destroy
    @moniter.destroy
    respond_to do |format|
      format.html { redirect_to moniters_url, notice: 'Moniter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moniter
      @moniter = Moniter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moniter_params
      params.require(:moniter).permit(:screen)
    end
end
