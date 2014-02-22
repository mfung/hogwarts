class Student < ActiveRecord::Base
  before_create :sorting_hat

  attr_accessible :name
  validates :name, presence: true 
  belongs_to :house

  private
  def sorting_hat
  	self.house_id = House.all.map(&:id).sample
  end
end