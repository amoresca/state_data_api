Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:code" => "states#show"
  get "/*path" => proc { [200, {}, [ActionView::Base.new.render(file: 'public/index.html')]] }
end
