include_recipe "ack-grep"

["curl", "imagemagick"].each do |pkg|
  package pkg do
    action :install
  end
end