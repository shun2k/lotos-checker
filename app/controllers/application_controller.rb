class ApplicationController < ActionController::Base
  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(resource_or_scope)
    loto7s_path  #ここを好きなパスに変更
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(resource_or_scope)
    new_admin_session_path #ここを好きなパスに変更
  end

end
