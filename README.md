# Baby Name Generator App
Baby Name Generator is an app that provides you with a random name for your baby, so you don't have to think about it rationally 😅

### Architecture and Overview
- The project is structured in MVVM using SwiftUI as a framework to build the views.
- It has the ContentView where the user can see two buttons that when tapped fetch data from a server and updates the view with a random baby name.
- It also uses the repository pattern in the protocol `RandomNameService` the defines the structure our services must follow.
- The project has a `RandomNameMockService` that uses the provided dataset and returns an instance of the model `NameInfo`that contains the information about the names. It also simulates a delay for the response.
- It also contains a `RandomNameApiService` that contains a remote API hosted by Insomnia. Since the dependencies are injected in the ViewModel, and both comply to the `RandomNameService` protocol,they are also easily interchangeable (more on that below).
- For general and reusable components it was also built a `AsyncButton` component that is basically a button that is able to perform an asynchrounous action. It is used in the implementation of a more specific component called `GenerateButton` that uses it to build the two buttons the user sees in the `ContentView`.

### Usage with real remote API:
- This is the base URL: `https://mock_9669a6e0a85e492d8eaa4768e6f063d6.mock.insomnia.rest/`
- This API contains 2 endpoints: `names/male` and `names/female`. Each return an array of strings in the same format of the local dataset used by `RandomNameMockService`.
- It was also added an Environment struct where the endpoints can be stored and also that fetches the `NAME_API_BASE_URL` from the project configuration (so we can have different environments for Debug, Release and/or others
- To test using this service, just inject `RandomNameApiService` into the ContentViewModel in the `BabyNameGenApp` struct.


