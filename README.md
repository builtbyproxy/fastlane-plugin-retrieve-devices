# retrieve_devices plugin

[![fastlane Plugin Badge](https://rawcdn.githack.com/fastlane/fastlane/master/fastlane/assets/plugin-badge.svg)](https://rubygems.org/gems/fastlane-plugin-retrieve_devices)

## Getting Started

This project is a [_fastlane_](https://github.com/fastlane/fastlane) plugin. To get started with `fastlane-plugin-retrieve_devices`, add it to your project by running:

```bash
fastlane add_plugin retrieve_devices
```

## About retrieve_devices

retrieve all devices registered to your apple certrificate

### Running in your Fastfile
In the relevant fastlane `lane`, call `retrieve_devices()` where required. 

The output can be accessed with `lane_context[SharedValues::DEVICES_FOR_APPLE_CERTIFICATE]`

### Running in your CLI
the `retrieve_devices` plugin is able to be used the same as usual plugins.

Run `fastlane run retrieve_devices` for an output of the devices attached to your fastlane certificate.

## Example

Check out the [example `Fastfile`](fastlane/Fastfile) to see how to use this plugin. Try it by cloning the repo, running `fastlane install_plugins` and `bundle exec fastlane test`.

**Note to author:** Please set up a sample project to make it easy for users to explore what your plugin does. Provide everything that is necessary to try out the plugin in this project (including a sample Xcode/Android project if necessary)

## Run tests for this plugin

To run both the tests, and code style validation, run

```
rake
```

To automatically fix many of the styling issues, use
```
rubocop -a
```

## Action Options

   Key | Description | Env Var(s)
:-------------------------:|:-------------------------:|:-------------------------:
`api_key_path` | [Path to your App Store Connect API Key JSON file](https://docs.fastlane.tools/app-store-connect-api/#using-fastlane-api-key-json-file) | FL_RETRIEVE_DEVICES_API_KEY_PATH |
|`api_key` | [Your App Store Connect API Key information](https://docs.fastlane.tools/app-store-connect-api/#use-return-value-and-pass-in-as-an-option) | APP_STORE_CONNECT_API_KEY |
| `username` | *Optional:* Your Apple ID | DELIVER_USER |

## Action Output

   Key  |  Description 
:-------------------------:|:-------------------------:
`DEVICES_FOR_APPLE_CERTIFICATE` | A hash with the Name and UDID of each device registered with Apple

## Issues and Feedback

For any other issues and feedback about this plugin, please submit it to this repository.

## Troubleshooting

If you have trouble using plugins, check out the [Plugins Troubleshooting](https://docs.fastlane.tools/plugins/plugins-troubleshooting/) guide.

## Using _fastlane_ Plugins

For more information about how the `fastlane` plugin system works, check out the [Plugins documentation](https://docs.fastlane.tools/plugins/create-plugin/).

## About _fastlane_

_fastlane_ is the easiest way to automate beta deployments and releases for your iOS and Android apps. To learn more, check out [fastlane.tools](https://fastlane.tools).
