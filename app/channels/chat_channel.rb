class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def send_msg(data)
  	ActionCable.server.broadcast "room", message:data['message']
  end
end
