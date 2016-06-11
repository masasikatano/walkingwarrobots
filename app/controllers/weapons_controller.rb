class WeaponsController < ApplicationController
    def index
        @weapons     = Weapon.order("rating DESC").all
    end
    def show
        @weapon      = Weapon.find(params[:id])
        @weaponPosts = WeaponPost.order("rating DESC").where(weapon_id: params[:id])
        @weaponPost  = WeaponPost.new
    end
end
