# Limoncello Homepage

This is the static code for the homepage of Team Limoncello, hosted at [teamlimoncello.com](https://teamlimoncello.com).

## Editing

The CSS preprocessor SASS is used to preprocess the stylesheets. To compile locally for testing, you will need to have Ruby and SASS installed: Ruby comes with every good package manager, and SASS can be installed using Ruby's package manager Gem (`gem install sass`). This can then be built by calling `build/sass.rb`. However, there is no need to build before committing, especially if you are making a small change, as Travis CI will rebuild anyway as soon as you commit, to update the public-facing website.