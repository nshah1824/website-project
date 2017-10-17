class XesController < ApplicationController
  before_action :set_x, only: [:show, :edit, :update, :destroy]

  # GET /xes
  # GET /xes.json
  def index
    @xes = X.all
  end

  # GET /xes/1
  # GET /xes/1.json
  def show
  end

  # GET /xes/new
  def new
    @x = X.new
  end

  # GET /xes/1/edit
  def edit
  end

  # POST /xes
  # POST /xes.json
  def create
    @x = X.new(x_params)

    respond_to do |format|
      if @x.save
        format.html { redirect_to @x, notice: 'X was successfully created.' }
        format.json { render :show, status: :created, location: @x }
      else
        format.html { render :new }
        format.json { render json: @x.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /xes/1
  # PATCH/PUT /xes/1.json
  def update
    respond_to do |format|
      if @x.update(x_params)
        format.html { redirect_to @x, notice: 'X was successfully updated.' }
        format.json { render :show, status: :ok, location: @x }
      else
        format.html { render :edit }
        format.json { render json: @x.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /xes/1
  # DELETE /xes/1.json
  def destroy
    @x.destroy
    respond_to do |format|
      format.html { redirect_to xes_url, notice: 'X was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_x
      @x = X.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def x_params
      params.require(:x).permit(:name)
    end
end
