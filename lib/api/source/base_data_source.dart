abstract class BaseDataSource<K> {
  Future retrieveData<T>(K request);

  Future retrieveDataWithFile<T>(
    K request,
    String? path,
    String? fileName,
  );
}
