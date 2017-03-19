require 'spec_helper'

describe Rubot do
  it 'has a version number' do
    expect(Rubot::VERSION).not_to be nil
  end

  describe 'result of executing ' do

    subject { Rubot.execute(commands) }

    context 'example A' do

      let(:commands) { File.read('spec/fixtures/example_a.rubot') }

      it { is_expected.to eq('0,1,NORTH') }
    end

    context 'example B' do

      let(:commands) { File.read('spec/fixtures/example_a.rubot') }

      it { is_expected.to eq('0,0,WEST') }
    end

    context 'example C' do

      let(:commands) { File.read('spec/fixtures/example_a.rubot') }

      it { is_expected.to eq('3,3,NORTH') }
    end
  end
end
