class Song < ApplicationRecord
  validate :name
  validate :artist
  validate :image
  validate :uri
  validate :upvotes
  validate :downvotes
end
