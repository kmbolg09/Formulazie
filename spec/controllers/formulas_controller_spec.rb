require "spec_helper"


describe FormulasController do
  

  describe "#index" do
    let(:formula) {create(:formula)}

    it "assigns formulas instance var that include formula" do
      formula
      get :index
      expect(assigns(:formulas)).to include formula  
    end
  end
end