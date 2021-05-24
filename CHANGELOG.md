# 0.1.1
  * Modified `Builder`, `ParameterizedBuilder`, `Callback`, `ParameterizedCallback`, `ParameterizedVoidCallback`and `VoidCallback` so that their generics now allow nulls. For example, `Builder<INSTANCE extends Object?>` instead of `Builder<INSTANCE extends Object>`.

# 0.1.0
  * Removed `BasicException` in favor of `NamedException`.
  * Removed `EmptyException` in favor of `NamedException`.
  * Modified `NamedException` to include features from `BasicException` and `EmptyException`.
  * Modified order of generics in `ParameterizedBuilder` and `ParameterizedCallback`.
  * Modified generics to extend either `Object` or `Object?` rather than `dynamic`.
  * Modified generics to extend `Object?` instead of `Object` in `Executable` and `CallToExecute`.
  * Added `meta` library to exports.
  * Added `ExceptionBuilder` and `ParameterizedExceptionBuilder`
  * Updated Tests.
  * Updated Documentation.
  * Updated Readme.

# 0.0.2
  * Modified `Identifiable` with generic and mandatory key.
  * Added more tests.
  * Updated Documentation.
  * Updated Example.

# 0.0.1
Released on **13-May-2021**

  * Includes `Builder`, `ParameterizedBuilder`.
  * Includes `Callback`, `ParameterizedCallback`, `ParameterizedVoidCallback`, `VoidCallback`.
  * Includes `BasicException`, `EmptyException`, `ExceptionSeverity`, `NamedException`.  
  * Includes `Activatable`, `AsyncDisposable`, `AsyncInitializable`, `AsyncInitializeWith`, `AsyncInitialize`, `AsyncLoadable`, `AsyncNestedInitializable`, `AsyncNestedInitialize`, `AsyncRunnable`, `AsyncStartable`, `AsyncStoppable`, `CallToExecute`, `Disposable`, `Executable`, `Initializable`, `InitializeWith`, `Initialize`, `Loadable`, `NestedInitializable`, `NestedInitialize`, `Runnable`, `Startable`, `Stoppable`, `Undoable`, `Validatable`.
  * Includes `Categorizable`, `Cloneable`, `Copyable`, `Identifiable`, `ObjectAsStreamExtension`, `Parameterized`.
  * Includes `Deserialize`, `Serializable`, `Serialize`.

