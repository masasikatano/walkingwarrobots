class WeaponPostsController < ApplicationController
    def create
        # 投稿内容を保存
        @weaponPost           = WeaponPost.new
        @weaponPost.weapon_id = params[:weapon_post][:weapon_id]
        @weaponPost.rating    = params[:weapon_post][:rating]
        @weaponPost.post      = params[:weapon_post][:post]
        @weaponPost.save
    
        # 評価平均を更新
        @weapon        = weapon.find(params[:weapon_post][:weapon_id])
        @weapon.rating = weaponPost.where(weapon_id: params[:weapon_post][:weapon_id]).average(:rating)
        @weapon.save
        
        redirect_to :controller => "weapons", :action => "show", :id => params[:weapon_post][:weapon_id]
    
    end
end
