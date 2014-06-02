class FormulaSheetsController < ApplicationController
 before_action :find_formula_sheet, only: [:edit, :update, :destroy, :show]
 before_action :formula_sheet_attributes, only: [:update]
 before_action :authenticate_user!, except: [:index, :show]
  def index 
    @formulaSheets=FormulaSheet.all
  end
 
  def new 
    @formulaSheet = FormulaSheet.new
  end 

  def create 
   @formulaSheet = FormulaSheet.new(formula_sheet_attributes)
    if @formulaSheet.save
      redirect_to @formulaSheet
    else
      render :new 
    end
  end 

  def show
    @formula = Formula.new
    @formulas = @formulaSheet.formulas
  end

  def edit 
  end

  def update 
    if @formulaSheet.update_attributes(formula_sheet_attributes)
      redirect_to @formulaSheet
    else
      render :edit
     end
  end

  def destroy
    if @formulaSheet.destroy
      redirect_to root_path
    end
  end


  private
  
  def find_formula_sheet
     @formulaSheet = FormulaSheet.find(params[:id])
  end   

  def formula_sheet_attributes 
    params.require(:formula_sheet).permit(:title, :citation)
  end


end
