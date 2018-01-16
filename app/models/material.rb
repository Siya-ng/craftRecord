class Material
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
  field :type, type: String
  field :qty, type: String
  embeds_many :photos, as: :photographic
  has_and_belongs_to_many :plan
  has_and_belongs_to_many :project
end
