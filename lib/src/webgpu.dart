part of '../webgpu.dart';

/// Adds [gpu] to [Navigator].
extension NavigatorExtension on Navigator {
  /// Serial accessor.
  external GPU get gpu;
}

/// Adds [gpu] to [WorkerNavigator].
extension WorkerNavigatorExtension on WorkerNavigator {
  /// Serial accessor.
  external GPU get gpu;
}

/// GPU.
@JS()
extension type GPU._(JSObject _) {
  /// Returns a [Future] that fulfills with a [GPUAdapter] object instance.
  /// From this you can request a GPUDevice, adapter info, features, and limits.
  ///
  /// Note that the user agent chooses whether to return an adapter.
  /// If so, it chooses according to the provided options.
  /// If no options are provided, the device will provide access to the default adapter,
  /// which is usually good enough for most purposes.
  @JS('requestAdapter')
  external JSPromise<GPUAdapter> requestAdapter();
}

@JS()
extension type GPUAdapter._(JSObject _) implements JSAny {
  //
}
