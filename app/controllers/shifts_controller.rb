class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    raise
    if @shift.save
      redirect_to shifts_path
    else
      render "shifts/new"
    end

  end

  def shift_params
    params.require(:shift).permit(:date, :worker_id)
  end
end
