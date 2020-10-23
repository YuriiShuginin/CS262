# ==============================================================================================================

class Student
    # initialize - конструктор любого класса
    def initialize (name, group)
        # @name переменные экземпляров класса 
        @name = name            
        @group = group              
    end

    def name # name getter
        @name 
    end

    def name= (new_name) # name setter
        @name = new_name 
    end 
end

# ==============================================================================================================
# attr_accessor — getter и setter
# attr_reader — только getter
# attr_writer — только setter
# ==============================================================================================================

class StudentEqueal
    
    attr_accessor :name # геттеры и сеттеры для name и age

    def initialize (name, group)
        # @name переменные экземпляров класса 
        @name = name            
        @group = group              
    end    
end 

# ==============================================================================================================

student0 = Student.new('Dmitry', 'K3440')
p student0.name                             # get @name "Dmitry" 
student0.name = 'Dmitrii'                   # set @name
p student0.name                             # get @name "Dmitrii"
p student0.instance_variables               # [:@name, :@group] 

# ==============================================================================================================

student1Equeal = StudentEqueal.new          # start new Instanse
p student1Equeal.name                       # get @name - nil
student1Equeal.name = 'Dmitrii'             # set @name 
p student1Equeal.name                       # get @name - 'Dmitrii'
