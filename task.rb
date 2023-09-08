class ClassName
    attr_accessor :title, :description, :completed

    def initialize(title, description, completed)
        @title = title
        @description = description
        @completed = false
    end
end