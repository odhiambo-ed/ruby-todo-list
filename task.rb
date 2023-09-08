class Task
    attr_accessor :title, :description, :completed

    def initialize(title, description, completed = false)
        @title = title
        @description = description
        @completed = completed
    end
end