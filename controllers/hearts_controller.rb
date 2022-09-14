require './models/heart'
require './models/user'
require './models/character'

get '/hearts/' do
    user_id = session['user_id']
    hearts = all_hearts(user_id).to_a
    
    chars_id = []
    hearts.each do |heart|
        chars_id.push(heart['char_id'])
    end

    chars = []
    chars_id.each do |char_id|
        chars.push(get_char(char_id))
    end

    erb :'hearts/heart_list', locals: {
        chars: chars
    }
end

delete '/hearts/:id' do
    user_id = session['user_id']
    char_id = params['id']

    delete_heart(char_id, user_id)
    redirect '/hearts/'
end