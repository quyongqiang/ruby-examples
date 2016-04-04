
def copy(from, to)
  src = File.open(from)
  begin
    dst = File.open(to, "w")
    data = src.read
    dst.write(data)
    dst.close
  ensure
    dst.close
  end
end



if ARGV.size != 2
  raise Exception, "aguments must be 2"
else
  copy(ARGV[0], ARGV[1])
end



