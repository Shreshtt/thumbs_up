RAILS_DEFAULT_LOGGER.info "** thumbs_up: setting up load paths **"

%w{ models controllers helpers }.each do |dir|
  path = File.join(File.dirname(__FILE__) , 'lib', dir)
  $LOAD_PATH << path
  ActiveSupport::Dependencies.load_paths << path
  ActiveSupport::Dependencies.load_once_paths.delete(path)
end

require 'thumbs_up'