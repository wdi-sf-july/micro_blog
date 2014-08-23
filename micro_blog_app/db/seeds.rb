

(1..10).each do
  user_params = Hash.new
  user_params[:email] = Faker::Internet.email
  user_params[:email_confirmation] = user_params[:email]
  user_params[:first_name] = Faker::Name.first_name
  user_params[:last_name] = Faker::Name.last_name
  new_user = User.create(user_params)

  tags = Faker::HipsterIpsum.words(rand(30))
  tags.map! do |word|
    word.gsub(/([a-zA-Z|])\s([a-zA-Z])/) {$1 + $2.upcase}
  end

  (1..10).each do
    new_post = Post.new
    new_post.title = Faker::HipsterIpsum.words(rand(10)).join(" ")
    new_post.body = Faker::HipsterIpsum.paragraph[0..249]
    new_post.save
    new_post.add_tags tags.sample(5)
    new_user.posts.push new_post
  end
end

