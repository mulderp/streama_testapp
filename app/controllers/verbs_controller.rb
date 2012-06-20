class VerbsController < ApplicationController

  include DisplayCase::ExhibitsHelper

  def index
    verbs = Streama::Definition.registered.map { |verb| verb.name.to_s }.uniq
    Rails.logger.info(verbs)
    @verbs = exhibit(verbs)
  end

  private

end
