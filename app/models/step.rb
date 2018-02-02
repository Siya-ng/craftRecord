class Step
  include Mongoid::Document
  field :title, type: Integer
  field :status, type: Mongoid::Boolean
  belongs_to :project
  embeds_many :photos, as: :photographic, store_as: "step_photos"


  def changeStatus

    @current_steps = Step.find(self.id)
    if @current_steps.status == false
      @current_steps.update(status: true)
    elsif @current_steps.project.stage == 1
      @current_steps.update(status: false)
    else
    end
    return @current_steps.status
  end
end
