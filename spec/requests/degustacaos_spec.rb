 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/degustacaos", type: :request do
  # Degustacao. As you add validations to Degustacao, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Degustacao.create! valid_attributes
      get degustacaos_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      degustacao = Degustacao.create! valid_attributes
      get degustacao_url(degustacao)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_degustacao_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      degustacao = Degustacao.create! valid_attributes
      get edit_degustacao_url(degustacao)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Degustacao" do
        expect {
          post degustacaos_url, params: { degustacao: valid_attributes }
        }.to change(Degustacao, :count).by(1)
      end

      it "redirects to the created degustacao" do
        post degustacaos_url, params: { degustacao: valid_attributes }
        expect(response).to redirect_to(degustacao_url(Degustacao.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Degustacao" do
        expect {
          post degustacaos_url, params: { degustacao: invalid_attributes }
        }.to change(Degustacao, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post degustacaos_url, params: { degustacao: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested degustacao" do
        degustacao = Degustacao.create! valid_attributes
        patch degustacao_url(degustacao), params: { degustacao: new_attributes }
        degustacao.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the degustacao" do
        degustacao = Degustacao.create! valid_attributes
        patch degustacao_url(degustacao), params: { degustacao: new_attributes }
        degustacao.reload
        expect(response).to redirect_to(degustacao_url(degustacao))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        degustacao = Degustacao.create! valid_attributes
        patch degustacao_url(degustacao), params: { degustacao: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested degustacao" do
      degustacao = Degustacao.create! valid_attributes
      expect {
        delete degustacao_url(degustacao)
      }.to change(Degustacao, :count).by(-1)
    end

    it "redirects to the degustacaos list" do
      degustacao = Degustacao.create! valid_attributes
      delete degustacao_url(degustacao)
      expect(response).to redirect_to(degustacaos_url)
    end
  end
end
