class Post < ApplicationRecord
  belongs_to :author
  has_many :post_tags
  has_many :tags, through: :post_tags
end

# A post cant exist fully without an author because it sdependant on the author id
# so to solve this we use the build_ and create_

#post = Post.new(title: "Web Development for Dogs")

#new_author = post.create_author(name: "Lasandra Gulgowski")

#post.save

#post.author
#=> #<Author @name="Lasandra Gulgowski">
#new_author.posts
#=> [#<Post @title="Web Development for Dogs">]
