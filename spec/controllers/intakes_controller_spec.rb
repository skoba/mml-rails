require 'rails_helper'

describe IntakesController do
  def valid_attributes
    { type: 'breakfast', volume: 5, unit: '/10' }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # IntakesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all intakes as @intakes" do
      intake = Intake.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:intakes)).to eq([intake])
    end
  end

  describe "GET show" do
    it "assigns the requested intake as @intake" do
      intake = Intake.create! valid_attributes
      get :show, {:id => intake.to_param}, valid_session
      expect(assigns(:intake)).to eq(intake)
    end
  end

  describe "GET new" do
    it "assigns a new intake as @intake" do
      get :new, {}, valid_session
      expect(assigns(:intake)).to be_a_new(Intake)
    end
  end

  describe "GET edit" do
    it "assigns the requested intake as @intake" do
      intake = Intake.create! valid_attributes
      get :edit, {:id => intake.to_param}, valid_session
      expect(assigns(:intake)).to eq(intake)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Intake" do
        expect {
          post :create, {:intake => valid_attributes}, valid_session
        }.to change(Intake, :count).by(1)
      end

      it "assigns a newly created intake as @intake" do
        post :create, {:intake => valid_attributes}, valid_session
        expect(assigns(:intake)).to be_a(Intake)
        expect(assigns(:intake)).to be_persisted
      end

      it "redirects to the created intake" do
        post :create, {:intake => valid_attributes}, valid_session
        expect(response).to redirect_to(Intake.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved intake as @intake" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Intake).to receive(:save).and_return(false)
        post :create, {:intake => { type: 'invalid_value' }}, valid_session
        expect(assigns(:intake)).to be_a_new(Intake)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Intake).to receive(:save).and_return(false)
        post :create, {:intake => {type: 'invalid_value'}}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested intake" do
        intake = Intake.create! valid_attributes
        # Assuming there are no other intakes in the database, this
        # specifies that the Intake created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        expect_any_instance_of(Intake).to receive(:update).with({ "type" => "valid_value" })
        put :update, {:id => intake.to_param, :intake => { "type" => "valid_value" }}, valid_session
      end

      it "assigns the requested intake as @intake" do
        intake = Intake.create! valid_attributes
        put :update, {:id => intake.to_param, :intake => valid_attributes}, valid_session
        expect(assigns(:intake)).to eq(intake)
      end

      it "redirects to the intake" do
        intake = Intake.create! valid_attributes
        put :update, {:id => intake.to_param, :intake => valid_attributes}, valid_session
        expect(response).to redirect_to(intake)
      end
    end

    describe "with invalid params" do
      it "assigns the intake as @intake" do
        intake = Intake.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Intake).to receive(:save).and_return(false)
        put :update, {:id => intake.to_param, :intake => { type: 'invalid_value' }}, valid_session
        expect(assigns(:intake)).to eq(intake)
      end

      it "re-renders the 'edit' template" do
        intake = Intake.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(Intake).to receive(:save).and_return(false)
        put :update, {:id => intake.to_param, :intake => { type: 'invalid_value' }}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested intake" do
      intake = Intake.create! valid_attributes
      expect {
        delete :destroy, {:id => intake.to_param}, valid_session
      }.to change(Intake, :count).by(-1)
    end

    it "redirects to the intakes list" do
      intake = Intake.create! valid_attributes
      delete :destroy, {:id => intake.to_param}, valid_session
      expect(response).to redirect_to(intakes_url)
    end
  end

end
