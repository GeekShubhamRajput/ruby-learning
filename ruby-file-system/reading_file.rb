## ReadingFileInRuby

novel = File.open("ruby-file-system/my_novel.txt")

novel.each {|line| puts line}
