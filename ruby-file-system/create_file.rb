## CreateAndWritingFile

my_file = File.open("ruby-file-system/wtc_team.txt", "w+") {|f| f.write("Team members are :- Kohli, Rohit")}

# OR

my_file = File.new("ruby-file-system/team.txt", "w+")
my_file.puts("Team members are :- Deol, Mandhana")
my_file.close
