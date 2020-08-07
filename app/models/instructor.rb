require 'pry'

class Instructor

    attr_accessor :name, :student, :boatingtest
    @@all = []

    def initialize(name_arg)
        @name = name_arg
        @@all << self
    end

    def self.all
        @@all
    end

    def all_tests
        BoatingTest.all.select {|test| test.instructor == self}
    end


    #  # * `Instructor#all_students` should return an array of students who took a boating test with this specific instructor. 
    #  def all_students
    #     instructor_tests = BoatingTest.all.select do |each_test|
    #         each_test.instructor == self
    #     end
    #     instructor_tests.map do |test|
    #         test.student
    #     end
    # end

    def all_students
        self.all_tests.map {|test| test.student}
        # self.all_tests.map(&:student)
    end

    def all_passed_tests
        self.all_tests.select{|test| test.test_status == "passed"}
    end


    # def all_passed_tests
    #     self.all_tests.select{|test| test.test_status == "passed"}
    # end

    # def passed_students
    #     self.all_passed_tests.map{|test| test.student}
    #     # binding.pry
    #     # self.all_tests
    # end

    def passed_students
        BoatingTest.all.map do |each_test|
            if (each_test.test_status == "passed" && each_test.instructor == self)
                return each_test.student
            end
        end
    end


    # * `Instructor#pass_student` should take in a student instance and test name. 
# If there is a `BoatingTest` whose name and student match the values passed in, 
# this method should update the status of that BoatingTest to 'passed'. If there is no matching test, 
# this method should create a test with the student, that boat test name, and the status 'passed'. 
# Either way, it should return the `BoatingTest` instance.
    def pass_student(student, test_name)
    end



    # * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, 
# it should try to find a matching `BoatingTest` and update its status to 'failed'. 
# If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
    def fail_student
    end


end