class HomeController < ApplicationController
  def index
    if user_signed_in?
      @invites = Sponsor.all + Guest.all + Family.all
    else
      redirect_to new_user_session_path
    end
  end

  def sponsor_invites
    if user_signed_in?
      @invites = Sponsor.all
    else
      redirect_to new_user_session_path
    end
  end

  def guest_invites
    if user_signed_in?
      @invites = Guest.all
    else
      redirect_to new_user_session_path
    end
  end

  def family_invites
    if user_signed_in?
      @invites = Family.all
    else
      redirect_to new_user_session_path
    end
  end
end
