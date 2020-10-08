Rails.application.routes.draw do
    get "/tracks", to: "tracks#index"
end
