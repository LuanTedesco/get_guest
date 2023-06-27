class GuestsController < ApplicationController
  before_action :set_guest, only: %i[show edit update destroy]

  def new_sponsor_presence
    @guest = Guest.new
  end

  def new_guest_presence
    @guest = Guest.new
  end

  def new_family_presence
    @guest = Guest.new
  end

  def create_sponsor_presence
    @guest = Guest.new(guest_params)
    @guest.type_invite = 'Padrinho'

    respond_to do |format|
      if @guest.save
        format.html { redirect_to guests_sponsor_invite_path, notice: 'Sua presença foi confirmada!' }
      else
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_guest_presence
    @guest = Guest.new(guest_params)
    @guest.type_invite = 'Convidado'

    respond_to do |format|
      if @guest.save
        format.html { redirect_to guests_guest_invite_path, notice: 'Sua presença foi confirmada!' }
      else
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_family_presence
    @guest = Guest.new(guest_params)
    @guest.type_invite = 'Família'

    respond_to do |format|
      if @guest.save
        format.html { redirect_to guests_family_invite_path, notice: 'Sua presença foi confirmada!' }
      else
        format.json { render json: @guest.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_guest
    @guest = Guest.find(params[:id])
  end

  def guest_params
    params.require(:guest).permit(:name)
  end
end
