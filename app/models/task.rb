class Task < ApplicationRecord
  validate :future_complited_date
  validates_presence_of :title

  private
  def future_complited_date
  	if !completed.blank? && completed > Date.today
  	  self.errors.add(:completed, "Cannot save blank or future date.")
  	end
  end

end
