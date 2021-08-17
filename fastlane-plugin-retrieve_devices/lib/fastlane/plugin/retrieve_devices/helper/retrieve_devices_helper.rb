require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class RetrieveDevicesHelper
      # class methods that you define here become available in your action
      # as `Helper::RetrieveDevicesHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the retrieve_devices plugin helper!")
      end
    end
  end
end
