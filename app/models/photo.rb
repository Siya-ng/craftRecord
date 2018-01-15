class Photo
  include Mongoid::Document
  embedded_in :photographic, polymorphic: true
  field :url, type: String
  field :comment, type: String
end
