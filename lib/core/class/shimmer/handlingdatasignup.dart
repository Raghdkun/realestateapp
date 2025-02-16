import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:realestateapp/core/class/statusrequest.dart';
import 'package:realestateapp/core/constant/imageasset.dart';
import 'package:realestateapp/views/widgets/shimmer/signupshimmer.dart';

class HandlingDataShimmerSignUp extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataShimmerSignUp(
      {Key? key, required this.statusRequest, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? SignUpShimmer()
        : statusRequest == StatusRequest.offlinefailure
            ? Center(
                child: Lottie.asset(AppImageAsset.lottieoffline,
                    width: 250, height: 250))
            : statusRequest == StatusRequest.serverfailure
                ? Center(
                    child: Lottie.asset(AppImageAsset.lottieserver,
                        width: 250, height: 250))
                : statusRequest == StatusRequest.failure
                    ? Center(
                        child: Lottie.asset(AppImageAsset.lottienodata,
                            width: 250, height: 250, repeat: true))
                    : widget;
  }
}
