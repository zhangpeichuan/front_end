import 'http_request.dart';
import 'config.dart';
import '../model/home_model.dart';
class HomeRequest{
  static Future<List<MovieItem>> requestMovieList(int start) async {
      //1、构建Url
    final movieUrl = 'movie/top250?start=$start&count=${HomeConfig.movieCount}?apikey=0df993c66c0c636e29ecbb5344252a4a';
    //2、发送网络请求获取数据结果
    final result = await HttpRequest.request(movieUrl);
    final subjects = result['subjects'];
    //3、将map数据转成model
    List<MovieItem> movies = [];
    for (var subject in subjects){
      movies.add(MovieItem.fromMap(subject));
    }
    print(movies);
    return movies;
  }
}