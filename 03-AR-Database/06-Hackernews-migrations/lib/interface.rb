require_relative 'config/application'
require_relative 'crud'
require 'time'



def ask_and_get(param)
  puts "What is the #{param} of your piece of news?"
  gets.chomp
end


db = SQLite3::Database.new(DB_PATH.to_s)

while true

  puts "Hey you, what do you want to do today? Enter <task_id>"
  puts "1. Create a post"
  puts "2. Read your posts"
  puts "3. Delete all posts"
  puts "4. Update post"
  puts "5. Exit"

	choice =  gets.chomp.to_i

	case choice
  when 1
    name = ask_and_get("name")
    source_url = ask_and_get("source url")
    rating = ask_and_get("rating")
    post = { name: name, source_url: source_url, date: Time.now, rating: rating }
    create_post(db, post)

  when 2
    get_posts(db).each do |post|
      puts "Post number #{post[0]}"
      puts post[1]
      puts post[2]
      post_date = DateTime.parse(post[3]).strftime("%m/%d/%Y")
      puts post_date
      puts "*********************"
    end

    #TODO: prints nicely the results from DB queries (you could use #strftime to format datetime display)
  when 3
    delete_posts(db)

 #TODO: add other CRUD tasks to your interface if you wish!

  when 4
    get_posts(db).each do |post|
      puts "Post number #{post[0]}"
      puts post[1]
      puts "********************* \n"
    end
    id = ask_and_get("id")
    name = ask_and_get("name")
    update_post(db, id, name)

    puts "You've just updated #{name}"
    puts "************************ \n"
    sleep 2

  when 5
    break
	end

end

