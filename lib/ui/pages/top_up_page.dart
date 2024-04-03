import 'package:bank_sha/blocs/auth/auth_bloc.dart';
import 'package:bank_sha/blocs/payment_method/payment_method_bloc.dart';
import 'package:bank_sha/models/payment_method_model.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TopUpPage extends StatefulWidget {
  const TopUpPage({super.key});

  @override
  State<TopUpPage> createState() => _TopUpPageState();
}

class _TopUpPageState extends State<TopUpPage> {
  PaymentMethodModel? selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Top Up"),
      ),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return ListView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              children: [
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Wallet',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/img_wallet.png',
                      width: 80,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          state.user.cardNumber!.replaceAllMapped(
                              RegExp(r".{4}"), (match) => '${match.group(0)} '),
                          style: blackTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: medium,
                          ),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          state.user.name.toString(),
                          style: greyTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Select Bank',
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: semiBold,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                BlocProvider(
                  create: (context) =>
                      PaymentMethodBloc()..add(PaymentMethodGet()),
                  child: BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
                    builder: (context, state) {
                      if (state is PaymentMethodSuccess) {
                        return Column(
                          children: state.paymentMethod.map((paymentMethod) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedPaymentMethod = paymentMethod;
                                });
                              },
                              child: BankItem(
                                paymentMethod: paymentMethod,
                                isSelected: paymentMethod.id ==
                                    selectedPaymentMethod?.id,
                              ),
                            );
                          }).toList(),
                        );
                      }

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                if (selectedPaymentMethod != null)
                  CustomFilledButton(
                    title: 'Continue',
                    onPressed: () {
                      Navigator.pushNamed(context, '/top-up-amount');
                    },
                  ),
                const SizedBox(
                  height: 57,
                ),
              ],
            );
          }
          return Container();
        },
      ),
    );
  }
}
