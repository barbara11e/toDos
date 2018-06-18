class PagesController < ApplicationController
	def home
    @tasks = Task.all
    @date = Time.now.strftime("%Y-%d-%m %H:%M:%S %Z")
	end
end
