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

RSpec.describe '/casa_orgs', type: :request do # CasaOrg. As you add validations to CasaOrg, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      CasaOrg.create! valid_attributes
      get casa_orgs_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      casa_org = CasaOrg.create! valid_attributes
      get casa_org_url(casa_org)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_casa_org_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      casa_org = CasaOrg.create! valid_attributes
      get edit_casa_org_url(casa_org)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new CasaOrg' do
        expect do
          post casa_orgs_url, params: { casa_org: valid_attributes }
        end.to change(CasaOrg, :count).by(1)
      end

      it 'redirects to the created casa_org' do
        post casa_orgs_url, params: { casa_org: valid_attributes }
        expect(response).to redirect_to(casa_org_url(CasaOrg.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new CasaOrg' do
        expect do
          post casa_orgs_url, params: { casa_org: invalid_attributes }
        end.to change(CasaOrg, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post casa_orgs_url, params: { casa_org: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested casa_org' do
        casa_org = CasaOrg.create! valid_attributes
        patch casa_org_url(casa_org), params: { casa_org: new_attributes }
        casa_org.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the casa_org' do
        casa_org = CasaOrg.create! valid_attributes
        patch casa_org_url(casa_org), params: { casa_org: new_attributes }
        casa_org.reload
        expect(response).to redirect_to(casa_org_url(casa_org))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        casa_org = CasaOrg.create! valid_attributes
        patch casa_org_url(casa_org), params: { casa_org: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested casa_org' do
      casa_org = CasaOrg.create! valid_attributes
      expect do
        delete casa_org_url(casa_org)
      end.to change(CasaOrg, :count).by(-1)
    end

    it 'redirects to the casa_orgs list' do
      casa_org = CasaOrg.create! valid_attributes
      delete casa_org_url(casa_org)
      expect(response).to redirect_to(casa_orgs_url)
    end
  end
end