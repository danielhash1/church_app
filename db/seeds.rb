Post.destroy_all
Ministry.destroy_all
User.destroy_all

users = [
  { email: 'ethioevangelicalbonn@gmail.com', password: 'adminPassWord$@2025', name: 'Admin', admin: true },
  { email: 'jirenlife@gmail.com', password: 'passWordJiregna2025', name: 'Jiregna', admin: true },
  { email: 'daniel@gmail.com', password: 'passwordForDaniel', name: 'Daniel', admin: true }
]

users.each do |user|
  User.create!(user)
end

puts "#{users.length} users loaded successfully."


# posts = [
#   { title: 'Who is Jesus?', description: 'Jesus is the Son of God and our Savior.' },
# ]

# posts.each do |post|
#   Post.create!(post)
# end

# puts "#{posts.length} posts loaded successfully."

# Create some ministries
ministries = [
  {
    name: 'Sermons',
    description: 'Sermons are the regular Sunday program at our church. Here’s the breakdown of the schedule for Sunday services.',
    schedule: <<~SCHEDULE
       Prayer Time: 14:00-14:30
       Worship Time: 14:30-15:15
       Children’s Worship Time: 15:15-15:30
       Bible Study and Sermon Time: 15:30-16:30
       Tea and Coffee Time: 16:30-17:30
    SCHEDULE
  },
  {
    name: 'Bible Study Groups',
    description: 'Bible study groups are a vital part of our spiritual growth. They offer a deeper dive into the Word of God in small, supportive groups.',
    schedule: <<~SCHEDULE
       Agape Bible Study: Monday from 18:30
       Berea Bible Study: Thursday from 18:00
    SCHEDULE
  },
  {
    name: 'Daily Bible Reading',
    description: 'Daily Bible reading allows us to stay in constant connection with God through His Word. Each day brings us closer to a deeper understanding of the Scriptures.',
    schedule: <<~SCHEDULE
       Daily reading schedule can be found in our WhatsApp group.
    SCHEDULE
  },
  {
    name: 'Children and Youth Ministry',
    description: 'The Children and Youth Ministry provides age-appropriate spiritual growth through Bible study, worship, and fellowship activities designed to help the younger generation grow in faith.',
    schedule: <<~SCHEDULE
       Regular Sunday service: 14:00-16:00
       Weekly small group gatherings for deeper study and prayer.
    SCHEDULE
  },
  {
    name: 'Women’s Ministry',
    description: 'Our Women’s Ministry focuses on empowering women to grow spiritually and to serve in the church and the world.',
    schedule: <<~SCHEDULE
       Bible Study (WhatsApp group): Mondays from 21:00-22:00
       Prayer Time (WhatsApp group): Saturdays from 21:00-22:00
       Monthly gatherings for Bible study and fellowship: Last Saturday of the month from 16:00-18:00
    SCHEDULE
  },
]

ministries.each do |ministry|
  Ministry.create!(ministry)
end

puts "#{ministries.length} ministries loaded successfully."
