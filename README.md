# Baby Name Generator App
Baby Name Generator is an app that provides you with a random name for your baby, so you don't have to think about it rationally 😅

### Architecture and Overview
- The project is structured in MVVM using SwiftUI as a framework to build the views.
- It has the ContentView where the user can see two buttons that when tapped fetch data from a server and updates the view with a random baby name.
- It also uses the repository pattern in the protocol `RandomNameService` the defines the structure our services must follow.
- For now the project is working with the `RandomNameMockService` that uses the provided dataset and returns an instance of the model `NameInfo`that contains the information about the names. It also simulates a delay for the response.
- For general and reusable components it was also built a `AsyncButton` component that is basically a button that is able to perform an asynchrounous action. It is used in the implementation of a more specific component called `GenerateButton` that uses it to build the two buttons the user sees in the `ContentView`.

### Next steps
- The project already contains the structure for `RandomNameApiService`that should be able to fetch data from a real server and also return a `NameInfo`. - *still needs an API*
- It was also added an Environment struct where the endpoints can be stored and also that fetches the `NAME_API_BASE_URL` from the project configuration (so we can have different environments for Debug, Release and/or others - *still needs an API*


