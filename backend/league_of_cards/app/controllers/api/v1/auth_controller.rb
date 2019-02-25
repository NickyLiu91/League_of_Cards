class Api::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: %i[create]

  def create
    @player = Player.find_by(name: player_login_params[:name])
    #User#authenticate comes from BCrypt
    if @player && @player.authenticate(player_login_params[:password_digest])
      # encode token comes from ApplicationController
      token = encode_token({ player_id: @player.id })
      render json: { player: PlayerSerializer.new(@player), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def player_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:player).permit(:name, :password_digest)
  end
end
