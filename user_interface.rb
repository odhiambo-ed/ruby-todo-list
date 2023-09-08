# user_interface.rb

def display_menu
  puts "Welcome to ToDo List Manager!"
  puts "1. Add Task"
  puts "2. View Tasks"
  puts "3. Mark Task as Complete"
  puts "4. Remove Task"
  puts "5. Exit"
  puts "Please enter your choice (1-5):"
end

def get_user_choice
  gets.chomp.to_i
end
