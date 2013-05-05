module UsersHelper

	def edit_path(user)
		link_to 'Edit', edit_user_path(user)
	end
	
	def delete_path(user)
		link_to 'Destroy', user, :confirm => 'Are you sure?', :method => :delete
	end
	
	def random_joke
		@joke["body"]
	end
	
end
