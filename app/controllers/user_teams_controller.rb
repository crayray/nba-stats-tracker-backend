class UserTeamsController < ApplicationController
    skip_before_action :authorized
    def index 
        user_teams = UserTeam.all 
        render json: user_teams
        #books to a relationship in ur database, can call all the books related to a user
    end

    def create
        @new = UserTeam.create(user_team_params)
        render json: {user_teams: UserTeamSerializer.new(@new)}, status: :created
    end

    private

    def user_team_params
        params.require(:user_team).permit(:user_id, :team)
    end
end