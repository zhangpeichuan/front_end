import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'counter_view_model.dart';
import '../model/user_info.dart';
import 'user_view_model.dart';
List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (ctx)=>HYCounterViewModel(),),
  ChangeNotifierProvider(create: (ctx)=>HYUserViewModel(UserInfo('flutter你好',20,'https://pic3.zhimg.com/50/v2-6deb94b07cc9adbe811fdadc21f72230_720w.jpg?source=1940ef5c')),),
];