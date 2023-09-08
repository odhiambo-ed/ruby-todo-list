# todo_app.rb

require_relative 'task_manager'
require_relative 'task'

tasks = load_tasks

loop do
  display_menu
  choice = get_user_choice

  case choice
  when 1
    add_task(tasks)
  when 2
    view_tasks(tasks)
  when 3
    mark_task_as_complete(tasks)
  when 4
    remove_task(tasks)
  when 5
    puts "Goodbye!"
    break # Exit the loop
  else
    puts "Invalid choice. Please enter a valid option (1-5)."
  end
end
