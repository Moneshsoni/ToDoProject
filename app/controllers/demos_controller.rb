class DemosController < ApplicationController
  def index
    @demos = Demo.all
    if params[:id].present?
      @demo = Demo.find(params[:id])
    else
      @demo = Demo.new
    end
  end

  def create
    @demo = Demo.new(demo_params)

    if @demo.save
      redirect_to demos_path, notice: "ToDo Created successfully"
    else
      @demos = Demo.all
      render :index
    end
  end

  def update
    @demo = Demo.find(params[:id])
    if @demo.update(demo_params)
      redirect_to demos_path, notice: "ToDo was successfully updated."
    else
      render :index
    end
  end

  def destroy
    @demo = Demo.find(params[:id])
    @demo.destroy
    redirect_to demos_path, status: :see_other
  end

  private

  def demo_params
    params.require(:demo).permit(:task, :description)
  end
end

# @demo = params[:id].present? ? Demo.find_by(id: params[:id]) : Demo.new
