class FavoritePetsController < ApplicationController
  before_action :set_favorite_pet, only: [:show, :edit, :update, :destroy]

  # GET /favorite_pets
  # GET /favorite_pets.json
  def index
    @favorite_pets = FavoritePet.all
  end

  # GET /favorite_pets/1
  # GET /favorite_pets/1.json
  def show
  end

  # GET /favorite_pets/new
  def new
    @favorite_pet = FavoritePet.new
  end

  # GET /favorite_pets/1/edit
  def edit
  end

  # POST /favorite_pets
  # POST /favorite_pets.json
  def create
    @favorite_pet = FavoritePet.new(favorite_pet_params)

    respond_to do |format|
      if @favorite_pet.save
        format.html { redirect_to @favorite_pet, notice: 'Favorite pet was successfully created.' }
        format.json { render :show, status: :created, location: @favorite_pet }
      else
        format.html { render :new }
        format.json { render json: @favorite_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_pets/1
  # PATCH/PUT /favorite_pets/1.json
  def update
    respond_to do |format|
      if @favorite_pet.update(favorite_pet_params)
        format.html { redirect_to @favorite_pet, notice: 'Favorite pet was successfully updated.' }
        format.json { render :show, status: :ok, location: @favorite_pet }
      else
        format.html { render :edit }
        format.json { render json: @favorite_pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_pets/1
  # DELETE /favorite_pets/1.json
  def destroy
    @favorite_pet.destroy
    respond_to do |format|
      format.html { redirect_to favorite_pets_url, notice: 'Favorite pet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_pet
      @favorite_pet = FavoritePet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_pet_params
      params.require(:favorite_pet).permit(:pet_id, :user_id)
    end
end
