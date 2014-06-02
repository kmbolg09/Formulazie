class FormulasController < ApplicationController
before_action :find_formula_sheet
before_action :find_formula, only: [:edit, :show, :update, :destroy]

  #def index
  #  @formulas = Formula.all
  #end

  def new
    @formula = Formula.new
  end

  def create
    @formula = @formulaSheet.formulas.new(formula_params)
    if @formula.save
      redirect_to @formulaSheet, notice: "Formula created."
    else
      render :new
    end
  end

  def edit
  end

  def show
    
  end

  def update
    if @formula.update_attributes(formula_params)
      redirect_to formula_sheet_formula_path(@formula.formula_sheet, @formula), notice: "formula updated"
    else
      render :edit
    end
  end

  def destroy
    @formula.destroy
    redirect_to @formulaSheet, notice: "Formula deleted"
    
  end

  private

  def find_formula_sheet
    @formulaSheet = FormulaSheet.find(params[:formula_sheet_id])
  end

  def formula_params
    params.require(:formula).permit(:name, :description, :formula, :example)
  end

  def find_formula
    @formula = Formula.find(params[:id])
  end

end
