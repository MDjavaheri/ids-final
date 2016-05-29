class Offering < ActiveRecord::Base
  belongs_to :course
  enum semester: {
      Fall: 0,
      Spring: 1,
      Summer: 2,
      Pre_Summer: 3
  }
  def list_sessions
    
  end
  def search
      
      Offering.find(params[:search_terms])
      
  end
  def enroll
    if (self.spots_available > 0)
      self.spots_available -= 1
    else
      return false
    end
  end
end
