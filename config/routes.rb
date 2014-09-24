Shandysdesign::Application.routes.draw do
  devise_for :users
  root 'welcome#index'
  resources 'items' do
    resources 'assets', :only => [:destroy,:update]
  end
  resources 'about','contact', :only => :index
end
