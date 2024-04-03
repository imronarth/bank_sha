import 'package:bank_sha/models/top_up_form_model.dart';
import 'package:bank_sha/services/transaction_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'top_up_event.dart';
part 'top_up_state.dart';

class TopUpBloc extends Bloc<TopUpEvent, TopUpState> {
  TopUpBloc() : super(TopUpInitial()) {
    on<TopUpEvent>((event, emit) async {
      if (event is TopUpPost) {
        try {
          emit(TopUpLoading());

          final redirectUrl = await TransactionService().topUp(event.data);

          emit(TopUpSuccess(redirectUrl));
        } catch (e) {
          emit(TopUpFailed(e.toString()));
        }
      }
    });
  }
}
