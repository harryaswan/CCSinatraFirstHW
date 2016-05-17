require("sinatra")
require("sinatra/contrib/all") if development?
require("json")
require("pry-byebug")
require_relative("./models/info")
require_relative("./models/word_formatter")

get '/' do
    @name = Info.name()
    @bio = Info.bio()
    erb(:index)
end

get '/address' do
    return Info.address()
end

get '/camel-case/:words' do
    @words = WordFormatter.new(params[:words]).camel_case()
    erb(:camel_case)
end
