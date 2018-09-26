class UnitsController < ApplicationController

  def new
    @unit = Unit.new
    @unit.abilities.new
  end

  def create
    @unit = Unit.new(unit_params)
    if @unit.save
      redirect_to @unit
    else
      #errors
      render :new
    end
  end

  def edit
    @unit = find_unit
  end

  def update
    @unit = find_unit
    if @unit.update(unit_params)
      redirect_to @unit
    else
      #errors
      render :edit
    end
  end

  def show
    @unit = find_unit
  end

  def index
    @units = Unit.all
  end

  def destroy
    @unit = find_unit
    @unit.destroy
    redirect_to units_path
  end

  private

  def unit_params
    params.require(:unit).permit(:name, :scale, :role)
  end

  def find_unit
    Unit.find_by(id: params[:id])
  end

end
