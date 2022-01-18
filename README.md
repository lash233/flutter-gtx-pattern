# flutter_pattern

Design pattern and best practices for Flutter projects.

## branches, commits & git flow

### About branches and features
Our repository is separated into main, develop, staging, and feature branches.

The feature branches must be named according to the feature that will be developed within that branch, preceded by the initials of the developer who is working on it.


if Luis Suarez are working in a new feature called e.g "login page", their branch must be called

``
feature/ls-login-page
``

if the Luis Suarez apport were a fix or code solving some kind of bug, the branch must be called

``
fix/ls-login-page
``

in both cases "ls" are the Luis Suarez initials.

### about commits
The use of gitmojis is recommended (https://gitmoji.dev/) in order to quickly recognize the context.
our commits should be named according to their purpose group, we have four purpose groups

``
add: to add features, assets, dependencies
``

``
fix: to fix bugs and related 
``

``
merge: if we are committing some merge
``

``
remove: to remove features, files, assets, dependencies
``

example commit:
``
:sparkles: add: login page feature
``

where ``:sparkles:`` (:sparkles:) is the gitmoji assigned to new features (reference: https://gitmoji.dev/)

## Files & folders names
We'll name all our files and folders using snake_case notation (always in lowercase).

```yaml
- /folders
  - /folder_name
    - file_name
```

## Project structure

```yaml
- /app
  - /data
    - /services
      - /mockup_service.dart
        - service.dart
        - repository.dart
    - /providers
      - api_provider.dart
    - /models
      - response_model.dart
  - /modules
    - /mockup_module
      - /widgets
      - page.dart
      - controller.dart
      - binding.dart
      - repository.dart
  - /routes
    - routes.dart
    - pages.dart
  - /core
    - /languages
      - es-ar.dart
      - en-us.dart
    - /constants
      - http_responses.dart
      - error_messages.dart
    - /enums
    - /theme
      - text_theme.dart
      - color_theme.dart
      - app_theme.dart
    - /utils
      - helpers.dart
    - /shared_widgets
- /assets
  - /fonts
  - /images
  - /videos
- main.dart
```

# Files & Folders explanation
## Data folder
  ### Services
  The service folder gather all the classes destinated to connect with our main API
  ### Providers
  destinated to connect with external services, i.e IMDB API, Weather API, Firebase/
  ### models
  Our data models responsible for abstracting our objects.

## Modules folder
we'll consider every independent page as a module. That means if we need assign a route to a widget, that widget must be a page and therefore a module.

  ### widgets
  our modules can have their own widgets, these widgets shouldn't be exported to others modules and should be used only for their owner.

  ### page file
  contains the final page to render

  ### controller file
  this file manage the main logic of our module, as variables, methods and services usage

  ### binding file
  this class decouples dependency injection, while "binding" routes to the state manager and the dependency manager.

  ### repository file
  If we need bind controllers or services with some providers, then we should use or repository class. This class point to the controllers with the provider we are going to consume and the services that have integration with some provider.

## Routes folder

  ### routes file
  we'll gather our paths as constants in this class, in order to easy handle and edit our routes paths

  ### pages file
  this class emulates our module's lazy load and determine every page loading logic (which module should be render with which specific route)


## Core folder
this folder gather all our global stuff, as layouts, shared widgets, constants, api keys, reusable handlers etc.

  ### languages folder
  all of us language dictionaries (one per file)

  ### constants folder
  i.e. HTTP responses, error messages, API keys, etc.

  ### enums folder
  every reusable "set of values" that can be represented as an enum

  ### theme folder
  we should define theme variables whenever we can, in order to easy manage our global styles.

  ### utils folder
  this is our "wildcard" folder for reusable stuff, as helpers or masks.