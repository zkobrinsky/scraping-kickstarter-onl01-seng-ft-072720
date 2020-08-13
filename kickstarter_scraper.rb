require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  project = kickstarter.css("li.project.grid_4")
  project.each do |project|
    projects[project] = {}
  end


  # title = project.css("h2.bbcard_name strong a").text
  # image = project.css("div.project-thumbnail a img").attribute("src").value
  # blurb = project.css("p.bbcard_blurb").text.strip
  # project.css(".location-name").text
  # binding.pry
  projects
end


# projects: kickstarter.css("li.project.grid_4")
