require 'rails_helper'

RSpec.describe InjectionsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Injection. As you add validations to Injection, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # InjectionsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all injections as @injections" do
      injection = Injection.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:injections)).to eq([injection])
    end
  end

  describe "GET #show" do
    it "assigns the requested injection as @injection" do
      injection = Injection.create! valid_attributes
      get :show, {:id => injection.to_param}, valid_session
      expect(assigns(:injection)).to eq(injection)
    end
  end

  describe "GET #new" do
    it "assigns a new injection as @injection" do
      get :new, {}, valid_session
      expect(assigns(:injection)).to be_a_new(Injection)
    end
  end

  describe "GET #edit" do
    it "assigns the requested injection as @injection" do
      injection = Injection.create! valid_attributes
      get :edit, {:id => injection.to_param}, valid_session
      expect(assigns(:injection)).to eq(injection)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Injection" do
        expect {
          post :create, {:injection => valid_attributes}, valid_session
        }.to change(Injection, :count).by(1)
      end

      it "assigns a newly created injection as @injection" do
        post :create, {:injection => valid_attributes}, valid_session
        expect(assigns(:injection)).to be_a(Injection)
        expect(assigns(:injection)).to be_persisted
      end

      it "redirects to the created injection" do
        post :create, {:injection => valid_attributes}, valid_session
        expect(response).to redirect_to(Injection.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved injection as @injection" do
        post :create, {:injection => invalid_attributes}, valid_session
        expect(assigns(:injection)).to be_a_new(Injection)
      end

      it "re-renders the 'new' template" do
        post :create, {:injection => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested injection" do
        injection = Injection.create! valid_attributes
        put :update, {:id => injection.to_param, :injection => new_attributes}, valid_session
        injection.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested injection as @injection" do
        injection = Injection.create! valid_attributes
        put :update, {:id => injection.to_param, :injection => valid_attributes}, valid_session
        expect(assigns(:injection)).to eq(injection)
      end

      it "redirects to the injection" do
        injection = Injection.create! valid_attributes
        put :update, {:id => injection.to_param, :injection => valid_attributes}, valid_session
        expect(response).to redirect_to(injection)
      end
    end

    context "with invalid params" do
      it "assigns the injection as @injection" do
        injection = Injection.create! valid_attributes
        put :update, {:id => injection.to_param, :injection => invalid_attributes}, valid_session
        expect(assigns(:injection)).to eq(injection)
      end

      it "re-renders the 'edit' template" do
        injection = Injection.create! valid_attributes
        put :update, {:id => injection.to_param, :injection => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested injection" do
      injection = Injection.create! valid_attributes
      expect {
        delete :destroy, {:id => injection.to_param}, valid_session
      }.to change(Injection, :count).by(-1)
    end

    it "redirects to the injections list" do
      injection = Injection.create! valid_attributes
      delete :destroy, {:id => injection.to_param}, valid_session
      expect(response).to redirect_to(injections_url)
    end
  end

  describe "#specfication" do
    it 'renders prescription specifiction' do
      get :specification
      expect(response).to render_template "specification"
    end
  end
end
