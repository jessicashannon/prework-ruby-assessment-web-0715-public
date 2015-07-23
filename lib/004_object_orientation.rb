
class School

    @@count = 0
    @@instances = []

    def initialize(name, location, ranking, students=[], instructors=[])
        @name = name
        @location = location
        @ranking = ranking
        @@count += 1
        @@instances << self
        @students = students
        @instructors = instructors
    end

    def name
        @name
    end

    def location
        @location
    end

    def ranking
        @ranking
    end

    def students
        @students
    end

    def instructors
        @instructors
    end

    def add_student(name, grade, semester)
        @students << {:name => name, :grade => grade, :semester => semester}
    end
    
    def remove_student(name)
        @students.map!{|student| student.delete if student.include?(name)}
    end 

    def self.all
        @@instances
    end

    def self.count
        @@count
    end

    def self.reset_all
      @@instances = []
      @@count = 0
    end
end