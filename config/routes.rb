Rails.application.routes.draw do
  root 'application#home' # rootURLをapplicationコントローラーのhelloアクションに結びつけ
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/help' # static_pages/homeというURL(get)をstatic_pages_controllerのhomeアクションに結びつける
  get 'static_pages/contact'
end
