# Preview all emails at http://localhost:3000/rails/mailers/player_mailer
class PlayerMailerPreview < ActionMailer::Preview

  def athlete_email_preview
    PlayerMailer.athlete_email(Player.first)
  end

end