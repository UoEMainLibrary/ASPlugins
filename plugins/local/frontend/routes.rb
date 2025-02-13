ArchivesSpace::Application.routes.draw do
  match 'static/:page' => 'static_pages#page', :via => [:get]
end
