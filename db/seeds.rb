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

Lesson.create(:name => "Geometry", :subject_id => 1) 
Lesson.create(:name => "Algebra", :subject_id => 1) 
Lesson.create(:name => "Fractions", :subject_id => 1) 
Lesson.create(:name => "Trigonometry", :subject_id => 1) 
Lesson.create(:name => "Biology", :subject_id => 2)
Lesson.create(:name => "Chemistry", :subject_id => 2)
Lesson.create(:name => "Geology", :subject_id => 2)
Lesson.create(:name => "Scientific Method", :subject_id => 2)

lessons = Lesson.all

Badge.create(:name => "Geometry Badge", :Lesson_id => 1, :icon => "geometry_badge.jpg")
Badge.create(:name => "Algebra Badge", :Lesson_id => 2, :icon => "algebra_badge.jpg")
Badge.create(:name => "Fractions Badge", :Lesson_id => 3, :icon => "fractions_badge.jpg")
Badge.create(:name => "Trigonometry Badge", :Lesson_id => 4, :icon => "trigonometry_badge.jpg")
Badge.create(:name => "Biology Badge", :Lesson_id => 5, :icon => "biology_badge.jpg")
Badge.create(:name => "Chemistry Badge", :Lesson_id => 6, :icon => "chemistry_badge.jpg")
Badge.create(:name => "Geology Badge", :Lesson_id => 7, :icon => "geology_badge.jpg")
Badge.create(:name => "Scientific Notation Badge", :Lesson_id => 8, :icon => "scientific_notation_badge.jpg")