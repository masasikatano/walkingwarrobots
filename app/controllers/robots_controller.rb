class RobotsController < ApplicationController
    def root
        @robots     = Robot.take(3)
        @weapons    = Weapon.take(3)
    end
    def index
        @robots     = Robot.all
    end
    def show
        @robot      = Robot.find(params[:id])
        @robotPosts = RobotPost.where(robot_id: params[:id])
        @robotPost  = RobotPost.new
    end
end
