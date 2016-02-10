class WazasController < ApplicationController
  before_action :set_waza, only: [:show, :edit, :update, :destroy]

  # GET /wazas
  def index
    @wazas = Waza.all
  end

  # GET /wazas/1
  def show
  end

  # GET /wazas/new
  def new
    @waza = Waza.new
    @types = Type.all
  end

  # GET /wazas/1/edit
  def edit
    @types = Type.all
  end

  # POST /wazas
  def create
    @waza = Waza.new(waza_params)

    if @waza.save
      redirect_to @waza, notice: 'Waza was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /wazas/1
  def update
    if @waza.update(waza_params)
      redirect_to @waza, notice: 'Waza was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /wazas/1
  def destroy
    @waza.destroy
    redirect_to wazas_url, notice: 'Waza was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waza
      @waza = Waza.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def waza_params
      params.require(:waza).permit(:type_id, :name)
    end
end
