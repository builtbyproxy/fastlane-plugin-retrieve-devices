describe Fastlane::Actions::RetrieveDevicesAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The retrieve_devices plugin is working!")

      Fastlane::Actions::RetrieveDevicesAction.run(nil)
    end
  end
end
