require 'pry'

class Student
  
    @@all = []
    attr_accessor :name, :instructor, :boatingtest

    def initialize(first_name)
        @name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_boating_test(test_name, test_status, instructor)
        BoatingTest.new(self, test_name, test_status, instructor)
    end

    # * `Student#all_instructors` should return an array of instructors with whom this specific student took a boating test.
    def all_instructors
        BoatingTest.all.map do |each_test|
            if (each_test.student == self)
                return each_test.instructor
            end
        end
    end

    # * `Student.find_student` will take in a first name and output the student (Object) with that name
    def find_student(first_name)
        found = self.class.all.find do |s|
            s.name == first_name
        end
    end

    # * `Student#grade_percentage` should return the percentage of tests that the student has passed, 
    # a  Float (so iph a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
    
    def self.grade_percentage
    end

end


