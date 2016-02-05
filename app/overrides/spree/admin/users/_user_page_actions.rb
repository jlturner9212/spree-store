Deface::Override.new(
	virtual_path: 'spree/admin/users/_user_page_actions',
	name: 'Add send reset password link',
	insert_before: %{erb[loud]:contains("button_link_to Spree.t(:create_new_order)")},
	text: %{<%= button_link_to Spree.t(:send_reset_link), spree.reset_password_admin_user_path(user_id: @user.id), method: :post, class: 'btn-primary', icon: 'add' %> }
	)