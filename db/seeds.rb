# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create!({:title => "Games",  :url_title => "games",  :description => "Das ist die Beschreibung der Kategorie Games"})
Category.create!({:title => "Reisen", :url_title => "reisen", :description => "Und hier siehst du den Text zur Kategorie Reisen!"})

Question.create!({:category => Category.find(1), :title => "Spielst du gerne Ego-Shooter?",  :url_title => "seo-bla-bla", :description => "desc"})
Question.create!({:category => Category.find(2), :title => "Nur innerhalb von Deutschland?", :url_title => "seo-bla-bla", :description => "desc"})
Question.create!({:category => Category.find(2), :title => "Magst du Fliegen?",              :url_title => "seo-bla-bla", :description => "desc"})
Question.create!({:category => Category.find(2), :title => "Magst du Zugfahren?",            :url_title => "seo-bla-bla", :description => "desc"})

Answer.create!({:question => Question.find(1), :text => "Ja",                            :redirect_ids => [1],   :result => "Crysis",                :result_link => "http://www.crysis.com"})
Answer.create!({:question => Question.find(1), :text => "Nein",                          :redirect_ids => [1],   :result => "FarmVille",             :result_link => "http://www.farmville.com"})
Answer.create!({:question => Question.find(2), :text => "Wäre besser!",                  :redirect_ids => [2,3], :result => "Berlin?",               :result_link => "http://www.berlin.com"})
Answer.create!({:question => Question.find(2), :text => "Ich will die Welt sehen alter", :redirect_ids => [2,3], :result => "Wie wärs mit Amerika!", :result_link => "http://www.amerika.com"})
Answer.create!({:question => Question.find(3), :text => "Ne ich bin wie Mister T.",      :redirect_ids => [4],   :result => "Noch unklar",           :result_link => "http://www.games.com"})
Answer.create!({:question => Question.find(3), :text => "Klar super sache!",             :redirect_ids => [2,3], :result => "Ab nach China",         :result_link => "http://www.games.com"})
