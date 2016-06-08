class WeaponPostsController < ApplicationController
    def create
        @weaponPost = WeaponPost.new
        @weaponPost.weapon_id = params[:weapon_post][:weapon_id]
        @weaponPost.rating = params[:weapon_post][:rating]
        @weaponPost.post = params[:weapon_post][:post]
        @weaponPost.save
        redirect_to root_path
    end
end
