class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def create
    require 'faker'

    @email = Email.create(
      object: Faker::JapaneseMedia::StudioGhibli.movie,
      body: Faker::JapaneseMedia::StudioGhibli.quote
    )

    respond_to do |format|
      format.html do
        redirect_to root_path
      end
    end

  end

  def show
    @email = Email.find(params[:id])
    end
  
  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    redirect_to emails_path
  end
  

end
