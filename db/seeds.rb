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