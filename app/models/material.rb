class Material
  include Mongoid::Document
  belongs_to :user
  field :type, type: String
  field :Qty, type: String
  embeds_many :photos, as: :photographic
  has_and_belongs_to_many :plan
  has_and_belongs_to_many :project
end
