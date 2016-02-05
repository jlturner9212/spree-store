Spree::UserSessionsController.class_eval do 

	skip_before_filter :ensure_user_logged_in
	
end