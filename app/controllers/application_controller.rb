# encoding: UTF-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_text_domain

  private

  def set_text_domain
    FastGettext.available_locales = [:en]
    FastGettext.text_domain = 'socialp'
    session[:locale] = I18n.locale = FastGettext.set_locale(:en)
  end

end
