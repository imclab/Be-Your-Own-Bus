class RidePublisher < Facebooker::Rails::Publisher
  def publish_stream(user_with_session_to_use, user_to_update, params)
    send_as :publish_stream
    from  user_with_session_to_use
    target user_to_update
    attachment params[:attachment]
    message params[:message]
    action_links params[:action_links]
  end

  def ride_notification(recievers, message)
    send_as :notification
    recipients recievers   
    fbml message
  end
end
