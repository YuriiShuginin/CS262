# ==============================================================================================================

class Student
                                            # initialize - конструктор любого класса
    def initialize (name, age)
        @name = name                        # @name переменные экземпляров класса   
        @age = age                          # 
    end

    def getInfo
        "Name - #{@name}, Age - #{@age}"
    end
end

# ==============================================================================================================

student0 = Student.new("Dmitry", 23) # new instance of class person 
p student0.getInfo                   # get - "Name - Dmitry, Age - 23"


