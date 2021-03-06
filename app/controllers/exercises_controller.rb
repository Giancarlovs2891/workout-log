class ExercisesController < ApplicationController

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercises.create(params[:exercise].permit(:name, :sets, :reps))

    redirect_to @workout
  end

  def destroy
    exercise = Exercise.find(params[:id])
    exercise.destroy
    redirect_to :back
  end
end
