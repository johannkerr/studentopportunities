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

describe JobOpportunitiesController do

  # This should return the minimal set of attributes required to create a valid
  # JobOpportunity. As you add validations to JobOpportunity, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "division" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # JobOpportunitiesController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all job_opportunities as @job_opportunities" do
      job_opportunity = JobOpportunity.create! valid_attributes
      get :index, {}, valid_session
      assigns(:job_opportunities).should eq([job_opportunity])
    end
  end

  describe "GET show" do
    it "assigns the requested job_opportunity as @job_opportunity" do
      job_opportunity = JobOpportunity.create! valid_attributes
      get :show, {:id => job_opportunity.to_param}, valid_session
      assigns(:job_opportunity).should eq(job_opportunity)
    end
  end

  describe "GET new" do
    it "assigns a new job_opportunity as @job_opportunity" do
      get :new, {}, valid_session
      assigns(:job_opportunity).should be_a_new(JobOpportunity)
    end
  end

  describe "GET edit" do
    it "assigns the requested job_opportunity as @job_opportunity" do
      job_opportunity = JobOpportunity.create! valid_attributes
      get :edit, {:id => job_opportunity.to_param}, valid_session
      assigns(:job_opportunity).should eq(job_opportunity)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new JobOpportunity" do
        expect {
          post :create, {:job_opportunity => valid_attributes}, valid_session
        }.to change(JobOpportunity, :count).by(1)
      end

      it "assigns a newly created job_opportunity as @job_opportunity" do
        post :create, {:job_opportunity => valid_attributes}, valid_session
        assigns(:job_opportunity).should be_a(JobOpportunity)
        assigns(:job_opportunity).should be_persisted
      end

      it "redirects to the created job_opportunity" do
        post :create, {:job_opportunity => valid_attributes}, valid_session
        response.should redirect_to(JobOpportunity.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved job_opportunity as @job_opportunity" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobOpportunity.any_instance.stub(:save).and_return(false)
        post :create, {:job_opportunity => { "division" => "invalid value" }}, valid_session
        assigns(:job_opportunity).should be_a_new(JobOpportunity)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        JobOpportunity.any_instance.stub(:save).and_return(false)
        post :create, {:job_opportunity => { "division" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested job_opportunity" do
        job_opportunity = JobOpportunity.create! valid_attributes
        # Assuming there are no other job_opportunities in the database, this
        # specifies that the JobOpportunity created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        JobOpportunity.any_instance.should_receive(:update_attributes).with({ "division" => "MyString" })
        put :update, {:id => job_opportunity.to_param, :job_opportunity => { "division" => "MyString" }}, valid_session
      end

      it "assigns the requested job_opportunity as @job_opportunity" do
        job_opportunity = JobOpportunity.create! valid_attributes
        put :update, {:id => job_opportunity.to_param, :job_opportunity => valid_attributes}, valid_session
        assigns(:job_opportunity).should eq(job_opportunity)
      end

      it "redirects to the job_opportunity" do
        job_opportunity = JobOpportunity.create! valid_attributes
        put :update, {:id => job_opportunity.to_param, :job_opportunity => valid_attributes}, valid_session
        response.should redirect_to(job_opportunity)
      end
    end

    describe "with invalid params" do
      it "assigns the job_opportunity as @job_opportunity" do
        job_opportunity = JobOpportunity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobOpportunity.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_opportunity.to_param, :job_opportunity => { "division" => "invalid value" }}, valid_session
        assigns(:job_opportunity).should eq(job_opportunity)
      end

      it "re-renders the 'edit' template" do
        job_opportunity = JobOpportunity.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        JobOpportunity.any_instance.stub(:save).and_return(false)
        put :update, {:id => job_opportunity.to_param, :job_opportunity => { "division" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested job_opportunity" do
      job_opportunity = JobOpportunity.create! valid_attributes
      expect {
        delete :destroy, {:id => job_opportunity.to_param}, valid_session
      }.to change(JobOpportunity, :count).by(-1)
    end

    it "redirects to the job_opportunities list" do
      job_opportunity = JobOpportunity.create! valid_attributes
      delete :destroy, {:id => job_opportunity.to_param}, valid_session
      response.should redirect_to(job_opportunities_url)
    end
  end

end