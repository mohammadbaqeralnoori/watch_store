import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:watch_store/data/constants.dart';
import 'package:watch_store/utils/shared_preferences_constants.dart';
import 'package:watch_store/utils/shared_preferences_manager.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial()) {
    emit(LoggedOutState());
  }
  final Dio _dio = Dio();

  sendSms(String mobile) async {
    emit(LoadingState());

    try {
      await _dio.post(Endpoints.sendSms, data: {"mobile": mobile}).then(
        (value) {
          debugPrint(value.toString());
          if (value.statusCode == 201) {
            emit(SentState(mobile: mobile));
          } else {
            emit(ErrorState());
          }
        },
      );
    } catch (e) {
      emit(ErrorState());
    }
  }

  verifyCode(String mobile, String code) async {
    emit(LoadingState());

    try {
      await _dio.post(Endpoints.checkSmsCode,
          data: {"mobile": mobile, "code": code}).then(
        (value) {
          debugPrint(value.toString());
          if (value.statusCode == 201) {
            SharedPreferencesManager()
                .saveString(SharedPreferencesConstants.token, value.data["data"]["token"]);
            SharedPreferencesManager().getString("token");
            if (value.data["data"]["is_registered"]) {
              emit(VerifiedIsRegisterState());
            } else {
              emit(VerifiedNotRegisterState());
            }
          } else {
            emit(ErrorState());
          }
        },
      );
    } catch (e) {
      emit(ErrorState());
    }
  }

  registration() async {}
  logOut() async {}
}
