class EntriesController < ApplicationController

  def new
    @entry = Entry.new
  end

  def index
    @entries = Entry.all
  end

  def create
    @entry = Entry.new(entry_params)
    if @entry.save
      redirect_to root_path, notice: 'Entry Created Successfully'
    else
      render 'new'
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title,:description,:quantity,:employee_id)
  end



end
