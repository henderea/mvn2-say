require 'mvn2/plugin'
class GrowlPlugin
  extend Mvn2::Plugin
  extend Mvn2::PluginType

  register :option, sym: :say, names: %w(-y --say), desc: 'Use the mac say command to say the result'

  register(:notification, order: 60) { |options, _, _, message_text|
    `say Maven #{message_text}` if options[:say]
  }
end