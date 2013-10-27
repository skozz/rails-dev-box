name "rails-dev"
description "Install ruby on rails"
run_list(
  "recipe[apt]",
  "recipe[git]",
  "recipe[sqlite]"
)
