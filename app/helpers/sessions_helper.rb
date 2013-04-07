module SessionsHelper

	def sign_in(user)
		# cookies[:remember_token] = { value: user.remember_token, 
		# 						   expires: 20.years.from_now }
		cookies.permanent[:remember_token] = user.remember_token
		current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user)    # method name is 'current_user=' ... tricky
		@current_user = user
	end

	def current_user
		# @current_user = @current_user  || User.find_by_rember_token(cookies[:remember_token])
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def sign_out
		current_user = nil
		cookies.delete(:remember_token)
	end
end


