class SessionController < ApplicationController
  
  
  def create
    token= request.env['omniauth.auth']].credentials.token
   
      RestClient.get('https://api.github.com/gists/aa5a315d61ae9438b18d',              
                                      (:params => {:access_token => token}))
    
    render text: request.env['omniauth.auth'].to_yaml
  end
end
