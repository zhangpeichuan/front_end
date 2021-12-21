import 'package:dio/dio.dart';
import 'config.dart';
class HttpRequest{
  static final BaseOptions baseOptions = BaseOptions(baseUrl:HttpConfig.baseURL ,connectTimeout:HttpConfig.timeout);
  static final Dio dio = Dio(baseOptions);
  static Future<T> request<T>(String url,{
                      String method = 'get',
                      Map<String,dynamic>? params,
                      Interceptor? interceptor}) async{
    //1.创建单独配置
    final option = Options(method: method);
    //全局拦截器
      Interceptor dInter = InterceptorsWrapper(
        onRequest: (options,handler){
          print('请求拦截');
          return handler.next(options);
        },
        onResponse: (response,handler){
          print('响应拦截');
          return handler.next(response);
        },
        onError: (error,handler){
          print('错误拦截 $error');
          return handler.next(error);
        },
      );
      List<Interceptor> inters = [dInter];
      if (interceptor != null){
        inters.add(interceptor);
      }
      dio.interceptors.addAll(inters);
    //2.直接发送网络请求
    try{
      Response response = await dio.request(url,queryParameters: params,options: option);
      return response.data;
    }on DioError catch(e){
      return Future.error(e);
    }
  }
}