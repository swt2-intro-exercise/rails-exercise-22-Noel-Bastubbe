class AuthorsController < ApplicationController
  def new
  end
  def create
    @author = Author.new(params.require(:author).permit(:first_name), params.require(:author).permit(:last_name), params.require(:author).permit(:homepage))

    @author.save
    redirect_to @author
  end
end