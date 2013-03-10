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

describe ColdnightsController do

  # This should return the minimal set of attributes required to create a valid
  # Coldnight. As you add validations to Coldnight, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {  }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ColdnightsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all coldnights as @coldnights" do
      coldnight = Coldnight.create! valid_attributes
      get :index, {}, valid_session
      assigns(:coldnights).should eq([coldnight])
    end
  end

  describe "GET show" do
    it "assigns the requested coldnight as @coldnight" do
      coldnight = Coldnight.create! valid_attributes
      get :show, {:id => coldnight.to_param}, valid_session
      assigns(:coldnight).should eq(coldnight)
    end
  end

  describe "GET new" do
    it "assigns a new coldnight as @coldnight" do
      get :new, {}, valid_session
      assigns(:coldnight).should be_a_new(Coldnight)
    end
  end

  describe "GET edit" do
    it "assigns the requested coldnight as @coldnight" do
      coldnight = Coldnight.create! valid_attributes
      get :edit, {:id => coldnight.to_param}, valid_session
      assigns(:coldnight).should eq(coldnight)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Coldnight" do
        expect {
          post :create, {:coldnight => valid_attributes}, valid_session
        }.to change(Coldnight, :count).by(1)
      end

      it "assigns a newly created coldnight as @coldnight" do
        post :create, {:coldnight => valid_attributes}, valid_session
        assigns(:coldnight).should be_a(Coldnight)
        assigns(:coldnight).should be_persisted
      end

      it "redirects to the created coldnight" do
        post :create, {:coldnight => valid_attributes}, valid_session
        response.should redirect_to(Coldnight.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved coldnight as @coldnight" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coldnight.any_instance.stub(:save).and_return(false)
        post :create, {:coldnight => {  }}, valid_session
        assigns(:coldnight).should be_a_new(Coldnight)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Coldnight.any_instance.stub(:save).and_return(false)
        post :create, {:coldnight => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested coldnight" do
        coldnight = Coldnight.create! valid_attributes
        # Assuming there are no other coldnights in the database, this
        # specifies that the Coldnight created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Coldnight.any_instance.should_receive(:update_attributes).with({ "these" => "params" })
        put :update, {:id => coldnight.to_param, :coldnight => { "these" => "params" }}, valid_session
      end

      it "assigns the requested coldnight as @coldnight" do
        coldnight = Coldnight.create! valid_attributes
        put :update, {:id => coldnight.to_param, :coldnight => valid_attributes}, valid_session
        assigns(:coldnight).should eq(coldnight)
      end

      it "redirects to the coldnight" do
        coldnight = Coldnight.create! valid_attributes
        put :update, {:id => coldnight.to_param, :coldnight => valid_attributes}, valid_session
        response.should redirect_to(coldnight)
      end
    end

    describe "with invalid params" do
      it "assigns the coldnight as @coldnight" do
        coldnight = Coldnight.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coldnight.any_instance.stub(:save).and_return(false)
        put :update, {:id => coldnight.to_param, :coldnight => {  }}, valid_session
        assigns(:coldnight).should eq(coldnight)
      end

      it "re-renders the 'edit' template" do
        coldnight = Coldnight.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Coldnight.any_instance.stub(:save).and_return(false)
        put :update, {:id => coldnight.to_param, :coldnight => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested coldnight" do
      coldnight = Coldnight.create! valid_attributes
      expect {
        delete :destroy, {:id => coldnight.to_param}, valid_session
      }.to change(Coldnight, :count).by(-1)
    end

    it "redirects to the coldnights list" do
      coldnight = Coldnight.create! valid_attributes
      delete :destroy, {:id => coldnight.to_param}, valid_session
      response.should redirect_to(coldnights_url)
    end
  end

end
