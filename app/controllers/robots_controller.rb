class RobotsController < ApplicationController
    def index
        @robots     = Robot.order("rating DESC").all
    end
    def show
        @robot      = Robot.find(params[:id])
        @robotPosts = RobotPost.order("created_at DESC").where(robot_id: params[:id])
        @robotPost  = RobotPost.new
    end
    def root
        @robots     = Robot.order("rating DESC").take(5)
        @weapons    = Weapon.order("rating DESC").take(5)
    end
end
