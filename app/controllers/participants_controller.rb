class ParticipantsController < ApplicationController
  def edit
    @participant = Participant.find(params[:id])
  end

  def create
    if (participant = Participant.create(participant_params))
      flash[:success] = "Successfully created '#{participant.name}'!"
      redirect_to new_participant_path
    else
      flash[:error] = "Something went wrong. :(\n#{participant.errors.full_messages}"
    end
  end

  private

  def participant_params
    params[:participant].permit(:title, :name)
  end
end
