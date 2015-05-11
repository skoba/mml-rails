require 'spec_helper'
describe MmlcaController do

  let(:valid_attributes) { {  } }

  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all mmlca as @mmlca" do
      mmlca = Mmlca.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:mmlca)).to eq([mmlca])
    end
  end

  describe "GET show" do
    it "assigns the requested mmlca as @mmlca" do
      mmlca = Mmlca.create! valid_attributes
      get :show, {:id => mmlca.to_param}, valid_session
      expect(assigns(:mmlca)).to eq(mmlca)
    end
  end

  describe "GET new" do
    it "assigns a new mmlca as @mmlca" do
      get :new, {}, valid_session
      expect(assigns(:mmlca)).to be_a_new(Mmlca)
    end
  end

  describe "GET edit" do
    it "assigns the requested mmlca as @mmlca" do
      mmlca = Mmlca.create! valid_attributes
      get :edit, {:id => mmlca.to_param}, valid_session
      expect(assigns(:mmlca)).to eq(mmlca)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Mmlca" do
        expect {
          post :create, {:mmlca => valid_attributes}, valid_session
        }.to change(Mmlca, :count).by(1)
      end

      it "assigns a newly created mmlca as @mmlca" do
        post :create, {:mmlca => valid_attributes}, valid_session
        expect(assigns(:mmlca)).to be_a(Mmlca)
        expect(assigns(:mmlca)).to be_persisted
      end

      it "redirects to the created mmlca" do
        post :create, {:mmlca => valid_attributes}, valid_session
        expect(response).to redirect_to(Mmlca.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved mmlca as @mmlca" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Mmlca).to receive(:save).and_return(false)
        post :create, {:mmlca => {  }}, valid_session
        expect(assigns(:mmlca)).to be_a_new(Mmlca)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Mmlca).to receive(:save).and_return(false)
        post :create, {:mmlca => {  }}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested mmlca" do
        mmlca = Mmlca.create! valid_attributes
        # Assuming there are no other mmlca in the database, this
        # specifies that the Mmlca created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Mmlca).to receive(:update).with({ "these" => "params" })
        put :update, {:id => mmlca.to_param, :mmlca => { "these" => "params" }}, valid_session
      end

      it "assigns the requested mmlca as @mmlca" do
        mmlca = Mmlca.create! valid_attributes
        put :update, {:id => mmlca.to_param, :mmlca => valid_attributes}, valid_session
        expect(assigns(:mmlca)).to eq(mmlca)
      end

      it "redirects to the mmlca" do
        mmlca = Mmlca.create! valid_attributes
        put :update, {:id => mmlca.to_param, :mmlca => valid_attributes}, valid_session
        expect(response).to redirect_to(mmlca)
      end
    end

    describe "with invalid params" do
      it "assigns the mmlca as @mmlca" do
        mmlca = Mmlca.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Mmlca).to receive(:save).and_return(false)
        put :update, {:id => mmlca.to_param, :mmlca => {  }}, valid_session
        expect(assigns(:mmlca)).to eq(mmlca)
      end

      it "re-renders the 'edit' template" do
        mmlca = Mmlca.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Mmlca).to receive(:save).and_return(false)
        put :update, {:id => mmlca.to_param, :mmlca => {  }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested mmlca" do
      mmlca = Mmlca.create! valid_attributes
      expect {
        delete :destroy, {:id => mmlca.to_param}, valid_session
      }.to change(Mmlca, :count).by(-1)
    end

    it "redirects to the mmlca list" do
      mmlca = Mmlca.create! valid_attributes
      delete :destroy, {:id => mmlca.to_param}, valid_session
      expect(response).to redirect_to(mmlca_url)
    end
  end

end
