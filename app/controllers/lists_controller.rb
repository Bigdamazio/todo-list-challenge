# app/controllers/lists_controller.rb
class ListsController < ApplicationController
  # Callback para definir a @list antes das ações show, edit, update e destroy.
  before_action :set_list, only: [ :show, :edit, :update, :destroy ]

  # GET /lists
  # Exibe todas as listas.
  def index
    @lists = List.all
  end

  # GET /lists/:id
  # Exibe os detalhes de uma lista específica e um formulário para adicionar novos itens.
  def show
    # @list já foi definido pelo before_action :set_list.
    @item = Item.new # Instância para o formulário de criação de item.
  end

  # GET /lists/new
  # Exibe o formulário para criar uma nova lista.
  def new
    @list = List.new
  end

  # POST /lists
  # Cria uma nova lista com os parâmetros enviados.
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: "Lista criada com sucesso!"
    else
      # Se a validação falhar, renderiza o formulário novamente com os erros.
      render :new, status: :unprocessable_entity
    end
  end

  # GET /lists/:id/edit
  # Exibe o formulário para editar uma lista existente.
  def edit
    # @list já foi definido pelo before_action :set_list.
  end

  # PATCH/PUT /lists/:id
  # Atualiza uma lista existente com os parâmetros enviados.
  def update
    # @list já foi definido pelo before_action :set_list.
    if @list.update(list_params)
      redirect_to @list, notice: "Lista atualizada com sucesso!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /lists/:id
  # Exclui uma lista específica.
  def destroy
    @list.destroy # @list já foi definido pelo before_action :set_list.
    redirect_to lists_path, notice: "Lista excluída com sucesso."
  end

  private

  # Método para encontrar a List pelo ID.
  # Usado pelo before_action.
  def set_list
    @list = List.find(params[:id])
  rescue ActiveRecord::RecordNotFound # Adiciona tratamento de erro caso a lista não seja encontrada.
    redirect_to lists_path, alert: "Lista não encontrada."
  end

  # Strong parameters para o model List.
  # Permite apenas o atributo :title para segurança.
  def list_params
    params.require(:list).permit(:title)
  end
end
