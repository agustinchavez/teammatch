class ApplicationMailer < ActionMailer::Base
  include ApplicationHelper
   default from: "chavez.agustin1991@gmail.com"
   layout 'mailer'

    add_template_helper(ApplicationHelper)


    def current_player
      @current_player ||= Player.find_by(id: session[:player_id]) if session[:player_id]
    end
 end