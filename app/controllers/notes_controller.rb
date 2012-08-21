class NotesController < ApplicationController
  def index
  	@notes = Note.all
  	@note = Note.new
  end

  def new
  	@note = Note.new
  end

  def create
  	# render :text => params.inspect

  	@note = Note.create(params[:note])
  	if @note.save
  		redirect_to notes_path, :error => 'note was successfully created'
  	else
  		flash.now[:notice] = 'note was not created'
  		#render new_note_path, :error => 'note was successfully created'
		render new_note_path
  	end
  end

end
