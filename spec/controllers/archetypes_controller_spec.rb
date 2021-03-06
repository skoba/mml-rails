require 'spec_helper'

describe ArchetypesController do

  let(:valid_attributes) { { "uid" => "MyString" } }
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all archetypes as @archetypes" do
      archetype = Archetype.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:archetypes)).to eq([archetype])
    end
  end

  describe "GET show" do
    it "assigns the requested archetype as @archetype" do
      archetype = Archetype.create! valid_attributes
      get :show, {:id => archetype.to_param}, valid_session
      expect(assigns(:archetype)).to eq(archetype)
    end
  end

  describe "GET new" do
    it "assigns a new archetype as @archetype" do
      get :new, {}, valid_session
      expect(assigns(:archetype)).to be_a_new(Archetype)
    end
  end

  describe "GET edit" do
    it "assigns the requested archetype as @archetype" do
      archetype = Archetype.create! valid_attributes
      get :edit, {:id => archetype.to_param}, valid_session
      expect(assigns(:archetype)).to eq(archetype)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Archetype" do
        expect {
          post :create, {:archetype => valid_attributes}, valid_session
        }.to change(Archetype, :count).by(1)
      end

      it "assigns a newly created archetype as @archetype" do
        post :create, {:archetype => valid_attributes}, valid_session
        expect(assigns(:archetype)).to be_a(Archetype)
        expect(assigns(:archetype)).to be_persisted
      end

      it "redirects to the created archetype" do
        post :create, {:archetype => valid_attributes}, valid_session
        expect(response).to redirect_to(Archetype.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved archetype as @archetype" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Archetype).to receive(:save).and_return(false)
        post :create, {:archetype => { "uid" => "invalid value" }}, valid_session
        expect(assigns(:archetype)).to be_a_new(Archetype)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Archetype).to receive(:save).and_return(false)
        post :create, {:archetype => { "uid" => "invalid value" }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested archetype" do
        archetype = Archetype.create! valid_attributes
        # Assuming there are no other archetypes in the database, this
        # specifies that the Archetype created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Archetype).to receive(:update).with({ "uid" => "MyString" })
        put :update, {:id => archetype.to_param, :archetype => { "uid" => "MyString" }}, valid_session
      end

      it "assigns the requested archetype as @archetype" do
        archetype = Archetype.create! valid_attributes
        put :update, {:id => archetype.to_param, :archetype => valid_attributes}, valid_session
        expect(assigns(:archetype)).to eq(archetype)
      end

      it "redirects to the archetype" do
        archetype = Archetype.create! valid_attributes
        put :update, {:id => archetype.to_param, :archetype => valid_attributes}, valid_session
        expect(response).to redirect_to(archetype)
      end
    end

    describe "with invalid params" do
      it "assigns the archetype as @archetype" do
        archetype = Archetype.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Archetype).to receive(:save).and_return(false)
        put :update, {:id => archetype.to_param, :archetype => { "uid" => "invalid value" }}, valid_session
        expect(assigns(:archetype)).to eq(archetype)
      end

      it "re-renders the 'edit' template" do
        archetype = Archetype.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Archetype).to receive(:save).and_return(false)
        put :update, {:id => archetype.to_param, :archetype => { "uid" => "invalid value" }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested archetype" do
      archetype = Archetype.create! valid_attributes
      expect {
        delete :destroy, {:id => archetype.to_param}, valid_session
      }.to change(Archetype, :count).by(-1)
    end

    it "redirects to the archetypes list" do
      archetype = Archetype.create! valid_attributes
      delete :destroy, {:id => archetype.to_param}, valid_session
      expect(response).to redirect_to(archetypes_url)
    end
  end

end
