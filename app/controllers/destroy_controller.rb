# app/controllers/items_controller.rb
class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to @list, notice: "Item adicionado com sucesso!"
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.destroy!
    respond_to do |format|
      format.html { redirect_to @list, notice: "Item excluído com sucesso!" } # Fallback para HTML
      format.turbo_stream { flash.now[:notice] = "Item excluído com sucesso!" } # Mensagem para Turbo Stream
    end
  end

  private

  def item_params
    params.expect(item: %i[content done])
  end
end
