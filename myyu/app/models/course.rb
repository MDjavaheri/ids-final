class Course < ActiveRecord::Base
    has_many :offerings
    # def search([:params])
    #     Course.where("title like ?", "%#{:title}%").
    #     and.where("course_number like ?", "%#{:course_number}%").
    #     and.where("department like ?", "%#{:department}%")
    # end
end
