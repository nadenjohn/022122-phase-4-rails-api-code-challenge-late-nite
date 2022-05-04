class AppearanceSerializer < ActiveModel::Serializer
  attributes :id, :episode_id, :guest_id, :rating
  
  belongs_to :guest
  belongs_to :episode
end
