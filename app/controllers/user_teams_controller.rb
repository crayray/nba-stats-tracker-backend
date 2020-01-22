class UserTeamsController < ApplicationController
    def index 
        @user_teams = User_teams.all 
        render json: @user_teams, include: :user
        #books to a relationship in ur database, can call all the books related to a user
    end

    def create
        @new = User_team.create(user_team_params)
        puts @new
    end

    private

    def user_team_params
        params.permit(:user_id, :team)
    end
end