module ApplicationHelper
  def youtube_embed_link  media
    match = media.link.match(/v=(.{11})/)
    if match
      vid_code = match.captures[0]
      "https://www.youtube.com/embed/#{vid_code}"
    else
      "https://www.youtube.com/embed/nonsense"
    end
  end
end
