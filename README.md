# ActiveInteractor

[![Version](https://img.shields.io/gem/v/activeinteractor.svg?logo=ruby)](https://rubygems.org/gems/activeinteractor)
[![License](https://img.shields.io/github/license/aaronmallen/activeinteractor.svg?maxAge=300)](https://github.com/aaronmallen/activeinteractor/blob/master/LICENSE)
[![Dependencies](https://img.shields.io/depfu/aaronmallen/activeinteractor.svg?maxAge=300)](https://depfu.com/github/aaronmallen/activeinteractor)

[![Build Status](https://github.com/aaronmallen/activeinteractor/workflows/Build/badge.svg)](https://github.com/aaronmallen/activeinteractor/actions)
[![Code Quality](https://api.codacy.com/project/badge/Grade/be92c4ecf12347da82d266f6a4368b6e)](https://www.codacy.com/manual/aaronmallen/activeinteractor?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=aaronmallen/activeinteractor&amp;utm_campaign=Badge_Grade)
[![Test Coverage](https://api.codacy.com/project/badge/Coverage/be92c4ecf12347da82d266f6a4368b6e)](https://www.codacy.com/manual/aaronmallen/activeinteractor?utm_source=github.com&utm_medium=referral&utm_content=aaronmallen/activeinteractor&utm_campaign=Badge_Coverage)

An implementation of the [command pattern] for Ruby with [ActiveModel::Validations] based on the
[interactor][collective_idea_interactors] gem. Rich support for attributes, callbacks, and validations,
and thread safe performance methods.

## Getting Started

Add this line to your application's Gemfile:

```ruby
gem 'activeinteractor'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install activeinteractor
```

## Usage

Be sure to read the [wiki] for detailed information on how to use ActiveInteractor.

For technical documentation please see the gem's [ruby docs].

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Read our guidelines for [Contributing](CONTRIBUTING.md).

## Acknowledgements

* Special thanks to [@collectiveidea] for their amazing foundational work on
  the [interactor][collective_idea_interactors] gem.
* Special thanks to the [@rails] team for their work on [ActiveModel][active_model_git]
  and [ActiveSupport][active_support_git] gems.

## License

The gem is available as open source under the terms of the [MIT License][mit_license].

[@collectiveidea]: https://github.com/collectiveidea
[@rails]: https://github.com/rails
[active_model_git]: https://github.com/rails/rails/tree/master/activemodel
[active_support_git]: https://github.com/rails/rails/tree/master/activesupport
[ActiveModel::Validations]: https://api.rubyonrails.org/classes/ActiveModel/Validations.html
[business_logic_wikipedia]: https://en.wikipedia.org/wiki/Business_logic
[collective_idea_interactors]: https://github.com/collectiveidea/interactor
[command pattern]: https://en.wikipedia.org/wiki/Command_pattern
[mit_license]: https://opensource.org/licenses/MIT
[ruby docs]: https://www.rubydoc.info/gems/activeinteractor
[wiki]: https://github.com/aaronmallen/activeinteractor/wiki
