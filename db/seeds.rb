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