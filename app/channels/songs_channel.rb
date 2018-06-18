class SongsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'songs'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    song = Song.find(data["id"])
    song.update!(name: data["name"], artist: data["artist"], image: data["image"], uri: data["uri"], upvotes: data["upvotes"], downvotes:["downvotes"], trackid:["trackid"], vote:["vote"])
    ActionCable.server.broadcast('songs', data)
  end
end
