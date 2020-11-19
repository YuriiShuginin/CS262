class CustomFile < File

    def self.abs_converter given_name # Метод, превращающий путь к файлу в его абсолютный путь
        expand_path(given_name)
    end

    def self.is_directory? given_name # Метод, проверяющий, является ли данный файл каталогом (принимает имя файла)
        directory?(given_name)
    end

    def self.is_there? given_name # Метод, проверяющий существование файла (принимает имя файла)
        exist?(given_name)
    end

    def self.mod_time given_name # Метод, возвращающий время модификации файла (принимает имя файла)
        mtime(given_name)
    end

end


class CustomHash < Hash

    def self.delete_in_case given_hash  # Метод, принимающий блок и удаляющий пару, если условие внутри блока вычисляется в true
        given_hash.delete_if {|key, value| value >= 2 }
    end

    def self.is_emty given_hash # Метод, проверяющий, пуст ли хэш
        given_hash.empty?
    end

end


class CustomSymbol < Symbol

    def self.all_symb # Метод, возвращающий массив всех определённых символов в памяти на данный момент
        all_symbols
    end

    def self.is_between? given_symbol, min, max # Метод, проверяющий, находится ли зданное имя символа между двумя другими заданными именами символов
        given_symbol.between?(min, max)
    end

end


class CustomTime < Time

    def self.curtime # Метод, возвращающий текущее время
        now
    end

    def self.is_Friday_today? # Метод, проверяющий, пятница ли сегодня
        now.friday?
    end

    def self.TimeZone_name given_time=now  # Метод, возвращающий строку с названием часового пояса
        given_time.zone
    end

end