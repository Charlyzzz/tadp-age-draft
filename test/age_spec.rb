require_relative '../src/age'
require 'rspec'

describe 'test age of empires' do

  it 'un guerrero ataca a otro' do
    atila = Guerrero.new
    conan = Guerrero.new
    conan.energia = 200
    conan.potencial_defensivo = 20
    atila.potencial_ofensivo = 30
    atila.atacar conan

    expect(conan.energia).to eq(100)
  end

  it 'testear espadachin' do
    atila = Guerrero.new

    zorro = Espadachin.new
    excalibur = Espada.new

  end

  it 'testear ' do

  end



end

