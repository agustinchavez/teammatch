class PlayerMailer < ApplicationMailer
  default from: "chavez.agustin1991@gmail.com"

  def welcome_email(player)
    @player = player
    mail(to: @player.email, subject: "Hey! Thank you for joining!")
  end

  def player_email(player, from_player)
    @player = player
     @from_player = from_player
    mail(to: @player.email, subject: 'Alright, alright, alright. Looks like someone wants to play!')
  end
end