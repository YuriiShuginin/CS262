#!/usr/local/bin/ruby
class Sample
    def initialize 
      @results = ['parrot', 'tomatos', 'bread','water','cola']
    end
     def visoterEntered
        puts "Hello Visitor!"
     end
  
     def didYouHave? product
       @results.index(product) ? (puts "We Have") : (puts "Sorry. We dont have #{product}")
     end
  end
  
  
  
  visitor = Sample.new
  visitor.visoterEntered
  visitor.didYouHave?('bonAcva')
