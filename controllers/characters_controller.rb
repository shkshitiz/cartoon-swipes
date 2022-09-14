require './models/character'

get '/' do
    chars = all_chars()

    erb :'characters/index', locals: {
        chars: chars
    }
end

get '/chars/new' do
    erb :'chars/new'
end

post '/chars' do
    name = params['name']
    quote = params['quote']
    image_url = params['image_url']

    create_char(name, quote, image_url)

    redirect '/'
end

get '/chars/:id/edit' do
    id = params['id']

    char = get_char(id)

    erb :'chars/edit', locals: {
        char: char
    }
end

put '/chars/:id' do
    id = params['id']
    name = params['name']
    quote = params['quote']
    image_url = params['image_url']

    update_char(id, name, quote, image_url)
    redirect '/'
end

post '/chars/:id/heart' do
    char_id = params['id']
    user_id = session['user_id']

    run_sql("INSERT INTO hearts(user_id, char_id) VALUES($1, $2)", [user_id, char_id])
    redirect '/'
end