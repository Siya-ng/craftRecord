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
  # field :completed_photos, type: Array
  belongs_to :plan
  has_and_belongs_to_many :material
  embeds_many :photos, as: :photographic, store_as: "completed_photos"

  scope :ongoing,-> (user_id) do
    where(user_id: user_id).where(stage: 1)
  end
  scope :completed,-> (user_id) do
    where(user_id: user_id).where(stage: 2)
  end

end
