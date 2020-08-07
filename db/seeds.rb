# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CAMPAIGN = [
  {
    title: "Web Programing"
  },
  {
    title: "Music"
  },
  {
    title: "History"
  },
]

CAMPAIGN.each do |data|
  p 'Creating campaign...'
  Campaign.create(data)
end

# CAMPAIGN PROGRAMING
PROGRAMING_SERVICES = [
  #now
  {
    release_date: DateTime.now, 
    title: "Create a site no programming skills required in 2 weeks",
    subscription_cost: 80,
    status: 0,
    total_subscriptions: 25,
    total_views: 120,
    total_vacancies: 50
  },
  {
    release_date: DateTime.now, 
    title: "How to program without dying in the attempt",
    subscription_cost: 50,
    status: 1,
    total_subscriptions: 12,
    total_views: 70,
    total_vacancies: 60
  },
  {
    release_date: DateTime.now, 
    title: "HTML5 from scratch",
    subscription_cost: 30,
    status: 2,
    total_subscriptions: 10,
    total_views: 400,
    total_vacancies: 50
  },
  #tomorrow
  { 
    release_date: DateTime.now + 1, 
    title: "Introduction to object-oriented programming",
    subscription_cost: 100,
    status: 1,
    total_subscriptions: 75,
    total_views: 200,
    total_vacancies: 100
  },
  {
    release_date: DateTime.now + 1, 
    title: "Artificial intelligence",
    subscription_cost: 200,
    status: 0,
    total_subscriptions: 120,
    total_views: 300,
    total_vacancies: 150
  },
  #yesterday
  {
    release_date: DateTime.now - 1, 
    title: "Introduction to sass",
    subscription_cost: 70,
    status: 1,
    total_subscriptions: 50,
    total_views: 150,
    total_vacancies: 80
  }
]

PROGRAMING_SERVICES.each do |data|
  p 'Creating services for first campaing'
  Campaign.first.services.create(data)
end

#CAMPAIGN MUSIC
MUSIC_SERVICES = [
  #now
  {
    release_date: DateTime.now, 
    title: "Harmony and composition concepts",
    subscription_cost: 100,
    status: 0,
    total_subscriptions: 40,
    total_views: 200,
    total_vacancies: 50
  },
  {
    release_date: DateTime.now, 
    title: "Jazz Fundamentals",
    subscription_cost: 70,
    status: 1,
    total_subscriptions: 17,
    total_views: 70,
    total_vacancies: 23
  },
  #tomorrow
  {
    release_date: DateTime.now + 1, 
    title: "Intervals and chord progressions",
    subscription_cost: 40,
    status: 1,
    total_subscriptions: 20,
    total_views: 30,
    total_vacancies: 25
  },
  { 
    release_date: DateTime.now + 1, 
    title: "History of classical music starting from the baroque",
    subscription_cost: 150,
    status: 0,
    total_subscriptions: 7,
    total_views: 30,
    total_vacancies: 30
  },
  {
    release_date: DateTime.now + 1, 
    title: "Contemporary harmony and Orchestration",
    subscription_cost: 500,
    status: 1,
    total_subscriptions: 125,
    total_views: 500,
    total_vacancies: 150
  },
  #yesterday
  {
    release_date: DateTime.now - 1, 
    title: "Secrets of virtuosity",
    subscription_cost: 20,
    status: 2,
    total_subscriptions: 10,
    total_views: 70,
    total_vacancies: 50
  }
]

MUSIC_SERVICES.each do |data|
  p 'Creating services for second campaing'
  Campaign.second.services.create(data)
end

#CAMPAIGN HISTORY
HISTORY_SERVICES = [
  #now
  {
    release_date: DateTime.now, 
    title: "History of Peru from a geopolitical point of view",
    subscription_cost: 70,
    status: 0,
    total_subscriptions: 30,
    total_views: 50,
    total_vacancies: 35
  },
  #tomorrow
  {
    release_date: DateTime.now + 1, 
    title: "The Roman empire exposed",
    subscription_cost: 80,
    status: 1,
    total_subscriptions: 12,
    total_views: 70,
    total_vacancies: 35
  },
  {
    release_date: DateTime.now + 1, 
    title: "The knights of the round table",
    subscription_cost: 20,
    status: 0,
    total_subscriptions: 10,
    total_views: 20,
    total_vacancies: 30
  },
  #yesterday
  { 
    release_date: DateTime.now - 1, 
    title: "The price of history",
    subscription_cost: 150,
    status: 0,
    total_subscriptions: 170,
    total_views: 200,
    total_vacancies: 300
  },
  {
    release_date: DateTime.now - 1, 
    title: "The second industrial revolution",
    subscription_cost: 80,
    status: 1,
    total_subscriptions: 90,
    total_views: 100,
    total_vacancies: 150
  },
  {
    release_date: DateTime.now - 1, 
    title: "The most disturbing secrets of the second world war",
    subscription_cost: 500,
    status: 1,
    total_subscriptions: 320,
    total_views: 70,
    total_vacancies: 400
  }
]

HISTORY_SERVICES.each do |data|
  p 'Creating services for third campaing'
  Campaign.last.services.create(data)
end