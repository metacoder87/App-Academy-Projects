class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new() { |hash, k| hash[k] = [] } 
  end
  
  def hire(str)
    @teachers << str
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

  def students
    @students
  end

  def grades
    @grades
  end

end
