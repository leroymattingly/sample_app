module ApplicationHelper

	# returns title based on override
	def full_title(page_title)
		base_title = "RoR Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end
