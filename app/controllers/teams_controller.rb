class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  # GET /teams
  def index
    @teams = Team.all
  end

  # GET /teams/1
  def show
  end

  # GET /teams/new
  def new
    @team = Team.new
  end

  # GET /teams/1/edit
  def edit
  end

  # POST /teams
  def create
    @team = Team.new(team_params)

      if @team.save
        redirect_to teams_url, notice: 'Team wurde erfolgreich erstellt.'
      else
        render :new
      end
  end

  # PATCH/PUT /teams/1
  def update
      if @team.update(team_params)
        redirect_to teams_url, notice: 'Team wurde erfolgreich geändert.'
      else
        render :edit
      end
  end

  # DELETE /teams/1
  def destroy
    @team.destroy
      redirect_to teams_url, notice: 'Team wurde erfolgreich gelöscht.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team
      @team = Team.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_params
      params.require(:team).permit(:name, :shortcut)
    end
end
