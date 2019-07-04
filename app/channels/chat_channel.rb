class ChatChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "chat_#{params[:room]}"
  end

  def receive(data)
    ActionCable.server.broadcast("chat_#{params[:room]}", data)
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
