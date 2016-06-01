class Course < ActiveRecord::Base
    has_many :offerings
    def find_in_myyu
           @results = Offerings.find(:all,
                   :joins => :employee,
                    :conditions => [
                   "title LIKE ? OR department LIKE ? OR 
                    course_number = ? OR professor_last_name LIKE ? OR semester = ",
                   "#{params[:query]}%","#{params[:query]}%",params[:query],"#{params[:query]}%","#{params[:query]}%"])
    end
end
