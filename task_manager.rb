# task_manager.rb

require_relative 'user_interface'
require_relative 'data_storage'
require_relative 'constants'

def add_task(tasks)
  puts "Enter task title:"
  title = gets.chomp
  puts "Enter task description:"
  description = gets.chomp
  task = Task.new(title, description)
  tasks.push(task)
  save_tasks(tasks)
  puts "Task added!"
end

def view_tasks(tasks)
  if tasks.empty?
    puts "No tasks to display."
  else
    tasks.each_with_index do |task, index|
      status = task.completed ? "Completed" : "Incomplete"
      puts "#{index + 1}. Title: #{task.title}, Description: #{task.description}, Status: #{status}"
    end
  end
end

def mark_task_as_complete(tasks)
  view_tasks(tasks)
  puts "Enter the index of the task to mark as complete:"
  index = gets.chomp.to_i - 1
  if index >= 0 && index < tasks.length
    tasks[index].completed = true
    save_tasks(tasks)
    puts "Task marked as complete!"
  else
    puts "Invalid index. Task not found."
  end
end

def remove_task(tasks)
  view_tasks(tasks)
  puts "Enter the index of the task to remove:"
  index = gets.chomp.to_i - 1
  if index >= 0 && index < tasks.length
    removed_task = tasks.delete_at(index)
    save_tasks(tasks)
    puts "Task '#{removed_task.title}' removed!"
  else
    puts "Invalid index. Task not found."
  end
end
