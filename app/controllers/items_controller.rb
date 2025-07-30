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
      format.html { redirect_to @list, notice: "Item excluído com sucesso!" }
      format.turbo_stream { flash.now[:notice] = "Item excluído com sucesso!" }
    end
  end

  def update
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])

    if @item.update(item_params)
      respond_to do |format|
        format.html { redirect_to @list, notice: "Item atualizado com sucesso!" }
        format.turbo_stream
      end
    else
      respond_to do |format|
        format.html { redirect_to @list, alert: "Erro ao atualizar o item." }
        format.turbo_stream
      end
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to list_path(params[:list_id]) }
      format.turbo_stream { head :no_content }
    end
  end

  def toggle_done
    @list = List.find(params[:list_id])
    @item = @list.items.find(params[:id])
    @item.update!(done: !@item.done)

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: [
          turbo_stream.replace(@item),
          turbo_stream.update("completed-items-count", @list.items.where(done: true).count)
        ]
      end
      format.html { redirect_to list_path(@list) }
    end
  end

  private

  def item_params
    params.expect(item: %i[content done])
  end
end
