get '/' do
  @categories = Category.all
  erb :index
end

get '/:category_name/posts' do
  @category = Category.find_by_title(params[:category_name])
  erb :category
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end
