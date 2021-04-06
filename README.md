# Acebook

This is a Ruby on Rails team project that built a Facebook clone with continuous integration and deployment.

## Getting started

First, clone this repository. Then:

```
bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

## Usage

`command_to_start` (e.g. `rackup` or `rails s`)
Navigate to `http://localhost:4567/`

## Running tests

`test_command` (e.g. `rspec`)

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
```

That is because Rails will use a Javascript runtime (such as Node) under the hood. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again

**Licensing:** This project is licensed under the [GNU GPL v.3.0](https://www.gnu.org/licenses/gpl-3.0.en.html).
