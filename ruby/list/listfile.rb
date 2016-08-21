class TodoList
	def initialize(list)
		@newlist = list
	end

	def get_items
		@newlist
	end

	def add_item(item)
		@newlist.push(item)
	end

	def delete_item(item)
		@newlist.delete(item)
	end

	def get_item(index)
		@newlist[index]
	end

end