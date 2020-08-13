require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)
  project = kickstarter.css("li.project.grid_4").first
  title = project.css("h2.bbcard_name strong a").text
  image = project.css("div.project-thumbnail a img").attribute("src").value
  binding.pry
end


# projects: kickstarter.css("li.project.grid_4")
