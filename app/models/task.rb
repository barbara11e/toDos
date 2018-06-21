class Task < ApplicationRecord
  belongs_to :user
  validate :future_complited_date
  validates_presence_of :title
  validates_presence_of :user

  private
  def future_complited_date
  	if !completed.blank? && completed > Date.today
  	  self.errors.add(:completed, "Cannot save blank or future date.")
  	end
  end

end
