class PracasController < ApplicationController
  before_action :set_praca, only: [:show, :edit, :update, :destroy]


  # GET /pracas
  # GET /pracas.json

  
  def index
       if params[:search]
          @pracas = Praca.search(params[:search])
        
        elsif params[:searchparque]
          @pracas = Praca.searchparque(params[:searchparque])
        else
          @pracas = Praca.all  
        end

     

  end





  # GET /pracas/1
  # GET /pracas/1.json
  def show
  end

  # GET /pracas/new
  def new
    @praca = Praca.new
  end

  def searchparque
  end
  
  def search
  end

  # GET /pracas/1/edit
  def edit
  end

  # POST /pracas
  # POST /pracas.json
  def create
    @praca = Praca.new(praca_params)

    respond_to do |format|
      if @praca.save
        format.html { redirect_to @praca, notice: 'Praca was successfully created.' }
        format.json { render :show, status: :created, location: @praca }
      else
        format.html { render :new }
        format.json { render json: @praca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pracas/1
  # PATCH/PUT /pracas/1.json
  def update
    respond_to do |format|
      if @praca.update(praca_params)
        format.html { redirect_to @praca, notice: 'Praca was successfully updated.' }
        format.json { render :show, status: :ok, location: @praca }
      else
        format.html { render :edit }
        format.json { render json: @praca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pracas/1
  # DELETE /pracas/1.json
  def destroy
    @praca.destroy
    respond_to do |format|
      format.html { redirect_to pracas_url, notice: 'Praca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_praca
      @praca = Praca.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def praca_params
      params.require(:praca).permit(:nome_equip_urbano, :tipo_equip_urbano, :endereco_equip_urbano, :codigo_logradouro, :lei_equip_urbano, :nome_bairro, :codigo_bairro, :nome_oficial_equip_urbano, :area, :perimetro, :latitude, :longitude)
    end
end
