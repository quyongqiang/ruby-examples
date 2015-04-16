class Foo  
    def Foo.dummy1  
        puts "dummy1"  
        @name = "dummy1"  
        @@var = "dummy1"  
        puts "@name",@name  
        puts "@@var",@@var  
    end   
  
    def Foo::dummy2  
        puts "dummy2"  
        @name = "dummy2"  
        @@var = "dummy2"  
        puts "@name",@name  
        puts "@@var",@@var  
    end   
  
    def self.dummy3  
        puts "dummy3"  
        @name = "dummy3"  
        @@var = "dummy3"  
        puts @name  
    end   
  
    def putsName  
        puts @name  
        puts @@var  
    end   
end  

Foo.dummy1
Foo.dummy2
