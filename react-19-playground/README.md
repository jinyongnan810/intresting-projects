# Credit
- Copied from https://github.com/bradtraversy/react-19-playground

# Notes
## use() hook
### fetch api and display data
- create async function to fetch data.
- in the component that needs fetch data, use `use(async function)` to call the async function.
- surround `Suspense` to the component to handle the loading state.

### replace useContext() hook
- create context using `createContext()`.
- create a provider that can wrap children with context.
- in the child component, use `use(context)` to get the context value, which can also be `useContext(context)`.
- display child component wrapped with provider.

## form actions
- create form with input fields.
- add action to the form.
- in action function, we can get the form data in parameter, and get specific input value using `param.get('inputName')`.

## useFormStatus() hook
- in the form's submit button, use `useFormStatus()` to get the form status, such as `pending`.

## useFormState() hook
- in form, use hook like `const [state, formAction] = useFormState(someCallback, initialState);`
  - send formAction form's `action` attribute.
- `someCallback` is like `(prevState, formData) => {} `.

## useOptimistic() hook
- display optimistic UI when user submitting form.
- the optimistic data is cleared when parent component re-rendered.

## useTransition() hook
- use `useTransition()` like `const [isPending, startTransition] = useTransition();`
- wrap state update with `startTransition(() => {})` to mark as transition.
- use `isPending` to display loading state.

