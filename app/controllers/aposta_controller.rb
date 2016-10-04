class ApostaController < ApplicationController
  before_action :set_apostum, only: [:show, :edit, :update, :destroy]

  # GET /aposta
  # GET /aposta.json
  def index
    @aposta = Apostum.all
  end

  # GET /aposta/1
  # GET /aposta/1.json
  def show
  end

  # GET /aposta/new
  def new
    @apostum = Apostum.new
  end

  # GET /aposta/1/edit
  def edit
  end

  # POST /aposta
  # POST /aposta.json
  def create
    @apostum = Apostum.new(apostum_params)

    respond_to do |format|
      if @apostum.save
        format.html { redirect_to @apostum, notice: 'Apostum was successfully created.' }
        format.json { render :show, status: :created, location: @apostum }
      else
        format.html { render :new }
        format.json { render json: @apostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aposta/1
  # PATCH/PUT /aposta/1.json
  def update
    respond_to do |format|
      if @apostum.update(apostum_params)
        format.html { redirect_to @apostum, notice: 'Apostum was successfully updated.' }
        format.json { render :show, status: :ok, location: @apostum }
      else
        format.html { render :edit }
        format.json { render json: @apostum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aposta/1
  # DELETE /aposta/1.json
  def destroy
    @apostum.destroy
    respond_to do |format|
      format.html { redirect_to aposta_url, notice: 'Apostum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apostum
      @apostum = Apostum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def apostum_params
      params.require(:apostum).permit(:t.integer, :idSala, :t.integer, :t.string)
    end
end
