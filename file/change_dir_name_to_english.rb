#!/usr/bin/ruby
# Purpose: 修改文件夹名字，将“第1章”改为“chapter-1”

require 'fileutils'

# Dir.chdir('/destination_directory')
dirs =  Dir.glob('*').select {|f| File.directory? f}

dirs.each do |dir|
  dir_ary = dir.split('')  
  dir_ary.delete_at 0
  dir_ary.delete_at -1
  dir_str = dir_ary.join('')
  dir_str = "chapter-" + dir_str
  FileUtils.mv(dir, dir_str)
end
