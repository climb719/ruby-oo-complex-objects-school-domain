class School
    attr_reader :name, :roster
   
    def initialize(name)  # class School is initialized with a name and a roster which is empty hash
        @name = name 
        @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []  # ||= means if roster[grade] has a value, dont't change it, other wise, set roster[grade] to {}
        roster[grade] << student
    end

    def grade(grade_num)  #grade method takes an argument of a grade and returns all of the students in that grade
        roster[grade_num] #syntax got calling 
    end

    def sort
        sorted_list = {} #set an empty has that can return our new sorted has
        roster.each do |grade, students| #iterate through each grade and student
            sorted_list[grade] = students.sort #grade is the key in the new sorted hash, value is the students sorted alphabetically
        end
        sorted_list #return new sorted roster
    end


end