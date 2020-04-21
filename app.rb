# lignes très pratiques qui appellent les gems du Gemfile. On verra plus tard comment s'en servir ;) - ça évite juste les "require" partout
require 'bundler'
Bundler.require

# lignes qui appellent les fichiers lib/user.rb et lib/event.rb
# comme ça, tu peux faire User.new dans ce fichier d'application. Top.
require_relative 'lib/user'
require_relative 'lib/event'


# Maintenant c'est open bar pour tester ton application. Tous les fichiers importants sont chargés
# Tu peux faire User.new, Event.new, binding.pry, User.all, etc.
julie = User.new("julie@gmail.com", 18)
jean = User.new("jean@jean.com", 28)
# user_1 = User.new("claude@claude.com", 75)


# puts "Voici l'age du User trouvé : #{user_1.age}" 


# my_event = Event.new("2019-01-13 09:00", 10, "standup quotidien", [julie, jean])
meeting = WorkEvent.new("2019-01-17 09:00", 70, "réunion de travail", [julie, jean]) # je crée un WorkEvent
# p my_event.title

# my_event.age_analysis

binding.pry