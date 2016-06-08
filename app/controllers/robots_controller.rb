class RobotsController < ApplicationController
    def root
        @robots     = Robot.all
        @weapons    = Weapon.all
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
