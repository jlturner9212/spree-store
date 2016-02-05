Spree::Admin::UsersController.class_eval do 

	def reset_password
		@user = Spree::User.find(params[:id])

		@user.send_reset_password_instructions
		if @user.errors.empty?
			flash[:notice] = Spree.t('sent_instructions', scope: 'admin.user_passwords')
		end
		render :edit
	end
end