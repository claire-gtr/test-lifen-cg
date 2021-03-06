class ShiftsController < ApplicationController
  def index
    @shifts = Shift.all
    @shifts_sorted = @shifts.sort_by {|h| h[:date]}
  end

  def new
    @shift = Shift.new
  end

  def create
    @shift = Shift.new(shift_params)
    if @shift.save
      redirect_to shifts_path
    else
      render "shifts/new"
    end
  end

  def edit
    @shift = Shift.find(params[:id])
  end

  def update
    @shift = Shift.find(params[:id])
    @shift.update(shift_params)
    redirect_to shifts_path
  end

  def shift_params
    params.require(:shift).permit(:date, :worker_id)
  end
end
