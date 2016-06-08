class WeaponsController < ApplicationController
    def index
        @weapons = Weapon.all
    end
    def show
        @weapon = Weapon.find(params[:id])
        @weaponPosts = WeaponPost.where(weapon_id: params[:id])
        @weaponPost = WeaponPost.new
    end
end
