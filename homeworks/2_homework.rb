class DataCatcher
    def initialize (surname, name, patronymic, phone_num, country=nil, birthday=nil, organisation=nil, position=nil)
        @data_array = [surname, name, patronymic, phone_num, country, birthday, organisation, position]

        validated = DataValidator.validation(@data_array)
        if validated
            puts "Контакт добавлен."
        else
            raise Exception, "Введены некорректные данные."
        end
        
        @sql_imitation = Converter.to_sql_string(@data_array)
        
        db = DBFetcher.new
        db.connect
        db.fetch @sql_imitation
    end
end


class DataValidator
    def self.containing_num_check item
        not item =~ /\d/
    end
    
    def self.phone_num_check digits
        digits.to_s[/\p{L}/].nil?
    end

    def self.validation data_array
        status = []
        [0, 1, 2, 6, 7].each do |n|
            status.append(containing_num_check(data_array[n]))
        end

        status.append(phone_num_check(data_array[3]))

        status.append(CountryChecker.check(data_array[4]))
        p status
        not status.include?(false)
    end
end


class CountryChecker
    @countries = ['Russia', 'Germany', 'USA', 'France', 'China', 'Canada', 'Australia', 'Spain', 'England', 'Japan']
    
    def self.check country
        if @countries.include?(country) != true and country != nil
            raise Exception, "Введённой страны нет в базе."
        end
        true
    end
end


class DBFetcher
    def connect
        "Успешное подключение к базе."
    end

    def fetch sql_imitation
        true
    end
end


class Converter
    def self.to_sql_string data
        "INSERT NoteBook(Name, Surname, Patronymic, Phone_number, Country, Birthday, Organisation, Position) "\
        "VALUES ('#{data[0]}', '#{data[1]}', '#{data[2]}', '#{data[3]}', '#{data[4]}', '#{data[5]}', '#{data[6]}', '#{data[7]}');"
    end
end


contact_1 = DataCatcher.new("Shuginin", "Yurii", "Alekseevich", "123456789", "Russia")