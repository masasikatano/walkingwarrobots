class RobotPostsController < ApplicationController
    def create
        @robotPost = RobotPost.new
        @robotPost.robot_id = params[:robot_post][:robot_id]
        @robotPost.rating = params[:robot_post][:rating]
        @robotPost.post = params[:robot_post][:post]
        @robotPost.save
        redirect_to root_path
    end
end
