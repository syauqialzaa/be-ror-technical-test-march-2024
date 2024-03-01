<h1 align="center"><b>Ruby On Rails Technical Test</b></h1>

BackEnd Developer - Ruby On Rails Technical Test at Altech Omega Andalan.\
Taking Time: March 2024\
Company Website: https://altechomega.com

## Tech Stack

| Technologies       | Version           |
| ------------------ | ----------------- |
| Ruby (RVM)         | v3.1.2 (v1.29.12) |
| Ruby On Rails      | v7.0.4            |
| PostgreSQL         | v14.11            |
| TailwindCSS        | v2.3              |

## Used Gems

| Dependencies   | Gems              |
| -------------- | ----------------- |
| Auth & Auto    | devise            |
| Background Job | sidekiq           |
| ERD            | rails-erd         |
| Testing        | rspec-rails       |
| Object Dummy   | factory_bot_rails |
| Pagination     | kaminari          |
| Debugging      | byebug            |

## Usage

1. Create rails local credentials. If using VS Code as code editor write this command:
   ```bash
   EDITOR="code --wait" rails credentials:edit
   ```
   Add these line and adjust it with your local database configuration:
   ```yaml
   postgresql:
     database: ur_dbname
     username: ur_uname
     password: ur_psswd
     host: localhost
     port: 5432
   ```
   Then save it.
   
2. run `bundle install`.
3. run `rails db:create db:migrate`.
4. to create seed data, run `rails db:seed` (optional).
5. With TailwindCSS, need to install foreman with gem on your local ruby dependencies. if using rvm: `/usr/share/rvm/gems/ruby-(version)/bin/foreman`
   ```bash
   gem install foreman
   ```
6. run `bin/dev` instead of `rails s`, it's because when run with `rails s` its just running rails itself not include TailwindCSS.

## Entity Relational Database

Generate ERD file using GraphVIZ and run `bundle exec erd`.

![ERD](/img_docs/ERD.png)