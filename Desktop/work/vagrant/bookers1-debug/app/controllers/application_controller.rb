class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception #Ajaxとformのすべての通信にセキュリティトークンが含まれるようになる
end
