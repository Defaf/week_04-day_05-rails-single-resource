[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

# Rails Single Resource

Let's build a rails application!

## Objectives

By the end of this, developers should be able to:

- Follow along in the creation of a rails server.
- Build a complete server side in Rails.
- Create a model with full CRUD capability.

### Methodical, Error-Driven Development

Status checks will be frequent. As developers we want to be meticulous and make
sure we're getting errors where expected as we build our server.

This is called "error-driven development". The goal is to see an error, and to
learn what error to expect. Embrace the errors, and they will tell you what
your next task is.

Follow the steps outlined in good Error Driven Development

1. Route
    - Test the route, see that a route does not exist
    - Add the route
    - Test the route, see that a route does exist
1. Controller
    - Test the route, see that a route does exist but controller does not
    - Add the controller
    - Test the route, see that a controller exists
1. Model
    - Test the route, see that a controller exists but model does not
    - Add the model
    - Test the route, see that a Model exists
1. Migrations
    - Test the route, see that a Model exists but migrations must be run
    - Run migrations
1. View
    - Test the view, see that it does not exist
    - Add the view
1. Test Feature
    - Test the route, ensure actions are successful
    - Use Rails Console to ensure all data persists as expected
    
## Demo: Books

### User Stories

- Version 1:
  - As a user, I want to view a single book
  - As a user, I want to view all books
  - As a user, I want to create a book with a title and author
  - As a user, I want to edit a book's title and author
  - As a user, I want to delete a book

### Entity Relationship Diagram (ERD)

<table>
  <th colspan="2" style="text-align:center">Books</th>
  <tr>
    <td>id</td>
    <td>primary key</td>
  </tr>
  <tr>
    <td>title</td>
    <td>string</td>
  </tr>
  <tr>
    <td>author</td>
    <td>string</td>
  </tr>
  <tr>
    <td>created_at</td>
    <td>datetime</td>
  </tr>
  <tr>
    <td>updated_at</td>
    <td>datetime</td>
  </tr>
</table>

### CRUD for Books

We'll now go through the steps for completing each CRUD action for multiple
resources.

#### Read - index

- `BooksController#index`

#### Read - show

- `BooksController#show`

#### Destroy

- `BooksController#destroy`

#### Update

- `BooksController#update`

#### Create

- `BooksController#create`

## Code Along: Hospital

### User Stories

- Version 1
  - As a user, I want to view a single patient
  - As a user, I want to view all patients
  - As a user, I want to create a patient with a first name, last name,
    diagnosis and born on
  - As a user, I want to edit a patient's first name, last name, diagnosis and
    born on
  - As a user, I want to delete a patient

### Entity Relationship Diagrams

#### Version 1

<table>
  <th colspan="2" style="text-align:center">Patients</th>
  <tr>
    <td>id</td>
    <td>primary key</td>
  </tr>
  <tr>
    <td>first_name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>last_name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>diagnosis</td>
    <td>string</td>
  </tr>
  <tr>
    <td>born_on</td>
    <td>date</td>
  </tr>
  <tr>
    <td>created_at</td>
    <td>datetime</td>
  </tr>
  <tr>
    <td>updated_at</td>
    <td>datetime</td>
  </tr>
</table>

Follow the same Error Driven Development steps as you did with books!

### CRUD for Patient

#### Read - index

- `PatientsController#index`

#### Read - show

- `PatientsController#show`

#### Destroy

- `PatientsController#destroy`

#### Update

- `PatientsController#update`

#### Create

- `PatientsController#create`

## Lab: Cafeteria 

### User Stories

- Version 1
  - As a user, I want to view a single ingredient
  - As a user, I want to view all ingredients
  - As a user, I want to create an ingredient with name and unit
  - As a user, I want to edit an ingredient's name and unit
  - As a user, I want to delete an ingredient
  
### Entity Relationship Diagrams

#### Version 1

<table>
  <th colspan="2" style="text-align:center">Ingredients</th>
  <tr>
    <td>id</td>
    <td>primary key</td>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>unit</td>
    <td>string</td>
  </tr>
  <tr>
    <td>created_at</td>
    <td>datetime</td>
  </tr>
  <tr>
    <td>updated_at</td>
    <td>datetime</td>
  </tr>
</table>

### CRUD for Ingredient

#### Read - index

- `IngredientsController#index`

#### Read - show

- `IngredientsController#show`

#### Destroy

- `IngredientsController#destroy`

#### Update

- `IngredientsController#update`

#### Create

- `IngredientsController#create`

## Tasks

Developers should run these often!

- `bin/rake routes` lists the endpoints available in your API.
- `bin/rake test` runs automated tests.
- `bin/rails console` opens a REPL that pre-loads the API.
- `bin/rails db` opens your database client and loads the correct database.
- `bin/rails server` starts the API.

## Additional Resources

- [Rails Docs: Routing](http://guides.rubyonrails.org/routing.html)
- [Rails Docs: Controllers](http://guides.rubyonrails.org/action_controller_overview.html)
- [Rails Docs: Active Record Basics](http://guides.rubyonrails.org/active_record_basics.html)
- [Rails Docs: Active Record Querying](http://guides.rubyonrails.org/active_record_querying.html)
- [Rails Docs: Active Model Basics](http://guides.rubyonrails.org/active_model_basics.html)
- [Rails Docs: Command Line](http://guides.rubyonrails.org/command_line.html)
- [Migration Cheat Sheet](https://www.ralfebert.de/snippets/ruby-rails/models-tables-migrations-cheat-sheet/)
- [Rails Reserved Words](https://reservedwords.herokuapp.com/)
- [Rails Status Symbols](http://www.railsstatuscodes.com/)






