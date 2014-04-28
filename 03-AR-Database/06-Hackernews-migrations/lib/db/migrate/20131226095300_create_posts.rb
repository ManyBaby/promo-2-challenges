class CreatePosts < ActiveRecord::Migration
  def up
    #TODO: your code here to create the Posts table
    create_table :posts do |post|
      post.string     :name
      post.string     :source_url
      post.datetime   :date
    end
  end
end