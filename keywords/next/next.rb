a = ["Perl", "Ruby", "Python", "PHP"]

a.each do |name|
      next if  (name == "Ruby" && false )
      p name
end
