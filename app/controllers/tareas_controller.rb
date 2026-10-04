class TareasController < ApplicationController
  before_action :set_tarea, only: [:show, :edit, :update, :destroy]

  def index
    @tareas = Tarea.all
  end

  def new
    @tarea = Tarea.new
  end

  def create
    @tarea = Tarea.new(tarea_params)
    if @tarea.save
      RegistroActividad.registrar("crear", "Tarea", @tarea.id, tarea_params, request.remote_ip)
      redirect_to tareas_path, notice: "Tarea creada exitosamente."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @tarea.update(tarea_params)
      RegistroActividad.registrar("editar", "Tarea", @tarea.id, tarea_params, request.remote_ip)
      redirect_to tareas_path, notice: "Tarea actualizada."
    else
      render :edit
    end
  end

  def destroy
    RegistroActividad.registrar("eliminar", "Tarea", @tarea.id, { titulo: @tarea.titulo }, request.remote_ip)
    @tarea.destroy
    redirect_to tareas_path, notice: "Tarea eliminada."
  end

  private

  def set_tarea
    @tarea = Tarea.find(params[:id])
  end

  def tarea_params
    params.require(:tarea).permit(:titulo, :completada)
  end
end