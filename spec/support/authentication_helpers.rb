module AuthenticationHelpers

  def stub_current_player player
    allow_any_instance_of(ApplicationController).to receive(:current_player).and_return(player)
  end

end