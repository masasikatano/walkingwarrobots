class RobotPostsController < ApplicationController
    def create
        # 投稿内容を保存
        @robotPost          = RobotPost.new
        @robotPost.robot_id = params[:robot_post][:robot_id]
        @robotPost.rating   = params[:robot_post][:rating]
        @robotPost.post     = params[:robot_post][:post]
        @robotPost.save
        
        # 評価平均を更新
        @robot        = Robot.find(params[:robot_post][:robot_id])
        @robot.rating = RobotPost.where(robot_id: params[:robot_post][:robot_id]).average(:rating)
        @robot.save
        
        redirect_to :controller => "robots", :action => "show", :id => params[:robot_post][:robot_id]
    end
end
