def writeIntoFile
  puts "Enter The Title Name"
  title = "Title Name is : " + gets.chomp.to_s.upcase
  puts "Enter The Notes"
  note = gets.chomp.to_s
  puts "Do You Want To Save/Cancel ? To Save Enter save : To Cancel Enter cancel "
  choice = gets.chomp.to_s.downcase

  if choice == "save"
    file = File.open("file.txt", "w")
    file.write(title + "\n")
    file.write(note)
    file.close
    puts "Your Data is save to the File \"file.txt\""
  else
    puts "Your Data is not save and got lost"
  end
end

def readFile
  begin
    puts "Enter the file name to open"
    file_name = gets.chomp.to_s
    rfile = File.open(file_name, "r")
  rescue Errno::ENOENT
    p "File not found"
  else
    puts rfile.read
  end
end

writeIntoFile
readFile
