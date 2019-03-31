Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks, only: [:show,:index,:new,:create,:edit,:update,:destroy] do
    collection do
      # 今後ルートを追加する場合は下記に
    end
  end
  post '/add' => 'slackbot#add'
  post '/complete' => 'slackbot#complete'
  post '/delete' => 'slackbot#delete'
  post '/show' => 'slackbot#show'
  post '/report' => 'slackbot#report'
  post '/help' => 'slackbot#help'
  post '/modify' => 'slackbot#modify'
end
