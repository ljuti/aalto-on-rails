class Todo < ActiveRecord::Base
  attr_accessible :completed, :title

  scope :open, where(completed: false)

  # Old style
  validates_presence_of :title
  validates_length_of :title, minimum: 5

  # Rails 3 style
  validates :title, presence: true, length: { minimum: 5 }

  def done?
    completed?
  end

  def complete!
    self.update_attribute(:completed, true)
  end
end
