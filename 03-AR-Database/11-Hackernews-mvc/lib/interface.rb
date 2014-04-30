require_relative 'config/application'
require_relative 'models/post'
require_relative 'models/user'

#TODO: that's the entry point of your app.

puts "Welcome on LeWagonNews!"



puts "you can register by giving your name and email"

puts "What do you want to do ?"


while true
  logged_in = false

  puts "Are you already a member ? y/n"
  answer = gets.chomp

  if answer =='y'

  until logged_in
    puts "what is your email ?"
    #TODO: instantiate a user with his <id>
    user_email = gets.chomp.to_i
    logged_in = true

    begin
      user = User.find_by_email(user_email)
    rescue #RecordNotFound
      puts "Your email is not in our database please "
      logged_in = false
    end


  end

  puts "Hey #{user.name}, what do you want to do today? Enter <task_id>"
  puts "1. See all posts (list_<filter>) filter = by_date or by_ratings"
  puts "2. Vote for a post (vote_<post_id_>)"
  puts "3. See your posts (me)"
  puts "4. Submit a new post (add)"
  puts "5. Delete a post (del)"
  puts "6. exit (exit)"

  choice =  gets.chomp.to_i

  case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now,
            rating: rating }
    #TODO: use ActiveRecord to add a new post for the user logged in!
    user.posts.create(post)

  when 2
    user.posts.each {|post| puts post}
    #TODO: use ActiveRecord to get all posts of the current user

  when 3
    user.post.delete_all
    #TODO: use ActiveRecord to delete all posts of current user
  when 4

  when 5

  when 6
    break
  end

end