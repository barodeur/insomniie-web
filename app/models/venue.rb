class Venue
  include Mongoid::Document

  field :name
  field :coordinates, type: Array
  field :foursq_id

  has_many :photos

  def lat
    coordinates[0]
  end

  def lng
    coordinates[1]
  end
end
