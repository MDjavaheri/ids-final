# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Course.delete_all
Offering.delete_all
CoRequisites.delete_all

c1 = Course.create({dept: "COM", course: "1300C", title: "Introduction to Computer Science"})
Offering.create({sem: 0, loc: "Furst 312", section: 241, instructor: "Kelly", cap: 15, crn: 33561, course_id: c1.id})
Offering.create({sem: 1, loc: "Belfer 215", section: 331, instructor: "Kelly", cap: 0, crn: 33562, course_id: c1.id})

c2 = Course.create({dept: "COM", course: "1300L", title: "Introduction to Computer Science Lab"})
Offering.create({sem: 0, loc: "Belfer 1105", section: 261, instructor: "Kelly", cap: 5, crn: 33563, course_id: c2.id})
Offering.create({sem: 1, loc: "Belfer 1103", section: 361, instructor: "Kelly", cap: 2, crn: 33564, course_id: c2.id})

c3 = Course.create({dept: "MAT", course: "1410", title: "Calculus I"})
Offering.create({sem: 0, loc: "Belfer 823", section: 241, instructor: "TBD", cap: 20, crn: 33565, course_id: c3.id})
Offering.create({sem: 2, loc: "Furst 105", section: 261, instructor: "Lebow", cap: 10, crn: 33566, course_id: c3.id})

co1 = CoRequisites.create(course1_id: c1.id, course2_id: c2.id)