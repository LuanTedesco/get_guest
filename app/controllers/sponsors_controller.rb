class SponsorsController < ApplicationController
  def new
    @sponsor = Sponsor.new
  end

  def create
    @sponsor = Sponsor.new(sponsor_params)
    @sponsor.type_invite = 'Padrinho'

    respond_to do |format|
      if @sponsor.save
        format.html { redirect_to invite_sponsor_path, notice: 'Sua presença foi confirmada!' }
        format.json { render :show, status: :created, location: @sponsor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sponsor.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_sponsor
    @sponsor = Sponsor.find(params[:id])
  end

  def sponsor_params
    params.require(:sponsor).permit(:name)
  end
end
