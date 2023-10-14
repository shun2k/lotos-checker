class ApplicationController < ActionController::Base
  private

  # ログイン後のリダイレクト先
  def after_sign_in_path_for(*)
    # ここを好きなパスに変更
    loto7s_path
  end

  # ログアウト後のリダイレクト先
  def after_sign_out_path_for(_resource_or_scope)
    # ここを好きなパスに変更
    new_admin_session_path
  end
end
