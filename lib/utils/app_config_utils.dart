
class AppConfigUtils {

  ///是否是生产环境
  static bool isProduct() {
    const isProduct = bool.fromEnvironment('dart.vm.product');
    return isProduct;
  }
}
