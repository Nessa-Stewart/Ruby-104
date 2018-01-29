class Blog
	attr_accessor :title, :all_blog_posts, :total_blog_posts
	
	def initialize
		@created_at = Time.now
		puts "Name Your Blog:"
		@title = gets.chomp
		@@all_blog_posts = []
		@@total_blog_posts = 0
	end
	
	def create_blogpost
		new_blog_post = Blog_Post.new
		puts "here is my new blog post"
		@@all_blog_posts << new_blog_post
		@@total_blog_posts +=1
	end
	
	def collect_blog_posts
		return @@all_blog_posts
	end
	
	def publish(all_blog_posts)
		@@all_blog_posts.each do |blog_post|
			puts blog_post.title
			puts blog_post.created_at
			puts blog_post.content
			puts blog_post.author
		end
	end
end

class Blog_Post < Blog
	attr_accessor :title, :created_at, :content, :author

	def initialize
		@created_at = Time.now
		puts "Name your blog post:"
		@title = gets.chomp
		
		puts "Your blog post content:"
		@content = gets.chomp

		puts "Author name:"
		@author = gets.chomp

		puts "Do you want to create another blog post (Y/N)?"
		create_blogpost if gets.chomp.downcase == "y"
	end
	
	def edit_blog_content
		puts "New blog title:"
		@title = gets.chomp
		
		puts "New blog text:"
		@content = gets.chomp

		puts "New blog author"
		@author = gets.chomp

		
	end
	
end

my_blog = Blog.new
first_blog_post = my_blog.create_blogpost
all_blog_posts = my_blog.collect_blog_posts
puts my_blog.inspect
my_blog.publish(all_blog_posts)
		