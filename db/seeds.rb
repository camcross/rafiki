# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Subject.destroy_all

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

Guide.create(:task_id => 1, :body => "http://www.mathsisfun.com/pythagoras.html
	http://www.mathwarehouse.com/geometry/triangles/how-to-use-the-pythagorean-theorem.php 
	http://jwilson.coe.uga.edu/emt669/student.folders/morris.stephanie/emt.669/essay.1/pythagorean.html", :practice =>
	"http://www.mathscore.com/math/practice/Pythagorean%20Theorem/
	http://www.ixl.com/math/grade-8/pythagorean-theorem-word-problems
	http://www.regentsprep.org/regents/math/algebra/at1/pracpyth.htm")

Test.create(:task_id => 1, :body => "Answer the following 8 questions, double-check your answers, then click Submit.
	A score of 100% (8/8) is needed to pass this task")

Question.create(:test_id => 1, :body => "A right triangle has a hypotenuse of length 13, and one leg of length 5.
	What is the length of the third side?", :answer => "C")

Option.create(:question_id => 1, :body => "8")
Option.create(:question_id => 1, :body => "10")
Option.create(:question_id => 1, :body => "12")
Option.create(:question_id => 1, :body => "14")

Question.create(:test_id => 1, :body => "Seth runs diagonally across his perfectly rectangular yard from one corner to the other.
	His yard has a width of 12 yards and a length of 16 yards. How far did Seth run?", :answer => "B")

Option.create(:question_id => 2, :body => "12 yards")
Option.create(:question_id => 2, :body => "20 yards")
Option.create(:question_id => 2, :body => "18 yards")
Option.create(:question_id => 2, :body => "14 yards")

Question.create(:test_id => 1, :body => "A runner jogs south 3 miles north, turns sharply, and runs 4 miles
	east. What is the shortest distance he can run to return to where he started?", :answer => "D")

Option.create(:question_id => 3, :body => "2 miles")
Option.create(:question_id => 3, :body => "3 miles")
Option.create(:question_id => 3, :body => "4 miles")
Option.create(:question_id => 3, :body => "5 miles")

Question.create(:test_id => 1, :body => "If Joey's piece of chewing gum measures 2in. wide by 5in. long,
	how long is the diagonal between the two corners of the stick of gum?", :answer => "A")

Option.create(:question_id => 4, :body => "√29 inches")
Option.create(:question_id => 4, :body => "√32 inches")
Option.create(:question_id => 4, :body => "√34 inches")
Option.create(:question_id => 4, :body => "6 inches")

Question.create(:test_id => 1, :body => "Hannah needs to avoid walking in a huge puddle on her way to school.
	To move around the puddle, she walks 20 feet to the left, then 15 feet forward. Instead 
	of moving 35 feet, how far could Hannah have walked to get to her current spot if the puddle weren't there?", 
	:answer => "A")

Option.create(:question_id => 5, :body => "25 feet")
Option.create(:question_id => 5, :body => "23 feet")
Option.create(:question_id => 5, :body => "27 feet")
Option.create(:question_id => 5, :body => "26 feet")

Question.create(:test_id => 1, :body => "Marie measures her rectangular birhday cake and discovers that it
	is 18 inches wide and 24 inches wide. How long of a cut does she need to make if she wants to cut the 
	cake diagonally?", :answer => "D")

Option.create(:question_id => 6, :body => "36 inches")
Option.create(:question_id => 6, :body => "34 inches")
Option.create(:question_id => 6, :body => "32 inches")
Option.create(:question_id => 6, :body => "30 inches")

Question.create(:test_id => 1, :body => "A swimmer wants to swim 4 lengths of his local pool. The pool is 
	25 meters wide and measures √3125 meters diagonally. How far, in total, will he swim?", :answer => "C")

Option.create(:question_id => 7, :body => "175 meters")
Option.create(:question_id => 7, :body => "183 meters")
Option.create(:question_id => 7, :body => "200 meters")
Option.create(:question_id => 7, :body => "210 meters")

Question.create(:test_id => 1, :body => "A 4x4 in. square of cheese is sliced diagonally. How long is the diagonal
	side of each chunk of cheese?", :answer => "A")

Option.create(:question_id => 8, :body => "√32 inches")
Option.create(:question_id => 8, :body => "√33 inches")
Option.create(:question_id => 8, :body => "√30 inches")
Option.create(:question_id => 8, :body => "√35 inches")










