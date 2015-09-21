function _execute_as_bundler
  if _is_a_bundled_executable $argv[1]
    command bundle exec $argv
  else
    eval command $argv
  end
end
