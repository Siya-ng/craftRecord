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
  belongs_to :plan,  optional: true
  has_and_belongs_to_many :material
  embeds_many :photos, as: :photographic, store_as: "completed_photos"

  scope :ongoing,-> (user_id) do
    where(user_id: user_id).where(stage: 1)
  end
  scope :completed,-> (user_id) do
    where(user_id: user_id).where(stage: 2)
  end

  def create_steps(no_of_steps)
    @current_project = Project.find(self.id)
    if @current_project.stage == 1
      no_of_steps.times do |n|
        new_step = Step.new({"project" => @current_project,
          "title" => n+1,
          "status" => false})
        new_step.save
        end
    else
      no_of_steps.times do |n|
        new_step = Step.new({"project" => @current_project,
          "title" => n+1,
          "status" => true })
        new_step.save
        end
    end

  end

  def update_stage
    @current_project = Project.find(self.id)
    @current_project.stage = 2
    @current_project.steps.each do |step|
      step.status = true
    end
    @current_project.save
  end
end
