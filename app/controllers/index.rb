get '/' do
  @categories = Category.all
  erb :index
end

get '/:category_id/posts' do
  @category = Category.find(params[:category_id])
  erb :category
end

get '/post/:post_id' do
  @post = Post.find(params[:post_id])
  erb :post
end

get '/post/create/:category_id' do
  @category_id = params[:category_id]
  erb :create_post
end

post '/category/create' do
  @category = Category.create(params[:category])
  redirect to("/#{@category.id}/posts")
end

post '/category/delete/:id' do
  @category = Category.find(params[:id])
  @category.destroy
  redirect to("/")
end


