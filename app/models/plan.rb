class Plan
  include Mongoid::Document
  belongs_to :user
  field :title, type: String
  field :no_of_steps, type: Integer
  field :notes, type: String
  embeds_many :photos, as: :photographic, store_as: "inspiration_photo"
  embeds_many :photos, as: :photographic, store_as: "plan_photo"
  field :category, type: String
  has_many :projects
  has_and_belongs_to_many :materials

  def create_new_project(user_id)
    @current_plan = Plan.find(self.id)
    @current_user = User.find(user_id)
    @current_project = @current_plan.projects.new({
      "user" => @current_user,
      "title" => @current_plan.title,
      "no_of_steps" => @current_plan.no_of_steps,
      "category" => @current_plan.category,
      "created_date" => DateTime.now.to_date,
      "stage" => 1,
      })
    plan_no_of_steps = @current_plan.no_of_steps
    plan_no_of_steps.times do |n|
      new_step = Step.new({"project" => @current_project,
        "title" => n+1,
        "status" => false})
        new_step.save
      end
    @current_project.save


  end
end
