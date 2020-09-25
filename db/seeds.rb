3.times { Todo.create!(title: 'Sample Task') }
2.times { Todo.create!(title: 'Sample Task', finished: true) }