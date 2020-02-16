class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new() { |hash, k| hash[k] = [] } 
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def student_capacity
    @student_capacity
  end

  def teachers
    @teachers
  end
  
  def hire(str)
    @teachers << str
  end

  def students
    @students
  end
  
  def enrolled?(str)
    @students.include?(str)
  end
 
  def enroll(str)
    if @students.length < @student_capacity
    @students << str
        true
    else
        false
    end
  end
  
  def student_to_teacher_ratio
    (@students.length / @teachers.length)
  end

  def grades
    @grades
  end
  
  def add_grade(str, i)
    if @students.include?(str)
        @grades[str] << i
        true
    else false
    end
  end

end
