# data_storage.rb

require_relative 'task'
require_relative 'constants'

def load_tasks
  tasks = []
  if File.exist?(TASKS_FILE_PATH)
    File.open(TASKS_FILE_PATH, 'r') do |file|
      file.each_line do |line|
        title, description, completed = line.chomp.split(',')
        task = Task.new(title, description)
        task.completed = (completed == 'true')
        tasks.push(task)
      end
    end
  end
  tasks
end

def save_tasks(tasks)
  File.open(TASKS_FILE_PATH, 'w') do |file|
    tasks.each do |task|
      file.puts("#{task.title},#{task.description},#{task.completed}")
    end
  end
end
