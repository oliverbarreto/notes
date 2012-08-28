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

  def show
    @note = Note.find(params[:id])
  end


  def edit
    @note = Note.find(params[:id])
  end

  def update
    # render :text => params.inspect

    @note = Note.find(params[:id])
    if @note.update_attributes(params[:note])
      # Handle Valid update
      flash[:success] = "Note Updated"
      #render notes_path
      redirect_to notes_path, :notice => 'Post was successfully updated.'
    else
      render 'edit', :error => 'note was not successfully updated'
    end
  end

  def destroy
    @note = Note.find(params[:id])
    @note.destroy
    redirect_to notes_path
    
  end

end
