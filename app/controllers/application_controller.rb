require 'application_responder'

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder

  protect_from_forgery prepend: true
end
