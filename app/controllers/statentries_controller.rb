class StatentriesController < ApplicationController

  def new
    @statentry = Statentry.new
  end

  def create
    @statentry = Statentry.new(statentry_params)
    if @statentry.save
      redirect_to @statentry
    else
      #errors
      render :new
    end
  end

  def edit
    @statentry = find_statentry
  end

  def update
    @statentry = find_statentry
    if @statentry.update(statentry_params)
      redirect_to @statentry
    else
      #errors
      render :edit
    end
  end

  def show
    @statentry = find_statentry
  end

  def index
    @statentries = Statentry.all
  end

  def delete
    @statentry = find_statentry
    @statentry.destroy
    redirect_to statentries_path
  end

  private

  def statentry_params
  end

  def find_statentry
  end

end
