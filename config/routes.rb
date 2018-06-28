Rails.application.routes.draw do
  get "/params_game_url" => "params_game#params_game_model"
  get "/game/:number" => "params_game#segment_params"
  post "/secret_game_url" => "params_game#secret_game_model"
end
