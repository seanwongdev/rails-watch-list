class BookmarksController < ApplicationController
  before_action :set_list, only: %i[create]

  def create
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = @list
    @bookmarks = @list.bookmarks
    if @bookmark.save
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  # render 'lists/show', locals: {bookmarks: []}, status: :unprocessable_entity

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def params_bookmark
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
