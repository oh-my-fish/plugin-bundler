![](https://img.shields.io/badge/license-MIT-007EC7.svg?style=flat-square)

<div align="center">
    <a href="http://github.com/oh-my-fish/oh-my-fish">
        <img width="90" src="https://cloud.githubusercontent.com/assets/8317250/8510172/f006f0a4-230f-11e5-98b6-5c2e3c87088f.png">
    </a>
</div><br>

bundler
=======

Overrides the following default calls to append `bundle exec` if such gem is
available within the context of bundler.

Default calls
-------------

 * annotate
 * cap
 * capify
 * cucumber
 * dashing
 * foreman
 * guard
 * kitchen
 * middleman
 * nanoc
 * puma
 * rackup
 * rainbows
 * rake
 * rspec
 * rubocop
 * ruby
 * shotgun
 * sidekiq
 * spec
 * spinach
 * spork
 * thin
 * thor
 * unicorn
 * unicorn_rails

You can add more bundled executables in your config.fish:

```fish
set bundler_plugin_execs jekyll mustache
```

Install
-------

> *Note*: You need to have `bundler` installed.

```fish
$ omf install bundler
```

Usage
-----

```fish
$ guard -i
```

or

```fish
$ foreman start
```

License
=======

[MIT](http://opensource.org/licenses/MIT) © [bpinto](http://github.com/bpinto) et [al](https://github.com/bpinto/plugin-bundler/graphs/contributors)
