ltotal=0    # line total
wtotal=0    # word total
ctotal=0    # char total


ARGV.each do |file|

  begin
    input = File.open(file)
    l = 0
    w = 0
    c = 0

    input.each_line do |line|
      l += 1
      c += line.size
      line.sub!(/^\s+/, "")
      arr = line.split(/\s+/)
      w += arr.size
    end
    input.close

    printf("%8d %8d %8d %s\n", l, w, c, file)
    ltotal += l
    wtotal += w 
    ctotal += c         
  rescue Exception => ex
    print ex.message, "\n"
    
  end

end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")


