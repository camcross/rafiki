# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Subject.create({ name: 'Math' })
Subject.create(:name => "Science")
Subject.create(:name => "Languages")
Subject.create(:name => "Technology")

Course.create(:name => "Geometry", :subject_id => 1) 
Course.create(:name => "Algebra", :subject_id => 1) 
Course.create(:name => "Fractions", :subject_id => 1) 
Course.create(:name => "Trigonometry", :subject_id => 1) 
Course.create(:name => "Biology", :subject_id => 2)
Course.create(:name => "Chemistry", :subject_id => 2)
Course.create(:name => "Geology", :subject_id => 2)
Course.create(:name => "Scientific Method", :subject_id => 2)

courses = Course.all

Badge.create(:name => "Geometry Badge", :course_id => 1, :icon => "geometry_badge.jpg")
Badge.create(:name => "Algebra Badge", :course_id => 2, :icon => "algebra_badge.jpg")
Badge.create(:name => "Fractions Badge", :course_id => 3, :icon => "fractions_badge.jpg")
Badge.create(:name => "Trigonometry Badge", :course_id => 4, :icon => "trigonometry_badge.jpg")
Badge.create(:name => "Biology Badge", :course_id => 5, :icon => "biology_badge.jpg")
Badge.create(:name => "Chemistry Badge", :course_id => 6, :icon => "chemistry_badge.jpg")
Badge.create(:name => "Geology Badge", :course_id => 7, :icon => "geology_badge.jpg")
Badge.create(:name => "Scientific Notation Badge", :course_id => 8, :icon => "scientific_notation_badge.jpg")

Task.create(:name => "Pythagorean Theorem", :points => 10, :course_id => 1, :description => "Learn about one of the
	most fundamental geometric relations as this lesson explores the relations between the three sides of a right triangle.
	By the end of this lesson, you will have mastered the ability to deduce the length of one side of a triangle when the 
	lengths of the other two are known. This concept is crucial to the later study of trigonometry.")

Guide.create(:task_id => 1, :body => "Here's a list of helpful resources to consult as you learn: 
	http://www.mathsisfun.com/pythagoras.html
	http://www.mathwarehouse.com/geometry/triangles/how-to-use-the-pythagorean-theorem.php")