3.times { Todo.create!(title: 'Sample Task') }
2.times { Todo.create!(title: 'Sample Task', status: 'doing') }