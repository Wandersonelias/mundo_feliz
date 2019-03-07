class TipoProdutosController < ApplicationController
  before_action :set_tipo_produtos, only: [:edit, :update, :show, :destory]
  layout "siteadmin"
  def index
    @tipos = TipoProduto.all
  end
  def new 
    @tipo = TipoProduto.new
  end
  def create
    @tipo = TipoProduto.create(post_tipos_produtos)
    if @tipo.save
      redirect_to tipo_produtos_path
      #respond_to do |format|
      #  format.html
      #end 
    else
      render :new
    end
  end
  def edit
        
  end

  def update
    @tipo = TipoProduto.update(post_tipos_produtos)
    if @tipo.save
      redirect_to tipo_produtos_path
    else
      render :edit
    end
  end


  def destroy
    @tipo = TipoProduto.find(params[:id])
    @tipo.destroy
    redirect_to tipo_produtos_path
  end
  private

  def set_tipo_produtos
    @tipo = TipoProduto.find(params[:id])
  end
  def post_tipos_produtos
    params.require(:tipo_produto).permit(:nome)
  end

end
