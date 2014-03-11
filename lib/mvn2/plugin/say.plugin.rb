require 'everyday-plugins'
include EverydayPlugins
class GrowlPlugin
  extend Plugin
  extend PluginType

  register :option, sym: :say, names: %w(-y --say), desc: 'Use the mac say command to say the result'

  register(:notification, order: 60) { |options, _, _, message_text|
    `say Maven #{message_text}` if options[:say]
  }
end