class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    @sports = Sport.pluck(:name)
  end

  def create
    @team = Team.new(team_params)
    @sports = Sport.pluck(:name)
    new_members = params[:team][:members].split(",")

    if @team.valid? && @team.save
      admin = params[:team][:admin]
      admin_id = Player.find_by(username: admin).id
      @team.update_attributes(admin_id: admin_id)

      if params[:sport_types]
        @team_sports = params[:sport_types]
        @team_sports.each { |sport| @team.sports << Sport.find_by(name: sport.strip) }
      end

    if new_members.any?
      new_members.each { |member| @team.player << Player.find_by(username: member.strip) }
    end

    @team.update_attributes(team_params)

    redirect_to root_path
    else
      flash[:errors] = @team.errors.full_messages
      redirect_to new_team_path
    end
  end

  def show
    @team = Team.find(params[:id])
    @team_admin = Player.find(@team.admin_id)
  end

  def edit
   @team = Team.find(params[:id])
   @sports = Sport.pluck(:name)
  end

  def update
   @team = Team.find(params[:id])

   if @team.save
    new_admin = params[:team][:admin_name]
    @team.admin = Player.find_or_create_by(username: new_admin.strip)

    if params.has_key?("sport_types")
      @sports = params[:sport_types]
      @sports.each do |sport|
        unless @team.sports.map(&:name).include?(sport)
          @team.sports << Sport.find_or_create_by(name: sport.strip)
        end
      end
    else
      @team.sports.delete_all
    end
  end

  new_members = params[:team][:members].split(",")

  if new_members.any?
    new_members.each do |member|
      unless @team.players.map(&:username).include?(member)
        @team.players << Player.find_or_create_by(username: member.strip)
      end
    end
  end

  @team.update_attributes(team_params)
  redirect_to team_path(@team)
end

def destroy
   @teams = Team.find(params[:id])

   if @team && params[:member]
      PlayerTeam.find_by(player_id: params[:member]).destroy
      redirect_to team_path(@team)
   elsif @team
     @team.destroy
     redirect_to root_path
   else
     @errors = @team.errors.full_messages
   end
 end


  def search
    if params["Sport"]
      sport_ids = params["Sport"].map {|e| e[0].to_i}
      sports = Sport.find(sport_ids)
      sports_with_teams = sports.select {|sport| !sport.teams.empty?}
      teams_from_sport = sports_with_teams.map {|sport| sport.teams}.flatten
      team_ids = teams_from_sport.map {|team| team.id}
      @teams = Team.find(team_ids)
      @teams_ids = @teams.map {|team| team.id}
      render :"teams/_teams-sorted", layout: false
    elsif params["Distance"]
      teams_ids = params["teams"].split(" ").map {|e| e.to_i}
      original_teams = Team.find(team_ids)
      player_location = [current_player.latitude, current_player.longitude]
      distance = params["Distance"][0].to_i
      all_teams_near = Team.within(distance, :origin => player_location)
      @teams = original_teams & all_teams_near
      @map_string = "https://maps.googleapis.com/maps/api/staticmap?size=600x300&maptype=roadmap" + @teams.map {|team| team.map_string}.join("") + "&key=AIzaSyDbL6SGxiaR5BjXdzLPJHxQyjIAhoBVz_o"
      render "teams/_teams-sorted", layout: false
    end
  end

  def media
    @team = Team.find(params[:id])
    render partial:'team_media', locals: {team: @team}
  end

  private

  def team_params
    team_params = params.require(:team).permit(:name, :info)
  end
end
