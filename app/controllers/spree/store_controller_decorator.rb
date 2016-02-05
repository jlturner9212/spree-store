Spree::StoreController.class_eval do 

	before_action :ensure_user_logged_in, except: [:cart_link, :unauthorized]

	def ensure_user_logged_in
		unless spree_current_user
			session['spree_user_return_to'] = request.path
			flash[:error] = Spree.t(:please_login_to_continue)
			redirect_to spree_login_path
		end
	end
end