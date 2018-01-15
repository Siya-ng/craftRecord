class Step
  include Mongoid::Document
  field :title, type: Integar
  field :status, type: Mongoid::Boolean
  belongs_to :project
  embeds_many :photos, as: :photographic
end
