# Architecture

(Usually a document written in English)

# Objective

The main purpose of this document is to organize the software development process.

# Initial rules, limits and analysis

Points to take into account before introducing a new feature:

- Every project will need to respect the Lint rules written in the flutterando-analysis package.
- This project must have a minimum test coverage of at least 70%.
- Global layers must have a specific place in the application, so they must be in the Shared folder.
- Each feature should have its own folder containing all the layers needed to execute the feature's use cases.
- All the design patterns used in the project must be listed in the "Design Patterns" section of this document, otherwise it will be considered an erroneous implementation.
- New packages and plugins can only be used in projects after evaluation and approval by the entire team responsible for the project.
- Updates to the Domain Model can only be accepted if they are first added to this document and approved by everyone involved in the project.
- It is not allowed to have a concrete class as a dependency of a layer. Only cohesion with abstract classes or interfaces will be accepted. With the exception of Store.
- Each layer should only have one responsibility.



# Entities

(To be created by the students of the Intermediate 1 Masterclass)

# Use Cases

(To be created by students in the Intermediate 1 Masterclass)


# Design Patterns

- Repository Pattern: For accessing the external API.
- Service Pattern: To isolate pieces of code with other responsibilities.
- Dependency Injection: To resolve class dependencies.
- Store: Save and change states.
- State pattern: Pattern that helps manage states.
- Adapter: Convert one object into another.
- Result: Work with multiple returns.


# External packages (Common)

- uno: HTTP client.
- result: Multiple return in Failure and Success format.
- Mocktail: For unit tests.


# External package (App)

- flutter_modular: Route modularization and dependency injection.
- realm: Local database.

# External package (Backend)

- shelf_modular: Route modularization and dependency injection.
- Shelf: Web server creation.
- Postgres: Data persistence.
- Redis: In-memory data persistence.
