class RespostsController < ApplicationController
  before_action :set_respost, only: [:show, :edit, :update, :destroy]

  # GET /resposts
  # GET /resposts.json
  def index
    @resposts = Respost.all
  end

  # GET /resposts/1
  # GET /resposts/1.json
  def show
  end

  # GET /resposts/new
  def new
    @respost = Respost.new
  end

  # GET /resposts/1/edit
  def edit
  end

  # POST /resposts
  # POST /resposts.json
  def create
    @respost = Respost.new(respost_params)
    @respost.user = current_user

    respond_to do |format|
      if @respost.save
        format.html { redirect_to @respost, notice: 'Respost was successfully created.' }
        format.json { render :show, status: :created, location: @respost }
      else
        format.html { render :new }
        format.json { render json: @respost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resposts/1
  # PATCH/PUT /resposts/1.json
  def update
    respond_to do |format|
      if @respost.update(respost_params)
        format.html { redirect_to @respost, notice: 'Respost was successfully updated.' }
        format.json { render :show, status: :ok, location: @respost }
      else
        format.html { render :edit }
        format.json { render json: @respost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resposts/1
  # DELETE /resposts/1.json
  def destroy
    @respost.destroy
    respond_to do |format|
      format.html { redirect_to resposts_url, notice: 'Respost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_respost
      @respost = Respost.find(params[:id])
      @comentario = @respost.comentarios.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def respost_params
      params.require(:respost).permit(:corpo, :quantidadelikes, :topico_id)
    end
end
