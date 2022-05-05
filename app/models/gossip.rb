class Gossip < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :comments
    has_many :tags
end