class PlayerMailer < ApplicationMailer
  default from: "from@example.com"

  def athlete_email(player)
    @player = player
    mail(to: @player.email, subject: 'Someone wants to play!')
  end
end