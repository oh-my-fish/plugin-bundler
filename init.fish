set -l execs annotate      \
             cap           \
             capify        \
             cucumber      \
             dashing       \
             guard         \
             kitchen       \
             middleman     \
             nanoc         \
             puma          \
             rackup        \
             rainbows      \
             rake          \
             rspec         \
             rubocop       \
             ruby          \
             shotgun       \
             sidekiq       \
             spec          \
             spinach       \
             spork         \
             thin          \
             thor          \
             unicorn       \
             unicorn_rails

if set -q bundler_plugin_execs
  set execs $execs $bundler_plugin_execs
end

# Fish 2.2.0+ has support for --inherit-variable
set -l fish_version (echo $FISH_VERSION | sed "s/\.//g")

for executable in $execs
  if test $fish_version -lt 220
    eval "function $executable; __execute_as_bundler $executable \$argv; end"
  else
    function $executable --inherit-variable executable
      __execute_as_bundler $executable $argv
    end
  end
end
