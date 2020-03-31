class ApplicationController < Sinatra::Base

    set(:views, 'app/views')
# get method to display all airlines
    get '/list_airlines' do
      erb(:list_airlines)
    end

# get method to display a single airline by id
    get '/get_airline/:id' do
      @airline = Airline.find_by({id: params[:id]})
      erb(:single_airline)
    end

# delete method to delete an airline by id 
    delete '/get_airline/:id' do
      @airline = Airline.find_by({id: params[:id]})
      @airline.destroy()

      redirect ("/list_airlines")
    end
end


### HTTP Method  + URL  -> Address/Function Name
### Headers -> Postage
### Body -> Contents
