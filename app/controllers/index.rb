
get '/' do
  # let user create new short URL, display a list of shortened URLs
  erb :url
end

post '/urls' do
  short_url = too_short
  long_url = params[:long_url]
  @url = Url.new(long_url: params[:long_url], short_url: short_url)
  @url.save
  redirect '/urls'
end

get '/urls' do
  @urls = Url.all
  erb :urls
end
# e.g., /q6bda
get '/:short_url' do
  # redirect to appropriate "long" URL
end
