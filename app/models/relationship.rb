class Relationship < ActiveRecord::Base
    has_many :follower, class_name: "User"
    has_many :followed, class_name: "User"
    validates :follower_id, presence: true
    validates :followed_id, presence: true
end
