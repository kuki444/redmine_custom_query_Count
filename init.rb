require 'redmine'

Rails.configuration.to_prepare do
  require_dependency 'queries_helper'
  QueriesHelper.send(:include, QueriesHelperPatch)
end

Rails.application.config.i18n.load_path += Dir["#{File.dirname(__FILE__)}/config/locales/*.{rb,yml}"]

Redmine::Plugin.register :redmine_custom_query_status do
  name 'Redmine Custom Query Count plugin'
  author 'Norio Kuki'
  description 'チケット一覧のカスタムクエリ一覧にクエリに該当するチケット数を表示する'
  version '0.1.0'
end
