class ApplicationController < ActionController::API
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    include ActionController::Serialization
    include ActionController::HttpAuthentication::Basic::ControllerMethods
    include ActionController::HttpAuthentication::Token::ControllerMethods

    # A method to handle initial authentication
    # def token
    #   authenticate_with_http_basic do |username, password|
    #     user = User.find_by(username: username).try(:authenticate, password)
    #     if user
    #       render json: { token: user.auth_token }
    #     else
    #       render json: { error: 'Incorrect credentials' }, status: 401
    #     end
    #   end
    # end
    
    # def token
    #     uname = user_params[:username]
    #     pwd = user_params[:password]
    #     # print password
    #     user = User.find_by_username(uname).try(:authenticate, pwd)
    #     if user
    #       print "JJJIJIJIJ #{user}"
    #       render json: { token: user.auth_token }
    #     else
    #       render json: { error: 'Incorrect credentials' }, status: 401
    #     end
    # end

    # We want every othetokenr interaction to be authenticated with the token
   before_filter :authenticate_user_from_token, :except => [:token]
    
    def authenticate_user_from_token
      unless authenticate_with_http_token { |token, options| User.find_by(auth_token: token) }
        render json: { error: 'Bad Token'}, status: 401
      end
    end
end


    # before_action :destroy_session
    # 
    # def api_error(status: 500, errors: [])
    #     unless Rails.env.production?
    #         puts errors.full_messages if errors.respond_to? :full_messages
    #     end
    #     head(status: status) && return if errors.empty?
    # 
    #     render json: jsonapi_format(errors).to_json, status: status
    # end
    # 
    # def destroy_session
    #     request.session_options[:skip] = true
    # end
    # 
    # rescue_from ActiveRecord::RecordNotFound, with: :not_found
    # 
    # def not_found
    #     api_error(status: 404, errors: 'Not found')
    # end
    # 
    # def jsonapi_format(errors)
    #     return errors if errors.is_a? String
    #     errors_hash = {}
    #     errors.messages.each do |attribute, error|
    #         array_hash = []
    #         error.each do |e|
    #             array_hash << { attribute: attribute, message: e }
    #         end
    #         errors_hash.merge!(attribute => array_hash)
    #     end
    # 
    #     errors_hash
    # end

