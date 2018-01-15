class Project
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
  field :created_date, type: Date
  field :completed_date, type: Date
  field :stage, type: Integer# ongoing or completed
  field :category, type: String
  field :no_of_steps, type: Integer
  has_many :steps
  field :review, type: String
  field :completed_photos, type: Array
  belongs_to :plan
  has_and_belongs_to_many :material
  embeds_many :completed_photos, as: :photographic
end
