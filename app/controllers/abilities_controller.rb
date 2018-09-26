class AbilitiesController < ApplicationController

  def new
    @ability = Ability.new
  end

  def create
    byebug
    @ability = Ability.new(ability_params)
    if @ability.save

      redirect_to @ability
    else
      #errors
      render :new
    end
  end

  def edit
    @ability = find_ability
  end

  def update
    @ability = find_ability
    if @ability.update(ability_params)
      redirect_to @ability
    else
      #errors
      render :edit
    end
  end

  def show
    @ability = find_ability
  end

  def index
    @abilities = Ability.all
  end

  def destroy
    @ability = find_ability
    @ability.destroy
    redirect_to abilities_path
  end

  private

  def ability_params
    params.require(:ability).permit(:name, :effect, :unit_ids)
  end

  def find_ability
    Ability.find_by(id: params[:id])
  end

end
