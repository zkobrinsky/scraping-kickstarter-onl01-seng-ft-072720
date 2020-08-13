require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri::HTML(html)

  projects = {}

  source_hash = kickstarter.css("li.project.grid_4")
  source_hash.each do |project|
    title = project.css("h2.bbcard_name strong a").text
      projects[title.to_sym] = {}
  end


  # title = project.css("h2.bbcard_name strong a").text
  # image = project.css("div.project-thumbnail a img").attribute("src").value
  # blurb = project.css("p.bbcard_blurb").text.strip
  # project.css(".location-name").text
  # binding.pry
  projects
end


# projects: kickstarter.css("li.project.grid_4")
