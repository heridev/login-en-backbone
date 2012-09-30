require 'spec_helper'

describe SessionsController do
  describe 'post#create' do
    context 'When the autentication is success' do
      
      let(:params) do
        {email: 'heriberto.perez@crowdint.com', password: '12345679'}
      end

      specify do
        post :create, params
        response.should be_success
      end

    end

    context 'When the autentication is failure' do
      let(:params) do
        {email: 'heriberto.perez@crowdint.com', password: 'none'}
      end

      let(:errors)do
        ["Error al momento de validarse",
        "Usuario erroneo",
        "password no es correcto"]
      end

      specify do
        post :create, params
        expect(response.status).to eq(422)       
        expect(response.body). to eq(errors.to_json)
      end
    end
  end
end
