class Offering < ActiveRecord::Base
  belongs_to :course
  enum sem: {
      Fall: 0,
      Spring: 1,
      Summer: 2,
      Pre_Summer: 3
  }
  def search
  end
  def display
  end
  def enroll
    self.spots_available -= 1
  end
end
