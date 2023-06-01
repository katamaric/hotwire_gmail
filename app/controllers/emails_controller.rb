class EmailsController < ApplicationController

  def index
    @emails = Email.all
    @email = Email.new
  end

  def create
    require 'faker'

    @email = Email.create(
      object: Faker::JapaneseMedia::StudioGhibli.movie,
      body: Faker::JapaneseMedia::StudioGhibli.quote
    )

    respond_to do |format|
      format.html do
        redirect_to emails_path
      end
    end

  end

end
