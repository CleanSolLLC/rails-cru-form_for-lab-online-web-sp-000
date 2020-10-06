class Song < ApplicationRecord
  belongs_to :artist, :genre
  has_many :genre
end
