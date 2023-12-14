# Logbook README

Welcome to Logbook—an indispensable tool designed to facilitate seamless tracking and analysis of credit transactions, empowering small businesses to make well-informed financial decisions.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Installation](#installation)


## Introduction

Logbook is a web application meticulously crafted to streamline the management of credit-based transactions. Its user-friendly interface provides users with the ability to perform CRUD operations (create, read, update, and delete) effortlessly. To ensure secure and authorized access, DEVISE has been implemented, allowing only authorized users to execute these actions.

## Features

* CRUD Operations: Effortlessly create, read, update, and delete customers and products.

* User Authentication: Safeguard personal data with secure user account authentication.

* Intuitive UI: Navigate an easy-to-use interface for efficient blog management.

* Google Calendar API: Optionally set reminders using Google Calendar, adding enhanced flexibility when needed.

* ActiveAdmin Integration: Leveraging the robust capabilities of ActiveAdmin, this application is equipped with a powerful and versatile tool to optimize its functionalities.

## Getting Started

To run this App locally, follow these steps:

Step 1: Run your migrations!

```bash
rails db:migrate
```

Step 2 (Optional): Run these rake tasks if you need dummy data.
```bash
 $ rails db:add_roles && rails db:add_customers && rails db:add_products_to_carts
```
You can run them separately or all together!

## Installation

Follow this Youtube [guide](https://youtu.be/CnZnwV38cjo?feature=shared) to authorize users with Oauth2.0 (You will need this to make calls to the api).

Required gems to integrate Google Calendar Api
```ruby
# Google Calendar Api - You will need devise to create users
gem "devise", "~> 4.9"
gem 'omniauth'
gem 'omniauth-google-oauth2'
gem "omniauth-rails_csrf_protection", "~> 1.0"
gem 'google-apis-calendar_v3'
```
Required gems for Active-admin
```ruby
# Active admin
gem 'activeadmin'
gem 'sassc'
```

After you add the gems run:
```ruby
bundle install
```