class VerbsController < ApplicationController

  include DisplayCase::ExhibitsHelper

  def index
    Rails.logger.info(Streama::Definition.registered)
    @verbs = exhibit(Streama::Definition.registered)
  end

end
