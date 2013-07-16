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

post '/category/create' do
  @category = Category.create(params[:category])
  redirect to("/#{@category.title}/posts")
end

post '/category/delete/:id' do
  @category = Category.find(params[:id])
  @category.destroy
  redirect to("/")
end
