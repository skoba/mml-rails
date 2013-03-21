require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe BodilyOutputsController do

  # This should return the minimal set of attributes required to create a valid
  # BodilyOutput. As you add validations to BodilyOutput, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "type" => "" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # BodilyOutputsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all bodily_outputs as @bodily_outputs" do
      bodily_output = BodilyOutput.create! valid_attributes
      get :index, {}, valid_session
      assigns(:bodily_outputs).should eq([bodily_output])
    end
  end

  describe "GET show" do
    it "assigns the requested bodily_output as @bodily_output" do
      bodily_output = BodilyOutput.create! valid_attributes
      get :show, {:id => bodily_output.to_param}, valid_session
      assigns(:bodily_output).should eq(bodily_output)
    end
  end

  describe "GET new" do
    it "assigns a new bodily_output as @bodily_output" do
      get :new, {}, valid_session
      assigns(:bodily_output).should be_a_new(BodilyOutput)
    end
  end

  describe "GET edit" do
    it "assigns the requested bodily_output as @bodily_output" do
      bodily_output = BodilyOutput.create! valid_attributes
      get :edit, {:id => bodily_output.to_param}, valid_session
      assigns(:bodily_output).should eq(bodily_output)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new BodilyOutput" do
        expect {
          post :create, {:bodily_output => valid_attributes}, valid_session
        }.to change(BodilyOutput, :count).by(1)
      end

      it "assigns a newly created bodily_output as @bodily_output" do
        post :create, {:bodily_output => valid_attributes}, valid_session
        assigns(:bodily_output).should be_a(BodilyOutput)
        assigns(:bodily_output).should be_persisted
      end

      it "redirects to the created bodily_output" do
        post :create, {:bodily_output => valid_attributes}, valid_session
        response.should redirect_to(BodilyOutput.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved bodily_output as @bodily_output" do
        # Trigger the behavior that occurs when invalid params are submitted
        BodilyOutput.any_instance.stub(:save).and_return(false)
        post :create, {:bodily_output => { "type" => "invalid value" }}, valid_session
        assigns(:bodily_output).should be_a_new(BodilyOutput)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        BodilyOutput.any_instance.stub(:save).and_return(false)
        post :create, {:bodily_output => { "type" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested bodily_output" do
        bodily_output = BodilyOutput.create! valid_attributes
        # Assuming there are no other bodily_outputs in the database, this
        # specifies that the BodilyOutput created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        BodilyOutput.any_instance.should_receive(:update).with({ "type" => "" })
        put :update, {:id => bodily_output.to_param, :bodily_output => { "type" => "" }}, valid_session
      end

      it "assigns the requested bodily_output as @bodily_output" do
        bodily_output = BodilyOutput.create! valid_attributes
        put :update, {:id => bodily_output.to_param, :bodily_output => valid_attributes}, valid_session
        assigns(:bodily_output).should eq(bodily_output)
      end

      it "redirects to the bodily_output" do
        bodily_output = BodilyOutput.create! valid_attributes
        put :update, {:id => bodily_output.to_param, :bodily_output => valid_attributes}, valid_session
        response.should redirect_to(bodily_output)
      end
    end

    describe "with invalid params" do
      it "assigns the bodily_output as @bodily_output" do
        bodily_output = BodilyOutput.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BodilyOutput.any_instance.stub(:save).and_return(false)
        put :update, {:id => bodily_output.to_param, :bodily_output => { "type" => "invalid value" }}, valid_session
        assigns(:bodily_output).should eq(bodily_output)
      end

      it "re-renders the 'edit' template" do
        bodily_output = BodilyOutput.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        BodilyOutput.any_instance.stub(:save).and_return(false)
        put :update, {:id => bodily_output.to_param, :bodily_output => { "type" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested bodily_output" do
      bodily_output = BodilyOutput.create! valid_attributes
      expect {
        delete :destroy, {:id => bodily_output.to_param}, valid_session
      }.to change(BodilyOutput, :count).by(-1)
    end

    it "redirects to the bodily_outputs list" do
      bodily_output = BodilyOutput.create! valid_attributes
      delete :destroy, {:id => bodily_output.to_param}, valid_session
      response.should redirect_to(bodily_outputs_url)
    end
  end

end
