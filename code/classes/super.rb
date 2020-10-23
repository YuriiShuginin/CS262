# ==============================================================================================================

class Person # неявно наследует Object
  def initialize (name)
    @name = name                         
  end

  def name
    @name
  end 
    
end

class Student < Person

    def initialize (name, group)
        super(name)     
        @group = group              
    end

    def getInfo
      "#{@name} #{@group}"
    end

end
  
person = Person.new("Dmitry")                               
student = Student.new("Dmtrii", "23")

p person.name      # "Dmitry"
p student.name     # "Dmtrii"
p student.getInfo  # "Dmtrii 23"
  
# ==============================================================================================================