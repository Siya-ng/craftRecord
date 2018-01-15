class Plan
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
  field :no_of_steps, type: Integar
  field :notes, type: String
  embeds_many :photos, as: :photographic, store_as: "inspiration"
  embeds_many :photos, as: :photographic, store_as: "plan"
  # field :plan_photo, type: Array
  field :category, type: String
  has_many :projects
  has_and_belongs_to_many :materials
end
