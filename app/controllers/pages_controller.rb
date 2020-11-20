class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    # Recuperer tous les bookings de l'utilisateur logged (locataire)
    @user = current_user
    # Recuperer les bunkers qui appartiennent aux users logged (proprio)
    @ownerbunkers = Bunker.where(user: @user)
    # Recuperer les demandes de bookings d'un autre utilisateur
    @bookings = Booking.where(bunker: @ownerbunkers)
  end
end
