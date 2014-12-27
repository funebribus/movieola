class ProdutorsController < ApplicationController
  before_action :set_produtor, only: [:show, :edit, :update, :destroy]

  # GET /produtors
  # GET /produtors.json
  def index
    @produtors = Produtor.all
  end

  # GET /produtors/1
  # GET /produtors/1.json
  def show
  end

  # GET /produtors/new
  def new
    @produtor = Produtor.new
  end

  # GET /produtors/1/edit
  def edit
  end

  # POST /produtors
  # POST /produtors.json
  def create
    @produtor = Produtor.new(produtor_params)

    respond_to do |format|
      if @produtor.save
        format.html { redirect_to @produtor, notice: 'Produtor was successfully created.' }
        format.json { render :show, status: :created, location: @produtor }
      else
        format.html { render :new }
        format.json { render json: @produtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produtors/1
  # PATCH/PUT /produtors/1.json
  def update
    respond_to do |format|
      if @produtor.update(produtor_params)
        format.html { redirect_to @produtor, notice: 'Produtor was successfully updated.' }
        format.json { render :show, status: :ok, location: @produtor }
      else
        format.html { render :edit }
        format.json { render json: @produtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produtors/1
  # DELETE /produtors/1.json
  def destroy
    @produtor.destroy
    respond_to do |format|
      format.html { redirect_to produtors_url, notice: 'Produtor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produtor
      @produtor = Produtor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produtor_params
      params.require(:produtor).permit(:produtor)
    end
end
