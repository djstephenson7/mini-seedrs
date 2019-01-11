# Mini Seedrs

A Rails clone  that mimicks the core functionality of the Seedrs website. Users can see a paginated list of campaigns and choose to invest in one.

## Getting Started

To get started, please fork this repo, then click the green 'Clone or download' button in the top right-hand corner of your screen. Copy the SSH key to your clipboard.

Open the terminal on your machine, cd into the directory you want to store the program in and type in:
```
git clone
```
Paste the SSH key and press enter. This will download a copy of the program onto your machine.

### Prerequisites

This program was built with Ruby on Rails 5.2.2. Please install Rails using:

```
gem install rails
gem install bundler
```

### Installing

This app runs using gems. to install these, run this in your terminal:

```
bundle install
```

To get started, we also need to create the database. To do  this, run these commands:

```
rails db:create
rails db:migrate
```

To seed the database with test entries, run this command:

```
rails db:seed
```

Finally, to start the server and run the application, run:

```
rails s
```

## Running the tests

This application runs using RSpec. This can be run with:

```
rspec
```

### Styling tests

The linting was tested using RuboCop. To run, run:

```
rubocop
```
## Screenshots

<img width="793" alt="screenshot 2019-01-11 at 11 59 26" src="https://user-images.githubusercontent.com/41509062/51032677-cec8f700-1598-11e9-93d1-ddb3be8a2102.png">

<img width="304" alt="screenshot 2019-01-11 at 11 59 35" src="https://user-images.githubusercontent.com/41509062/51032678-cec8f700-1598-11e9-927c-a696fd4f8f55.png">

<img width="287" alt="screenshot 2019-01-11 at 11 59 40" src="https://user-images.githubusercontent.com/41509062/51032679-cec8f700-1598-11e9-8344-7434eb74b506.png">

## Author

* **Daniel Stephenson** - https://github.com/djstephenson7
