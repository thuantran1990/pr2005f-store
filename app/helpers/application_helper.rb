module ApplicationHelper

	def full_title(page_title = '')
		base_title = "Pr2005f-shop"
		if page_title.empty?
			base_title
		else
			page_title + " | " + base_title
		end
	end


	def avatar_url(user)
      if user.image
        user.image
      else
        gravatar_id = Digest::MD5::hexdigest(user.email).downcase
        "https://www.gravatar.com/avatar/#{gravatar_id}.jpg?d=identical&s=150"
      end
  	end
end
