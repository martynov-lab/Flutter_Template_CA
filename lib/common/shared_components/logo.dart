import 'dart:ui' as ui;
import 'package:flutter/material.dart';

// Logo with gradient
class LogoCustomPainter extends CustomPainter {
  final BuildContext context;

  LogoCustomPainter(this.context);
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.6495767);
    path_0.cubicTo(
        0,
        size.height * 0.4560433,
        size.width * 0.02809831,
        size.height * 0.2991530,
        size.width * 0.06275930,
        size.height * 0.2991530);
    path_0.lineTo(size.width * 0.1681948, size.height * 0.2991530);
    path_0.cubicTo(
        size.width * 0.2028558,
        size.height * 0.2991530,
        size.width * 0.2309541,
        size.height * 0.4560433,
        size.width * 0.2309541,
        size.height * 0.6495767);
    path_0.cubicTo(
        size.width * 0.2309541,
        size.height * 0.8431100,
        size.width * 0.2028558,
        size.height,
        size.width * 0.1681948,
        size.height);
    path_0.lineTo(size.width * 0.06275930, size.height);
    path_0.cubicTo(size.width * 0.02809831, size.height, 0,
        size.height * 0.8431100, 0, size.height * 0.6495767);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.08535581, size.height * 0.6496033);
    path_1.cubicTo(
        size.width * 0.08535581,
        size.height * 0.5011367,
        size.width * 0.1067105,
        size.height * 0.3807833,
        size.width * 0.1330523,
        size.height * 0.3807833);
    path_1.lineTo(size.width * 0.1631773, size.height * 0.3807833);
    path_1.cubicTo(
        size.width * 0.1895192,
        size.height * 0.3807833,
        size.width * 0.2108744,
        size.height * 0.5011367,
        size.width * 0.2108744,
        size.height * 0.6496033);
    path_1.cubicTo(
        size.width * 0.2108744,
        size.height * 0.7980667,
        size.width * 0.1895192,
        size.height * 0.9184200,
        size.width * 0.1631773,
        size.height * 0.9184200);
    path_1.lineTo(size.width * 0.1330523, size.height * 0.9184200);
    path_1.cubicTo(
        size.width * 0.1067105,
        size.height * 0.9184200,
        size.width * 0.08535581,
        size.height * 0.7980667,
        size.width * 0.08535581,
        size.height * 0.6496033);
    path_1.close();

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.shader = ui.Gradient.linear(
        Offset(size.width * 0.2108744, size.height * 0.6496033),
        Offset(size.width * 0.09319302, size.height * 0.8237200),
        [Color(0xff5CEE9C).withOpacity(1), Color(0xffFFEF21).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3166483, size.height * 0.4608100);
    path_2.cubicTo(
        size.width * 0.3133727,
        size.height * 0.4683767,
        size.width * 0.3104006,
        size.height * 0.4798167,
        size.width * 0.3079169,
        size.height * 0.4944133);
    path_2.cubicTo(
        size.width * 0.3053471,
        size.height * 0.5112467,
        size.width * 0.3032965,
        size.height * 0.5305633,
        size.width * 0.3018564,
        size.height * 0.5514967);
    path_2.cubicTo(
        size.width * 0.3002459,
        size.height * 0.5759767,
        size.width * 0.2994698,
        size.height * 0.6020667,
        size.width * 0.2995727,
        size.height * 0.6282900);
    path_2.cubicTo(
        size.width * 0.2994227,
        size.height * 0.6545000,
        size.width * 0.3001547,
        size.height * 0.6806300,
        size.width * 0.3017279,
        size.height * 0.7051900);
    path_2.cubicTo(
        size.width * 0.3031192,
        size.height * 0.7262733,
        size.width * 0.3051401,
        size.height * 0.7457467,
        size.width * 0.3076959,
        size.height * 0.7627033);
    path_2.cubicTo(
        size.width * 0.3102064,
        size.height * 0.7779633,
        size.width * 0.3132291,
        size.height * 0.7900267,
        size.width * 0.3165744,
        size.height * 0.7981367);
    path_2.cubicTo(
        size.width * 0.3200483,
        size.height * 0.8061133,
        size.width * 0.3237471,
        size.height * 0.8102033,
        size.width * 0.3274791,
        size.height * 0.8102000);
    path_2.cubicTo(
        size.width * 0.3308250,
        size.height * 0.8104400,
        size.width * 0.3341494,
        size.height * 0.8070067,
        size.width * 0.3372791,
        size.height * 0.8000767);
    path_2.cubicTo(
        size.width * 0.3400395,
        size.height * 0.7945367,
        size.width * 0.3426140,
        size.height * 0.7862267,
        size.width * 0.3448866,
        size.height * 0.7755200);
    path_2.cubicTo(
        size.width * 0.3468884,
        size.height * 0.7657400,
        size.width * 0.3485628,
        size.height * 0.7538733,
        size.width * 0.3498233,
        size.height * 0.7405167);
    path_2.cubicTo(
        size.width * 0.3505099,
        size.height * 0.7339267,
        size.width * 0.3511250,
        size.height * 0.7270933,
        size.width * 0.3516651,
        size.height * 0.7200533);
    path_2.cubicTo(
        size.width * 0.3520180,
        size.height * 0.7154567,
        size.width * 0.3526529,
        size.height * 0.7118033,
        size.width * 0.3534436,
        size.height * 0.7098100);
    path_2.cubicTo(
        size.width * 0.3542349,
        size.height * 0.7078167,
        size.width * 0.3551250,
        size.height * 0.7076267,
        size.width * 0.3559384,
        size.height * 0.7092833);
    path_2.lineTo(size.width * 0.3756669, size.height * 0.7483800);
    path_2.cubicTo(
        size.width * 0.3765349,
        size.height * 0.7500767,
        size.width * 0.3772529,
        size.height * 0.7537133,
        size.width * 0.3776634,
        size.height * 0.7584967);
    path_2.cubicTo(
        size.width * 0.3780744,
        size.height * 0.7632800,
        size.width * 0.3781448,
        size.height * 0.7688200,
        size.width * 0.3778587,
        size.height * 0.7739033);
    path_2.cubicTo(
        size.width * 0.3766320,
        size.height * 0.7945433,
        size.width * 0.3749866,
        size.height * 0.8142500,
        size.width * 0.3729587,
        size.height * 0.8326033);
    path_2.cubicTo(
        size.width * 0.3700378,
        size.height * 0.8587833,
        size.width * 0.3664041,
        size.height * 0.8819967,
        size.width * 0.3622012,
        size.height * 0.9013200);
    path_2.cubicTo(
        size.width * 0.3576471,
        size.height * 0.9228900,
        size.width * 0.3525116,
        size.height * 0.9398867,
        size.width * 0.3470047,
        size.height * 0.9516167);
    path_2.cubicTo(
        size.width * 0.3406669,
        size.height * 0.9640167,
        size.width * 0.3340145,
        size.height * 0.9700267,
        size.width * 0.3273320,
        size.height * 0.9693867);
    path_2.cubicTo(
        size.width * 0.3196215,
        size.height * 0.9698067,
        size.width * 0.3119849,
        size.height * 0.9605900,
        size.width * 0.3049326,
        size.height * 0.9423533);
    path_2.cubicTo(
        size.width * 0.2980372,
        size.height * 0.9262433,
        size.width * 0.2917715,
        size.height * 0.9021367,
        size.width * 0.2865122,
        size.height * 0.8714833);
    path_2.cubicTo(
        size.width * 0.2812366,
        size.height * 0.8404533,
        size.width * 0.2770721,
        size.height * 0.8035833,
        size.width * 0.2742628,
        size.height * 0.7630267);
    path_2.cubicTo(
        size.width * 0.2712977,
        size.height * 0.7199500,
        size.width * 0.2698262,
        size.height * 0.6738567,
        size.width * 0.2699343,
        size.height * 0.6274267);
    path_2.cubicTo(
        size.width * 0.2699203,
        size.height * 0.5805633,
        size.width * 0.2714721,
        size.height * 0.5341367,
        size.width * 0.2745023,
        size.height * 0.4907500);
    path_2.cubicTo(
        size.width * 0.2772233,
        size.height * 0.4507233,
        size.width * 0.2813070,
        size.height * 0.4143467,
        size.width * 0.2865070,
        size.height * 0.3838333);
    path_2.cubicTo(
        size.width * 0.2917064,
        size.height * 0.3533200,
        size.width * 0.2979128,
        size.height * 0.3293080,
        size.width * 0.3047488,
        size.height * 0.3132550);
    path_2.cubicTo(
        size.width * 0.3118227,
        size.height * 0.2964883,
        size.width * 0.3194052,
        size.height * 0.2882813,
        size.width * 0.3270372,
        size.height * 0.2891293);
    path_2.cubicTo(
        size.width * 0.3338483,
        size.height * 0.2890230,
        size.width * 0.3406169,
        size.height * 0.2953887,
        size.width * 0.3470785,
        size.height * 0.3079773);
    path_2.cubicTo(
        size.width * 0.3525157,
        size.height * 0.3200840,
        size.width * 0.3576081,
        size.height * 0.3369333,
        size.width * 0.3621831,
        size.height * 0.3579533);
    path_2.cubicTo(
        size.width * 0.3663442,
        size.height * 0.3771833,
        size.width * 0.3698709,
        size.height * 0.4006867,
        size.width * 0.3725907,
        size.height * 0.4273133);
    path_2.cubicTo(
        size.width * 0.3745634,
        size.height * 0.4463200,
        size.width * 0.3761698,
        size.height * 0.4665500,
        size.width * 0.3773797,
        size.height * 0.4876267);
    path_2.cubicTo(
        size.width * 0.3776587,
        size.height * 0.4926967,
        size.width * 0.3775826,
        size.height * 0.4982067,
        size.width * 0.3771680,
        size.height * 0.5029500);
    path_2.cubicTo(
        size.width * 0.3767541,
        size.height * 0.5076933,
        size.width * 0.3760355,
        size.height * 0.5112867,
        size.width * 0.3751692,
        size.height * 0.5129367);
    path_2.lineTo(size.width * 0.3549070, size.height * 0.5519267);
    path_2.cubicTo(
        size.width * 0.3540634,
        size.height * 0.5535167,
        size.width * 0.3531477,
        size.height * 0.5531667,
        size.width * 0.3523465,
        size.height * 0.5509433);
    path_2.cubicTo(
        size.width * 0.3515453,
        size.height * 0.5487233,
        size.width * 0.3509198,
        size.height * 0.5448000,
        size.width * 0.3505965,
        size.height * 0.5399733);
    path_2.cubicTo(
        size.width * 0.3491047,
        size.height * 0.5189233,
        size.width * 0.3469134,
        size.height * 0.4998133,
        size.width * 0.3441494,
        size.height * 0.4837500);
    path_2.cubicTo(
        size.width * 0.3404657,
        size.height * 0.4614567,
        size.width * 0.3348291,
        size.height * 0.4496067,
        size.width * 0.3274791,
        size.height * 0.4493933);
    path_2.cubicTo(
        size.width * 0.3237785,
        size.height * 0.4491867,
        size.width * 0.3201041,
        size.height * 0.4530600,
        size.width * 0.3166483,
        size.height * 0.4608100);
    path_2.close();

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.3864064, size.height * 0.9310233);
    path_3.lineTo(size.width * 0.3871988, size.height * 0.02846410);
    path_3.cubicTo(
        size.width * 0.3872012,
        size.height * 0.02580503,
        size.width * 0.3872930,
        size.height * 0.02317480,
        size.width * 0.3874692,
        size.height * 0.02072353);
    path_3.cubicTo(
        size.width * 0.3876453,
        size.height * 0.01827230,
        size.width * 0.3879029,
        size.height * 0.01604803,
        size.width * 0.3882262,
        size.height * 0.01417780);
    path_3.cubicTo(
        size.width * 0.3885494,
        size.height * 0.01230757,
        size.width * 0.3889326,
        size.height * 0.01082797,
        size.width * 0.3893535,
        size.height * 0.009823467);
    path_3.cubicTo(
        size.width * 0.3897744,
        size.height * 0.008818967,
        size.width * 0.3902250,
        size.height * 0.008309267,
        size.width * 0.3906802,
        size.height * 0.008323433);
    path_3.lineTo(size.width * 0.4133924, size.height * 0.008969667);
    path_3.cubicTo(
        size.width * 0.4143076,
        size.height * 0.009054133,
        size.width * 0.4151808,
        size.height * 0.01123263,
        size.width * 0.4158250,
        size.height * 0.01503800);
    path_3.cubicTo(
        size.width * 0.4164686,
        size.height * 0.01884337,
        size.width * 0.4168320,
        size.height * 0.02397260,
        size.width * 0.4168366,
        size.height * 0.02932573);
    path_3.lineTo(size.width * 0.4165791, size.height * 0.3185110);
    path_3.cubicTo(
        size.width * 0.4165715,
        size.height * 0.3221910,
        size.width * 0.4167360,
        size.height * 0.3258130,
        size.width * 0.4170558,
        size.height * 0.3289833);
    path_3.cubicTo(
        size.width * 0.4173756,
        size.height * 0.3321540,
        size.width * 0.4178378,
        size.height * 0.3347533,
        size.width * 0.4183919,
        size.height * 0.3364933);
    path_3.cubicTo(
        size.width * 0.4189465,
        size.height * 0.3382367,
        size.width * 0.4195721,
        size.height * 0.3390600,
        size.width * 0.4202006,
        size.height * 0.3388700);
    path_3.cubicTo(
        size.width * 0.4208291,
        size.height * 0.3386800,
        size.width * 0.4214366,
        size.height * 0.3374867,
        size.width * 0.4219576,
        size.height * 0.3354200);
    path_3.cubicTo(
        size.width * 0.4244698,
        size.height * 0.3250147,
        size.width * 0.4272488,
        size.height * 0.3170160,
        size.width * 0.4301913,
        size.height * 0.3117257);
    path_3.cubicTo(
        size.width * 0.4353424,
        size.height * 0.3008453,
        size.width * 0.4407773,
        size.height * 0.2952700,
        size.width * 0.4462541,
        size.height * 0.2952467);
    path_3.cubicTo(
        size.width * 0.4525308,
        size.height * 0.2944380,
        size.width * 0.4587593,
        size.height * 0.3017957,
        size.width * 0.4644901,
        size.height * 0.3167877);
    path_3.cubicTo(
        size.width * 0.4693593,
        size.height * 0.3287847,
        size.width * 0.4736901,
        size.height * 0.3471800,
        size.width * 0.4771465,
        size.height * 0.3705467);
    path_3.cubicTo(
        size.width * 0.4806029,
        size.height * 0.3939133,
        size.width * 0.4830919,
        size.height * 0.4216233,
        size.width * 0.4844209,
        size.height * 0.4515267);
    path_3.cubicTo(
        size.width * 0.4860221,
        size.height * 0.4837167,
        size.width * 0.4868227,
        size.height * 0.5170867,
        size.width * 0.4867971,
        size.height * 0.5506133);
    path_3.lineTo(size.width * 0.4864471, size.height * 0.9341467);
    path_3.cubicTo(
        size.width * 0.4864471,
        size.height * 0.9368000,
        size.width * 0.4863576,
        size.height * 0.9394300,
        size.width * 0.4861831,
        size.height * 0.9418800);
    path_3.cubicTo(
        size.width * 0.4860087,
        size.height * 0.9443300,
        size.width * 0.4857535,
        size.height * 0.9465533,
        size.width * 0.4854314,
        size.height * 0.9484267);
    path_3.cubicTo(
        size.width * 0.4851099,
        size.height * 0.9502967,
        size.width * 0.4847279,
        size.height * 0.9517800,
        size.width * 0.4843081,
        size.height * 0.9527867);
    path_3.cubicTo(
        size.width * 0.4838878,
        size.height * 0.9537900,
        size.width * 0.4834378,
        size.height * 0.9543000,
        size.width * 0.4829843,
        size.height * 0.9542867);
    path_3.lineTo(size.width * 0.4602721, size.height * 0.9536400);
    path_3.cubicTo(
        size.width * 0.4598169,
        size.height * 0.9536267,
        size.width * 0.4593674,
        size.height * 0.9530900,
        size.width * 0.4589483,
        size.height * 0.9520600);
    path_3.cubicTo(
        size.width * 0.4585285,
        size.height * 0.9510267,
        size.width * 0.4581483,
        size.height * 0.9495233,
        size.width * 0.4578285,
        size.height * 0.9476333);
    path_3.cubicTo(
        size.width * 0.4575087,
        size.height * 0.9457433,
        size.width * 0.4572558,
        size.height * 0.9435033,
        size.width * 0.4570837,
        size.height * 0.9410433);
    path_3.cubicTo(
        size.width * 0.4569122,
        size.height * 0.9385800,
        size.width * 0.4568250,
        size.height * 0.9359433,
        size.width * 0.4568273,
        size.height * 0.9332867);
    path_3.lineTo(size.width * 0.4571401, size.height * 0.5796933);
    path_3.cubicTo(
        size.width * 0.4573517,
        size.height * 0.5471267,
        size.width * 0.4557343,
        size.height * 0.5150500,
        size.width * 0.4525355,
        size.height * 0.4883600);
    path_3.cubicTo(
        size.width * 0.4492198,
        size.height * 0.4634800,
        size.width * 0.4440988,
        size.height * 0.4516333,
        size.width * 0.4369703,
        size.height * 0.4514167);
    path_3.cubicTo(
        size.width * 0.4342058,
        size.height * 0.4504500,
        size.width * 0.4314401,
        size.height * 0.4531967,
        size.width * 0.4288855,
        size.height * 0.4594533);
    path_3.cubicTo(
        size.width * 0.4263308,
        size.height * 0.4657067,
        size.width * 0.4240558,
        size.height * 0.4753000,
        size.width * 0.4222337,
        size.height * 0.4875000);
    path_3.cubicTo(
        size.width * 0.4185506,
        size.height * 0.5119400,
        size.width * 0.4164738,
        size.height * 0.5432433,
        size.width * 0.4163762,
        size.height * 0.5758167);
    path_3.lineTo(size.width * 0.4160634, size.height * 0.9321000);
    path_3.cubicTo(
        size.width * 0.4160535,
        size.height * 0.9374633,
        size.width * 0.4156826,
        size.height * 0.9425833,
        size.width * 0.4150308,
        size.height * 0.9463567);
    path_3.cubicTo(
        size.width * 0.4143785,
        size.height * 0.9501267,
        size.width * 0.4134988,
        size.height * 0.9522400,
        size.width * 0.4125820,
        size.height * 0.9522400);
    path_3.lineTo(size.width * 0.3898512, size.height * 0.9513800);
    path_3.cubicTo(
        size.width * 0.3893965,
        size.height * 0.9513667,
        size.width * 0.3889465,
        size.height * 0.9508267,
        size.width * 0.3885273,
        size.height * 0.9497967);
    path_3.cubicTo(
        size.width * 0.3881081,
        size.height * 0.9487667,
        size.width * 0.3877279,
        size.height * 0.9472633,
        size.width * 0.3874076,
        size.height * 0.9453733);
    path_3.cubicTo(
        size.width * 0.3870878,
        size.height * 0.9434833,
        size.width * 0.3868349,
        size.height * 0.9412433,
        size.width * 0.3866628,
        size.height * 0.9387800);
    path_3.cubicTo(
        size.width * 0.3864913,
        size.height * 0.9363167,
        size.width * 0.3864041,
        size.height * 0.9336833,
        size.width * 0.3864064,
        size.height * 0.9310233);
    path_3.close();

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_3, paint_3_fill);

    Path path_4 = Path();
    path_4.moveTo(size.width * 0.5760785, size.height * 0.3213520);
    path_4.cubicTo(
        size.width * 0.5828837,
        size.height * 0.3378233,
        size.width * 0.5890698,
        size.height * 0.3618967,
        size.width * 0.5942965,
        size.height * 0.3922200);
    path_4.cubicTo(
        size.width * 0.5994709,
        size.height * 0.4233700,
        size.width * 0.6035291,
        size.height * 0.4602433,
        size.width * 0.6062326,
        size.height * 0.5006800);
    path_4.cubicTo(
        size.width * 0.6091047,
        size.height * 0.5443267,
        size.width * 0.6105000,
        size.height * 0.5908167,
        size.width * 0.6103372,
        size.height * 0.6375700);
    path_4.cubicTo(
        size.width * 0.6104477,
        size.height * 0.6839400,
        size.width * 0.6089709,
        size.height * 0.7299700,
        size.width * 0.6059942,
        size.height * 0.7729533);
    path_4.cubicTo(
        size.width * 0.6032267,
        size.height * 0.8132600,
        size.width * 0.5990988,
        size.height * 0.8498933,
        size.width * 0.5938547,
        size.height * 0.8806600);
    path_4.cubicTo(
        size.width * 0.5854070,
        size.height * 0.9269133,
        size.width * 0.5748634,
        size.height * 0.9579733,
        size.width * 0.5634797,
        size.height * 0.9701200);
    path_4.cubicTo(
        size.width * 0.5520959,
        size.height * 0.9822667,
        size.width * 0.5403547,
        size.height * 0.9749900,
        size.width * 0.5296593,
        size.height * 0.9491600);
    path_4.cubicTo(
        size.width * 0.5228622,
        size.height * 0.9326333,
        size.width * 0.5166802,
        size.height * 0.9085267,
        size.width * 0.5114599,
        size.height * 0.8781800);
    path_4.cubicTo(
        size.width * 0.5062703,
        size.height * 0.8471100,
        size.width * 0.5022099,
        size.height * 0.8102167,
        size.width * 0.4995238,
        size.height * 0.7697233);
    path_4.cubicTo(
        size.width * 0.4966151,
        size.height * 0.7265867,
        size.width * 0.4952122,
        size.height * 0.6804800,
        size.width * 0.4953977,
        size.height * 0.6341233);
    path_4.cubicTo(
        size.width * 0.4953192,
        size.height * 0.5873733,
        size.width * 0.4968023,
        size.height * 0.5409833,
        size.width * 0.4997628,
        size.height * 0.4975567);
    path_4.cubicTo(
        size.width * 0.5025209,
        size.height * 0.4572467,
        size.width * 0.5066436,
        size.height * 0.4206100,
        size.width * 0.5118837,
        size.height * 0.3898500);
    path_4.cubicTo(
        size.width * 0.5171547,
        size.height * 0.3598100,
        size.width * 0.5233814,
        size.height * 0.3360967,
        size.width * 0.5302116,
        size.height * 0.3200593);
    path_4.cubicTo(
        size.width * 0.5450169,
        size.height * 0.2875480,
        size.width * 0.5613506,
        size.height * 0.2880467,
        size.width * 0.5760965,
        size.height * 0.3214597);
    path_4.lineTo(size.width * 0.5760785, size.height * 0.3213520);
    path_4.close();
    path_4.moveTo(size.width * 0.5631843, size.height * 0.8067733);
    path_4.cubicTo(
        size.width * 0.5665773,
        size.height * 0.7992700,
        size.width * 0.5696331,
        size.height * 0.7873333,
        size.width * 0.5721180,
        size.height * 0.7718767);
    path_4.cubicTo(
        size.width * 0.5747448,
        size.height * 0.7557667,
        size.width * 0.5768099,
        size.height * 0.7368167,
        size.width * 0.5781965,
        size.height * 0.7160867);
    path_4.cubicTo(
        size.width * 0.5798948,
        size.height * 0.6908133,
        size.width * 0.5807453,
        size.height * 0.6638633,
        size.width * 0.5807017,
        size.height * 0.6367100);
    path_4.cubicTo(
        size.width * 0.5808012,
        size.height * 0.6095633,
        size.width * 0.5799936,
        size.height * 0.5825633,
        size.width * 0.5783256,
        size.height * 0.5572233);
    path_4.cubicTo(
        size.width * 0.5769791,
        size.height * 0.5363967,
        size.width * 0.5749517,
        size.height * 0.5173000,
        size.width * 0.5723576,
        size.height * 0.5010033);
    path_4.cubicTo(
        size.width * 0.5698919,
        size.height * 0.4854333,
        size.width * 0.5668570,
        size.height * 0.4733200,
        size.width * 0.5634791,
        size.height * 0.4655667);
    path_4.cubicTo(
        size.width * 0.5567738,
        size.height * 0.4497333,
        size.width * 0.5492866,
        size.height * 0.4495033,
        size.width * 0.5425535,
        size.height * 0.4649200);
    path_4.cubicTo(
        size.width * 0.5391721,
        size.height * 0.4725600,
        size.width * 0.5361209,
        size.height * 0.4844767,
        size.width * 0.5336198,
        size.height * 0.4998167);
    path_4.cubicTo(
        size.width * 0.5309878,
        size.height * 0.5159267,
        size.width * 0.5289279,
        size.height * 0.5349267,
        size.width * 0.5275593,
        size.height * 0.5557167);
    path_4.cubicTo(
        size.width * 0.5242448,
        size.height * 0.6068433,
        size.width * 0.5241924,
        size.height * 0.6632433,
        size.width * 0.5274116,
        size.height * 0.7145800);
    path_4.cubicTo(
        size.width * 0.5287541,
        size.height * 0.7353700,
        size.width * 0.5307680,
        size.height * 0.7544567,
        size.width * 0.5333430,
        size.height * 0.7708000);
    path_4.cubicTo(
        size.width * 0.5358186,
        size.height * 0.7863033,
        size.width * 0.5388506,
        size.height * 0.7984067,
        size.width * 0.5422221,
        size.height * 0.8062367);
    path_4.cubicTo(
        size.width * 0.5489372,
        size.height * 0.8219867,
        size.width * 0.5564267,
        size.height * 0.8221767,
        size.width * 0.5631657,
        size.height * 0.8067733);
    path_4.lineTo(size.width * 0.5631843, size.height * 0.8067733);
    path_4.close();

    Paint paint_4_fill = Paint()..style = PaintingStyle.fill;
    paint_4_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_4, paint_4_fill);

    Path path_5 = Path();
    path_5.moveTo(size.width * 0.6224593, size.height * 0.03093530);
    path_5.cubicTo(
        size.width * 0.6241279,
        size.height * 0.02087803,
        size.width * 0.6261395,
        size.height * 0.01294243,
        size.width * 0.6283547,
        size.height * 0.007623967);
    path_5.cubicTo(
        size.width * 0.6305756,
        size.height * 0.002305533,
        size.width * 0.6329535,
        size.height * -0.0002815493,
        size.width * 0.6353547,
        size.height * 0.00002427103);
    path_5.cubicTo(
        size.width * 0.6377907,
        size.height * -0.0001889587,
        size.width * 0.6402151,
        size.height * 0.002509143,
        size.width * 0.6424709,
        size.height * 0.007953633);
    path_5.cubicTo(
        size.width * 0.6447267,
        size.height * 0.01339810,
        size.width * 0.6467674,
        size.height * 0.02147457,
        size.width * 0.6484709,
        size.height * 0.03168923);
    path_5.cubicTo(
        size.width * 0.6518081,
        size.height * 0.05251533,
        size.width * 0.6536221,
        size.height * 0.08015767,
        size.width * 0.6535174,
        size.height * 0.1086977);
    path_5.cubicTo(
        size.width * 0.6535291,
        size.height * 0.1227337,
        size.width * 0.6530581,
        size.height * 0.1366417,
        size.width * 0.6521337,
        size.height * 0.1495897);
    path_5.cubicTo(
        size.width * 0.6512035,
        size.height * 0.1625373,
        size.width * 0.6498430,
        size.height * 0.1742587,
        size.width * 0.6481221,
        size.height * 0.1840523);
    path_5.cubicTo(
        size.width * 0.6464012,
        size.height * 0.1938460,
        size.width * 0.6443605,
        size.height * 0.2015107,
        size.width * 0.6421221,
        size.height * 0.2065880);
    path_5.cubicTo(
        size.width * 0.6398837,
        size.height * 0.2116650,
        size.width * 0.6374942,
        size.height * 0.2140503,
        size.width * 0.6350930,
        size.height * 0.2136010);
    path_5.cubicTo(
        size.width * 0.6326919,
        size.height * 0.2138237,
        size.width * 0.6303023,
        size.height * 0.2111350,
        size.width * 0.6280814,
        size.height * 0.2057043);
    path_5.cubicTo(
        size.width * 0.6258663,
        size.height * 0.2002737,
        size.width * 0.6238605,
        size.height * 0.1922180,
        size.width * 0.6222035,
        size.height * 0.1820440);
    path_5.cubicTo(
        size.width * 0.6205233,
        size.height * 0.1723523,
        size.width * 0.6192035,
        size.height * 0.1607653,
        size.width * 0.6183140,
        size.height * 0.1479887);
    path_5.cubicTo(
        size.width * 0.6174302,
        size.height * 0.1352123,
        size.width * 0.6169942,
        size.height * 0.1215137,
        size.width * 0.6170407,
        size.height * 0.1077283);
    path_5.cubicTo(
        size.width * 0.6170000,
        size.height * 0.09344500,
        size.width * 0.6174593,
        size.height * 0.07926333,
        size.width * 0.6183953,
        size.height * 0.06605667);
    path_5.cubicTo(
        size.width * 0.6193256,
        size.height * 0.05285000,
        size.width * 0.6207093,
        size.height * 0.04089767,
        size.width * 0.6224593,
        size.height * 0.03093530);
    path_5.close();
    path_5.moveTo(size.width * 0.6238779, size.height * 0.3175353);
    path_5.lineTo(size.width * 0.6465872, size.height * 0.3181817);
    path_5.cubicTo(
        size.width * 0.6470465,
        size.height * 0.3181957,
        size.width * 0.6474942,
        size.height * 0.3187337,
        size.width * 0.6479128,
        size.height * 0.3197640);
    path_5.cubicTo(
        size.width * 0.6483314,
        size.height * 0.3207947,
        size.width * 0.6487151,
        size.height * 0.3222980,
        size.width * 0.6490349,
        size.height * 0.3241883);
    path_5.cubicTo(
        size.width * 0.6493547,
        size.height * 0.3260787,
        size.width * 0.6496047,
        size.height * 0.3283187,
        size.width * 0.6497791,
        size.height * 0.3307807);
    path_5.cubicTo(
        size.width * 0.6499477,
        size.height * 0.3332427,
        size.width * 0.6500349,
        size.height * 0.3358800,
        size.width * 0.6500349,
        size.height * 0.3385367);
    path_5.lineTo(size.width * 0.6495000, size.height * 0.9388800);
    path_5.cubicTo(
        size.width * 0.6494826,
        size.height * 0.9441833,
        size.width * 0.6491047,
        size.height * 0.9492300,
        size.width * 0.6484535,
        size.height * 0.9529200);
    path_5.cubicTo(
        size.width * 0.6478023,
        size.height * 0.9566100,
        size.width * 0.6469244,
        size.height * 0.9586467,
        size.width * 0.6460174,
        size.height * 0.9585900);
    path_5.lineTo(size.width * 0.6233256, size.height * 0.9585900);
    path_5.cubicTo(
        size.width * 0.6228721,
        size.height * 0.9585600,
        size.width * 0.6224186,
        size.height * 0.9580067,
        size.width * 0.6220000,
        size.height * 0.9569533);
    path_5.cubicTo(
        size.width * 0.6215814,
        size.height * 0.9559033,
        size.width * 0.6212035,
        size.height * 0.9543767,
        size.width * 0.6208837,
        size.height * 0.9524633);
    path_5.cubicTo(
        size.width * 0.6205698,
        size.height * 0.9505500,
        size.width * 0.6203198,
        size.height * 0.9482867,
        size.width * 0.6201570,
        size.height * 0.9458067);
    path_5.cubicTo(
        size.width * 0.6199884,
        size.height * 0.9433300,
        size.width * 0.6199070,
        size.height * 0.9406800,
        size.width * 0.6199186,
        size.height * 0.9380167);
    path_5.lineTo(size.width * 0.6204302, size.height * 0.3376767);
    path_5.cubicTo(
        size.width * 0.6204360,
        size.height * 0.3323433,
        size.width * 0.6208023,
        size.height * 0.3272367,
        size.width * 0.6214477,
        size.height * 0.3234657);
    path_5.cubicTo(
        size.width * 0.6220930,
        size.height * 0.3196947,
        size.width * 0.6229651,
        size.height * 0.3175637,
        size.width * 0.6238779,
        size.height * 0.3175353);
    path_5.close();

    Paint paint_5_fill = Paint()..style = PaintingStyle.fill;
    paint_5_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_5, paint_5_fill);

    Path path_6 = Path();
    path_6.moveTo(size.width * 0.6894942, size.height * 0.8170233);
    path_6.cubicTo(
        size.width * 0.6928314,
        size.height * 0.8366267,
        size.width * 0.6977093,
        size.height * 0.8471800,
        size.width * 0.7042326,
        size.height * 0.8473967);
    path_6.cubicTo(
        size.width * 0.7081047,
        size.height * 0.8489367,
        size.width * 0.7119477,
        size.height * 0.8425400,
        size.width * 0.7150988,
        size.height * 0.8293033);
    path_6.cubicTo(
        size.width * 0.7162442,
        size.height * 0.8237467,
        size.width * 0.7171628,
        size.height * 0.8168033,
        size.width * 0.7177965,
        size.height * 0.8089533);
    path_6.cubicTo(
        size.width * 0.7184360,
        size.height * 0.8011033,
        size.width * 0.7187733,
        size.height * 0.7925367,
        size.width * 0.7187849,
        size.height * 0.7838500);
    path_6.cubicTo(
        size.width * 0.7188023,
        size.height * 0.7768200,
        size.width * 0.7185814,
        size.height * 0.7698400,
        size.width * 0.7181279,
        size.height * 0.7633233);
    path_6.cubicTo(
        size.width * 0.7176744,
        size.height * 0.7568100,
        size.width * 0.7170000,
        size.height * 0.7508967,
        size.width * 0.7161512,
        size.height * 0.7459400);
    path_6.cubicTo(
        size.width * 0.7143081,
        size.height * 0.7342000,
        size.width * 0.7112674,
        size.height * 0.7262300,
        size.width * 0.7070291,
        size.height * 0.7209533);
    path_6.lineTo(size.width * 0.6925000, size.height * 0.7011333);
    path_6.cubicTo(
        size.width * 0.6818140,
        size.height * 0.6864867,
        size.width * 0.6740756,
        size.height * 0.6629000,
        size.width * 0.6691570,
        size.height * 0.6288667);
    path_6.cubicTo(
        size.width * 0.6643663,
        size.height * 0.5951900,
        size.width * 0.6617965,
        size.height * 0.5525800,
        size.width * 0.6619186,
        size.height * 0.5087767);
    path_6.cubicTo(
        size.width * 0.6619419,
        size.height * 0.4808333,
        size.width * 0.6630291,
        size.height * 0.4532700,
        size.width * 0.6651047,
        size.height * 0.4281067);
    path_6.cubicTo(
        size.width * 0.6670988,
        size.height * 0.4023667,
        size.width * 0.6700930,
        size.height * 0.3797167,
        size.width * 0.6738547,
        size.height * 0.3619767);
    path_6.cubicTo(
        size.width * 0.6776163,
        size.height * 0.3421667,
        size.width * 0.6819942,
        size.height * 0.3268063,
        size.width * 0.6867500,
        size.height * 0.3167397);
    path_6.cubicTo(
        size.width * 0.6919360,
        size.height * 0.3051020,
        size.width * 0.6974593,
        size.height * 0.2995043,
        size.width * 0.7030174,
        size.height * 0.3002610);
    path_6.cubicTo(
        size.width * 0.7097093,
        size.height * 0.2994303,
        size.width * 0.7163721,
        size.height * 0.3062727,
        size.width * 0.7226163,
        size.height * 0.3204017);
    path_6.cubicTo(
        size.width * 0.7275000,
        size.height * 0.3305947,
        size.width * 0.7319651,
        size.height * 0.3467067,
        size.width * 0.7357093,
        size.height * 0.3676833);
    path_6.cubicTo(
        size.width * 0.7388430,
        size.height * 0.3851133,
        size.width * 0.7413488,
        size.height * 0.4060200,
        size.width * 0.7430814,
        size.height * 0.4291833);
    path_6.cubicTo(
        size.width * 0.7439884,
        size.height * 0.4411433,
        size.width * 0.7447384,
        size.height * 0.4534933,
        size.width * 0.7453256,
        size.height * 0.4661233);
    path_6.cubicTo(
        size.width * 0.7454360,
        size.height * 0.4687500,
        size.width * 0.7454535,
        size.height * 0.4714767,
        size.width * 0.7453779,
        size.height * 0.4741433);
    path_6.cubicTo(
        size.width * 0.7453081,
        size.height * 0.4768067,
        size.width * 0.7451395,
        size.height * 0.4793600,
        size.width * 0.7448953,
        size.height * 0.4816500);
    path_6.cubicTo(
        size.width * 0.7446512,
        size.height * 0.4839367,
        size.width * 0.7443256,
        size.height * 0.4859167,
        size.width * 0.7439477,
        size.height * 0.4874667);
    path_6.cubicTo(
        size.width * 0.7435698,
        size.height * 0.4890167,
        size.width * 0.7431453,
        size.height * 0.4901100,
        size.width * 0.7426919,
        size.height * 0.4906800);
    path_6.lineTo(size.width * 0.7245465, size.height * 0.5140533);
    path_6.cubicTo(
        size.width * 0.7236977,
        size.height * 0.5151600,
        size.width * 0.7228023,
        size.height * 0.5143300,
        size.width * 0.7220523,
        size.height * 0.5117300);
    path_6.cubicTo(
        size.width * 0.7212965,
        size.height * 0.5091300,
        size.width * 0.7207442,
        size.height * 0.5049567,
        size.width * 0.7204942,
        size.height * 0.5000533);
    path_6.cubicTo(
        size.width * 0.7203198,
        size.height * 0.4963900,
        size.width * 0.7201047,
        size.height * 0.4927933,
        size.width * 0.7198547,
        size.height * 0.4892800);
    path_6.cubicTo(
        size.width * 0.7191279,
        size.height * 0.4783633,
        size.width * 0.7179942,
        size.height * 0.4685367,
        size.width * 0.7165349,
        size.height * 0.4605233);
    path_6.cubicTo(
        size.width * 0.7149651,
        size.height * 0.4513367,
        size.width * 0.7130814,
        size.height * 0.4441833,
        size.width * 0.7110116,
        size.height * 0.4395233);
    path_6.cubicTo(
        size.width * 0.7085349,
        size.height * 0.4337700,
        size.width * 0.7058837,
        size.height * 0.4310233,
        size.width * 0.7032209,
        size.height * 0.4314433);
    path_6.cubicTo(
        size.width * 0.6996977,
        size.height * 0.4309500,
        size.width * 0.6962442,
        size.height * 0.4372733,
        size.width * 0.6934012,
        size.height * 0.4494300);
    path_6.cubicTo(
        size.width * 0.6920640,
        size.height * 0.4542733,
        size.width * 0.6909709,
        size.height * 0.4610533,
        size.width * 0.6902151,
        size.height * 0.4691167);
    path_6.cubicTo(
        size.width * 0.6894651,
        size.height * 0.4771767,
        size.width * 0.6890814,
        size.height * 0.4862400,
        size.width * 0.6891105,
        size.height * 0.4954200);
    path_6.cubicTo(
        size.width * 0.6890349,
        size.height * 0.5026067,
        size.width * 0.6892558,
        size.height * 0.5097933,
        size.width * 0.6897558,
        size.height * 0.5163733);
    path_6.cubicTo(
        size.width * 0.6902558,
        size.height * 0.5229500,
        size.width * 0.6910174,
        size.height * 0.5287300,
        size.width * 0.6919826,
        size.height * 0.5332233);
    path_6.cubicTo(
        size.width * 0.6940581,
        size.height * 0.5430667,
        size.width * 0.6965116,
        size.height * 0.5498300,
        size.width * 0.6991279,
        size.height * 0.5529333);
    path_6.lineTo(size.width * 0.7146919, size.height * 0.5728600);
    path_6.cubicTo(
        size.width * 0.7255988,
        size.height * 0.5862133,
        size.width * 0.7335930,
        size.height * 0.6112033,
        size.width * 0.7389186,
        size.height * 0.6465300);
    path_6.cubicTo(
        size.width * 0.7442791,
        size.height * 0.6801333,
        size.width * 0.7471860,
        size.height * 0.7246500,
        size.width * 0.7470233,
        size.height * 0.7706033);
    path_6.cubicTo(
        size.width * 0.7469826,
        size.height * 0.7969767,
        size.width * 0.7460523,
        size.height * 0.8230433,
        size.width * 0.7442791,
        size.height * 0.8472900);
    path_6.cubicTo(
        size.width * 0.7425930,
        size.height * 0.8730767,
        size.width * 0.7398953,
        size.height * 0.8962033,
        size.width * 0.7364128,
        size.height * 0.9148200);
    path_6.cubicTo(
        size.width * 0.7325523,
        size.height * 0.9357500,
        size.width * 0.7280174,
        size.height * 0.9520033,
        size.width * 0.7230756,
        size.height * 0.9626400);
    path_6.cubicTo(
        size.width * 0.7101337,
        size.height * 0.9874167,
        size.width * 0.6961453,
        size.height * 0.9859767,
        size.width * 0.6833605,
        size.height * 0.9585467);
    path_6.cubicTo(
        size.width * 0.6783372,
        size.height * 0.9461467,
        size.width * 0.6737093,
        size.height * 0.9289300,
        size.width * 0.6696570,
        size.height * 0.9076033);
    path_6.cubicTo(
        size.width * 0.6662791,
        size.height * 0.8894333,
        size.width * 0.6636395,
        size.height * 0.8671033,
        size.width * 0.6619186,
        size.height * 0.8422267);
    path_6.cubicTo(
        size.width * 0.6608547,
        size.height * 0.8291400,
        size.width * 0.6600174,
        size.height * 0.8154667,
        size.width * 0.6594128,
        size.height * 0.8014067);
    path_6.cubicTo(
        size.width * 0.6593081,
        size.height * 0.7987800,
        size.width * 0.6592907,
        size.height * 0.7960533,
        size.width * 0.6593663,
        size.height * 0.7933900);
    path_6.cubicTo(
        size.width * 0.6594419,
        size.height * 0.7907233,
        size.width * 0.6596047,
        size.height * 0.7881767,
        size.width * 0.6598547,
        size.height * 0.7858933);
    path_6.cubicTo(
        size.width * 0.6601047,
        size.height * 0.7836133,
        size.width * 0.6604244,
        size.height * 0.7816467,
        size.width * 0.6608081,
        size.height * 0.7801133);
    path_6.cubicTo(
        size.width * 0.6611860,
        size.height * 0.7785767,
        size.width * 0.6616163,
        size.height * 0.7775033,
        size.width * 0.6620698,
        size.height * 0.7769600);
    path_6.lineTo(size.width * 0.6807093, size.height * 0.7539100);
    path_6.cubicTo(
        size.width * 0.6815814,
        size.height * 0.7528033,
        size.width * 0.6824884,
        size.height * 0.7537267,
        size.width * 0.6832442,
        size.height * 0.7564800);
    path_6.cubicTo(
        size.width * 0.6840058,
        size.height * 0.7592367,
        size.width * 0.6845465,
        size.height * 0.7636067,
        size.width * 0.6847616,
        size.height * 0.7686667);
    path_6.cubicTo(
        size.width * 0.6855756,
        size.height * 0.7869600,
        size.width * 0.6872093,
        size.height * 0.8036567,
        size.width * 0.6894942,
        size.height * 0.8170233);
    path_6.close();

    Paint paint_6_fill = Paint()..style = PaintingStyle.fill;
    paint_6_fill.color = Theme.of(context)
        .iconTheme
        .color!; // Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_6, paint_6_fill);

    Path path_7 = Path();
    path_7.moveTo(size.width * 0.8507442, size.height * 0.8609933);
    path_7.cubicTo(
        size.width * 0.8478140,
        size.height * 0.8855767,
        size.width * 0.8441802,
        size.height * 0.9070333,
        size.width * 0.8400058,
        size.height * 0.9244300);
    path_7.cubicTo(
        size.width * 0.8355640,
        size.height * 0.9431433,
        size.width * 0.8306744,
        size.height * 0.9579133,
        size.width * 0.8254884,
        size.height * 0.9682667);
    path_7.cubicTo(
        size.width * 0.8194884,
        size.height * 0.9788867,
        size.width * 0.8132442,
        size.height * 0.9839767,
        size.width * 0.8069767,
        size.height * 0.9833467);
    path_7.cubicTo(
        size.width * 0.7996105,
        size.height * 0.9831100,
        size.width * 0.7923081,
        size.height * 0.9754233,
        size.width * 0.7853895,
        size.height * 0.9606200);
    path_7.cubicTo(
        size.width * 0.7786395,
        size.height * 0.9455633,
        size.width * 0.7725116,
        size.height * 0.9222867,
        size.width * 0.7674128,
        size.height * 0.8923367);
    path_7.cubicTo(
        size.width * 0.7621105,
        size.height * 0.8615333,
        size.width * 0.7579709,
        size.height * 0.8245900,
        size.width * 0.7552558,
        size.height * 0.7838767);
    path_7.cubicTo(
        size.width * 0.7520698,
        size.height * 0.7379367,
        size.width * 0.7505233,
        size.height * 0.6886800,
        size.width * 0.7507035,
        size.height * 0.6391233);
    path_7.cubicTo(
        size.width * 0.7506686,
        size.height * 0.5914100,
        size.width * 0.7522209,
        size.height * 0.5441133,
        size.width * 0.7552733,
        size.height * 0.4998633);
    path_7.cubicTo(
        size.width * 0.7579942,
        size.height * 0.4605133,
        size.width * 0.7620407,
        size.height * 0.4247633,
        size.width * 0.7671744,
        size.height * 0.3947433);
    path_7.cubicTo(
        size.width * 0.7721628,
        size.height * 0.3657533,
        size.width * 0.7780930,
        size.height * 0.3429000,
        size.width * 0.7846163,
        size.height * 0.3275363);
    path_7.cubicTo(
        size.width * 0.7910000,
        size.height * 0.3111770,
        size.width * 0.7979070,
        size.height * 0.3029527,
        size.width * 0.8048779,
        size.height * 0.3034107);
    path_7.cubicTo(
        size.width * 0.8220291,
        size.height * 0.3034107,
        size.width * 0.8351628,
        size.height * 0.3342133,
        size.width * 0.8446860,
        size.height * 0.3931267);
    path_7.cubicTo(
        size.width * 0.8542093,
        size.height * 0.4520433,
        size.width * 0.8588140,
        size.height * 0.5342200,
        size.width * 0.8587209,
        size.height * 0.6371867);
    path_7.cubicTo(
        size.width * 0.8587500,
        size.height * 0.6489067,
        size.width * 0.8586686,
        size.height * 0.6606267,
        size.width * 0.8584826,
        size.height * 0.6722967);
    path_7.cubicTo(
        size.width * 0.8583837,
        size.height * 0.6772167,
        size.width * 0.8579767,
        size.height * 0.6817500,
        size.width * 0.8573372,
        size.height * 0.6850300);
    path_7.cubicTo(
        size.width * 0.8567035,
        size.height * 0.6883100,
        size.width * 0.8558837,
        size.height * 0.6901033,
        size.width * 0.8550349,
        size.height * 0.6900667);
    path_7.lineTo(size.width * 0.7837500, size.height * 0.6880200);
    path_7.cubicTo(
        size.width * 0.7832442,
        size.height * 0.6879767,
        size.width * 0.7827442,
        size.height * 0.6885867,
        size.width * 0.7822791,
        size.height * 0.6898067);
    path_7.cubicTo(
        size.width * 0.7818198,
        size.height * 0.6910267,
        size.width * 0.7814070,
        size.height * 0.6928300,
        size.width * 0.7810814,
        size.height * 0.6950800);
    path_7.cubicTo(
        size.width * 0.7807500,
        size.height * 0.6973333,
        size.width * 0.7805116,
        size.height * 0.6999833,
        size.width * 0.7803779,
        size.height * 0.7028400);
    path_7.cubicTo(
        size.width * 0.7802442,
        size.height * 0.7056967,
        size.width * 0.7802209,
        size.height * 0.7086900,
        size.width * 0.7803081,
        size.height * 0.7116100);
    path_7.cubicTo(
        size.width * 0.7806744,
        size.height * 0.7237400,
        size.width * 0.7813256,
        size.height * 0.7355167,
        size.width * 0.7822384,
        size.height * 0.7466133);
    path_7.cubicTo(
        size.width * 0.7837733,
        size.height * 0.7636867,
        size.width * 0.7857907,
        size.height * 0.7791267,
        size.width * 0.7882093,
        size.height * 0.7922800);
    path_7.cubicTo(
        size.width * 0.7907093,
        size.height * 0.8056767,
        size.width * 0.7936047,
        size.height * 0.8163300,
        size.width * 0.7967558,
        size.height * 0.8237300);
    path_7.lineTo(size.width * 0.7971047, size.height * 0.8244833);
    path_7.cubicTo(
        size.width * 0.8004070,
        size.height * 0.8313533,
        size.width * 0.8038779,
        size.height * 0.8349933,
        size.width * 0.8073837,
        size.height * 0.8352533);
    path_7.cubicTo(
        size.width * 0.8142907,
        size.height * 0.8352533,
        size.width * 0.8198721,
        size.height * 0.8265300,
        size.width * 0.8236686,
        size.height * 0.8083267);
    path_7.cubicTo(
        size.width * 0.8268837,
        size.height * 0.7940733,
        size.width * 0.8294884,
        size.height * 0.7756367,
        size.width * 0.8312733,
        size.height * 0.7544733);
    path_7.cubicTo(
        size.width * 0.8316221,
        size.height * 0.7501067,
        size.width * 0.8322267,
        size.height * 0.7466100,
        size.width * 0.8329767,
        size.height * 0.7446333);
    path_7.cubicTo(
        size.width * 0.8337267,
        size.height * 0.7426567,
        size.width * 0.8345756,
        size.height * 0.7423267,
        size.width * 0.8353663,
        size.height * 0.7437033);
    path_7.lineTo(size.width * 0.8537849, size.height * 0.7760167);
    path_7.cubicTo(
        size.width * 0.8542326,
        size.height * 0.7767933,
        size.width * 0.8546512,
        size.height * 0.7781000,
        size.width * 0.8550174,
        size.height * 0.7798567);
    path_7.cubicTo(
        size.width * 0.8553779,
        size.height * 0.7816167,
        size.width * 0.8556744,
        size.height * 0.7837867,
        size.width * 0.8558837,
        size.height * 0.7862400);
    path_7.cubicTo(
        size.width * 0.8560988,
        size.height * 0.7886900,
        size.width * 0.8562209,
        size.height * 0.7913700,
        size.width * 0.8562500,
        size.height * 0.7941133);
    path_7.cubicTo(
        size.width * 0.8562791,
        size.height * 0.7968567,
        size.width * 0.8562093,
        size.height * 0.7996033,
        size.width * 0.8560523,
        size.height * 0.8021867);
    path_7.cubicTo(
        size.width * 0.8547209,
        size.height * 0.8230433,
        size.width * 0.8529360,
        size.height * 0.8428100,
        size.width * 0.8507442,
        size.height * 0.8609933);
    path_7.close();
    path_7.moveTo(size.width * 0.8278837, size.height * 0.5254967);
    path_7.cubicTo(
        size.width * 0.8269826,
        size.height * 0.5100400,
        size.width * 0.8254709,
        size.height * 0.4960533,
        size.width * 0.8234651,
        size.height * 0.4846767);
    path_7.cubicTo(
        size.width * 0.8213488,
        size.height * 0.4718800,
        size.width * 0.8187674,
        size.height * 0.4620200,
        size.width * 0.8159128,
        size.height * 0.4558133);
    path_7.cubicTo(
        size.width * 0.8125407,
        size.height * 0.4472933,
        size.width * 0.8088953,
        size.height * 0.4431767,
        size.width * 0.8052267,
        size.height * 0.4437500);
    path_7.cubicTo(
        size.width * 0.8016860,
        size.height * 0.4432800,
        size.width * 0.7981686,
        size.height * 0.4472833,
        size.width * 0.7949128,
        size.height * 0.4554900);
    path_7.cubicTo(
        size.width * 0.7921047,
        size.height * 0.4627867,
        size.width * 0.7895349,
        size.height * 0.4728400,
        size.width * 0.7873081,
        size.height * 0.4852133);
    path_7.cubicTo(
        size.width * 0.7853430,
        size.height * 0.4969233,
        size.width * 0.7837442,
        size.height * 0.5105567,
        size.width * 0.7825872,
        size.height * 0.5254967);
    path_7.cubicTo(
        size.width * 0.7821105,
        size.height * 0.5315933,
        size.width * 0.7817093,
        size.height * 0.5378933,
        size.width * 0.7813895,
        size.height * 0.5443433);
    path_7.cubicTo(
        size.width * 0.7812558,
        size.height * 0.5473367,
        size.width * 0.7812326,
        size.height * 0.5504733,
        size.width * 0.7813372,
        size.height * 0.5535167);
    path_7.cubicTo(
        size.width * 0.7814419,
        size.height * 0.5565567,
        size.width * 0.7816628,
        size.height * 0.5594200,
        size.width * 0.7819826,
        size.height * 0.5618800);
    path_7.cubicTo(
        size.width * 0.7823081,
        size.height * 0.5643400,
        size.width * 0.7827209,
        size.height * 0.5663300,
        size.width * 0.7831977,
        size.height * 0.5676967);
    path_7.cubicTo(
        size.width * 0.7836744,
        size.height * 0.5690633,
        size.width * 0.7841977,
        size.height * 0.5697700,
        size.width * 0.7847267,
        size.height * 0.5697633);
    path_7.lineTo(size.width * 0.8255640, size.height * 0.5710533);
    path_7.cubicTo(
        size.width * 0.8260872,
        size.height * 0.5710533,
        size.width * 0.8266047,
        size.height * 0.5703600,
        size.width * 0.8270756,
        size.height * 0.5690267);
    path_7.cubicTo(
        size.width * 0.8275523,
        size.height * 0.5676900,
        size.width * 0.8279651,
        size.height * 0.5657500,
        size.width * 0.8282907,
        size.height * 0.5633467);
    path_7.cubicTo(
        size.width * 0.8286163,
        size.height * 0.5609467,
        size.width * 0.8288430,
        size.height * 0.5581433,
        size.width * 0.8289593,
        size.height * 0.5551500);
    path_7.cubicTo(
        size.width * 0.8290756,
        size.height * 0.5521600,
        size.width * 0.8290756,
        size.height * 0.5490533,
        size.width * 0.8289535,
        size.height * 0.5460667);
    path_7.cubicTo(
        size.width * 0.8287151,
        size.height * 0.5390200,
        size.width * 0.8283547,
        size.height * 0.5321300,
        size.width * 0.8278837,
        size.height * 0.5254967);
    path_7.close();

    Paint paint_7_fill = Paint()..style = PaintingStyle.fill;
    paint_7_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_7, paint_7_fill);

    Path path_8 = Path();
    path_8.moveTo(size.width * 0.8919709, size.height * 0.3570233);
    path_8.cubicTo(
        size.width * 0.8909767,
        size.height * 0.3593867,
        size.width * 0.8900756,
        size.height * 0.3629600,
        size.width * 0.8893198,
        size.height * 0.3675167);
    path_8.cubicTo(
        size.width * 0.8885407,
        size.height * 0.3727767,
        size.width * 0.8879128,
        size.height * 0.3788067,
        size.width * 0.8874767,
        size.height * 0.3853433);
    path_8.cubicTo(
        size.width * 0.8869884,
        size.height * 0.3929867,
        size.width * 0.8867500,
        size.height * 0.4011333,
        size.width * 0.8867849,
        size.height * 0.4093233);
    path_8.cubicTo(
        size.width * 0.8867384,
        size.height * 0.4175100,
        size.width * 0.8869593,
        size.height * 0.4256667,
        size.width * 0.8874360,
        size.height * 0.4333367);
    path_8.cubicTo(
        size.width * 0.8878605,
        size.height * 0.4399567,
        size.width * 0.8884709,
        size.height * 0.4460733,
        size.width * 0.8892500,
        size.height * 0.4513967);
    path_8.cubicTo(
        size.width * 0.8900116,
        size.height * 0.4561733,
        size.width * 0.8909302,
        size.height * 0.4599433,
        size.width * 0.8919477,
        size.height * 0.4624633);
    path_8.cubicTo(
        size.width * 0.8930058,
        size.height * 0.4649667,
        size.width * 0.8941279,
        size.height * 0.4662467,
        size.width * 0.8952616,
        size.height * 0.4662300);
    path_8.cubicTo(
        size.width * 0.8962791,
        size.height * 0.4663200,
        size.width * 0.8972907,
        size.height * 0.4652500,
        size.width * 0.8982384,
        size.height * 0.4630700);
    path_8.cubicTo(
        size.width * 0.8990814,
        size.height * 0.4613467,
        size.width * 0.8998605,
        size.height * 0.4587500,
        size.width * 0.9005523,
        size.height * 0.4554000);
    path_8.cubicTo(
        size.width * 0.9011570,
        size.height * 0.4523467,
        size.width * 0.9016686,
        size.height * 0.4486400,
        size.width * 0.9020523,
        size.height * 0.4444700);
    path_8.cubicTo(
        size.width * 0.9022616,
        size.height * 0.4424133,
        size.width * 0.9024477,
        size.height * 0.4402767,
        size.width * 0.9026105,
        size.height * 0.4380800);
    path_8.cubicTo(
        size.width * 0.9027209,
        size.height * 0.4366500,
        size.width * 0.9029128,
        size.height * 0.4355133,
        size.width * 0.9031512,
        size.height * 0.4348933);
    path_8.cubicTo(
        size.width * 0.9033895,
        size.height * 0.4342700,
        size.width * 0.9036628,
        size.height * 0.4342067,
        size.width * 0.9039070,
        size.height * 0.4347167);
    path_8.lineTo(size.width * 0.9099012, size.height * 0.4469233);
    path_8.cubicTo(
        size.width * 0.9101570,
        size.height * 0.4474767,
        size.width * 0.9103663,
        size.height * 0.4485967,
        size.width * 0.9104884,
        size.height * 0.4500600);
    path_8.cubicTo(
        size.width * 0.9106105,
        size.height * 0.4515200,
        size.width * 0.9106337,
        size.height * 0.4532033,
        size.width * 0.9105523,
        size.height * 0.4547600);
    path_8.cubicTo(
        size.width * 0.9101802,
        size.height * 0.4612100,
        size.width * 0.9096802,
        size.height * 0.4673633,
        size.width * 0.9090640,
        size.height * 0.4730900);
    path_8.cubicTo(
        size.width * 0.9081744,
        size.height * 0.4812667,
        size.width * 0.9070698,
        size.height * 0.4885133,
        size.width * 0.9057965,
        size.height * 0.4945500);
    path_8.cubicTo(
        size.width * 0.9044128,
        size.height * 0.5012833,
        size.width * 0.9028488,
        size.height * 0.5066000,
        size.width * 0.9011802,
        size.height * 0.5102900);
    path_8.cubicTo(
        size.width * 0.8992558,
        size.height * 0.5141100,
        size.width * 0.8972442,
        size.height * 0.5159633,
        size.width * 0.8952151,
        size.height * 0.5157700);
    path_8.cubicTo(
        size.width * 0.8928779,
        size.height * 0.5159400,
        size.width * 0.8905523,
        size.height * 0.5130833,
        size.width * 0.8884128,
        size.height * 0.5073967);
    path_8.cubicTo(
        size.width * 0.8863140,
        size.height * 0.5023667,
        size.width * 0.8844128,
        size.height * 0.4948367,
        size.width * 0.8828140,
        size.height * 0.4852667);
    path_8.cubicTo(
        size.width * 0.8812093,
        size.height * 0.4755833,
        size.width * 0.8799477,
        size.height * 0.4640667,
        size.width * 0.8790930,
        size.height * 0.4513967);
    path_8.cubicTo(
        size.width * 0.8781919,
        size.height * 0.4379467,
        size.width * 0.8777442,
        size.height * 0.4235533,
        size.width * 0.8777791,
        size.height * 0.4090533);
    path_8.cubicTo(
        size.width * 0.8777733,
        size.height * 0.3944200,
        size.width * 0.8782442,
        size.height * 0.3799233,
        size.width * 0.8791686,
        size.height * 0.3663733);
    path_8.cubicTo(
        size.width * 0.8799942,
        size.height * 0.3538733,
        size.width * 0.8812326,
        size.height * 0.3425167,
        size.width * 0.8828140,
        size.height * 0.3329877);
    path_8.cubicTo(
        size.width * 0.8843953,
        size.height * 0.3234593,
        size.width * 0.8862791,
        size.height * 0.3159610,
        size.width * 0.8883547,
        size.height * 0.3109480);
    path_8.cubicTo(
        size.width * 0.8905058,
        size.height * 0.3057123,
        size.width * 0.8928081,
        size.height * 0.3031493,
        size.width * 0.8951279,
        size.height * 0.3034143);
    path_8.cubicTo(
        size.width * 0.8971977,
        size.height * 0.3033810,
        size.width * 0.8992558,
        size.height * 0.3053687,
        size.width * 0.9012151,
        size.height * 0.3093000);
    path_8.cubicTo(
        size.width * 0.9028663,
        size.height * 0.3130940,
        size.width * 0.9044128,
        size.height * 0.3183543,
        size.width * 0.9058081,
        size.height * 0.3249053);
    path_8.cubicTo(
        size.width * 0.9070698,
        size.height * 0.3309103,
        size.width * 0.9081395,
        size.height * 0.3382500,
        size.width * 0.9089709,
        size.height * 0.3465633);
    path_8.cubicTo(
        size.width * 0.9095698,
        size.height * 0.3525067,
        size.width * 0.9100581,
        size.height * 0.3588233,
        size.width * 0.9104302,
        size.height * 0.3654000);
    path_8.cubicTo(
        size.width * 0.9105116,
        size.height * 0.3669867,
        size.width * 0.9104884,
        size.height * 0.3687033,
        size.width * 0.9103605,
        size.height * 0.3701800);
    path_8.cubicTo(
        size.width * 0.9102326,
        size.height * 0.3716567,
        size.width * 0.9100174,
        size.height * 0.3727800,
        size.width * 0.9097500,
        size.height * 0.3733033);
    path_8.lineTo(size.width * 0.9035930, size.height * 0.3854767);
    path_8.cubicTo(
        size.width * 0.9033372,
        size.height * 0.3859733,
        size.width * 0.9030640,
        size.height * 0.3858633,
        size.width * 0.9028198,
        size.height * 0.3851700);
    path_8.cubicTo(
        size.width * 0.9025756,
        size.height * 0.3844767,
        size.width * 0.9023837,
        size.height * 0.3832533,
        size.width * 0.9022849,
        size.height * 0.3817433);
    path_8.cubicTo(
        size.width * 0.9018314,
        size.height * 0.3751733,
        size.width * 0.9011686,
        size.height * 0.3692033,
        size.width * 0.9003256,
        size.height * 0.3641900);
    path_8.cubicTo(
        size.width * 0.8992093,
        size.height * 0.3572267,
        size.width * 0.8974942,
        size.height * 0.3535267,
        size.width * 0.8952616,
        size.height * 0.3534600);
    path_8.cubicTo(
        size.width * 0.8941395,
        size.height * 0.3533967,
        size.width * 0.8930233,
        size.height * 0.3546067,
        size.width * 0.8919709,
        size.height * 0.3570233);
    path_8.close();

    Paint paint_8_fill = Paint()..style = PaintingStyle.fill;
    paint_8_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_8, paint_8_fill);

    Path path_9 = Path();
    path_9.moveTo(size.width * 0.9357326, size.height * 0.3123550);
    path_9.cubicTo(
        size.width * 0.9377965,
        size.height * 0.3175117,
        size.width * 0.9396744,
        size.height * 0.3250277,
        size.width * 0.9412616,
        size.height * 0.3344867);
    path_9.cubicTo(
        size.width * 0.9428372,
        size.height * 0.3442000,
        size.width * 0.9440698,
        size.height * 0.3557167,
        size.width * 0.9448895,
        size.height * 0.3683533);
    path_9.cubicTo(
        size.width * 0.9457616,
        size.height * 0.3819467,
        size.width * 0.9461860,
        size.height * 0.3964333,
        size.width * 0.9461395,
        size.height * 0.4110000);
    path_9.cubicTo(
        size.width * 0.9461686,
        size.height * 0.4254800,
        size.width * 0.9457209,
        size.height * 0.4398533,
        size.width * 0.9448198,
        size.height * 0.4532767);
    path_9.cubicTo(
        size.width * 0.9439767,
        size.height * 0.4658600,
        size.width * 0.9427267,
        size.height * 0.4772967,
        size.width * 0.9411337,
        size.height * 0.4869100);
    path_9.cubicTo(
        size.width * 0.9395291,
        size.height * 0.4962767,
        size.width * 0.9376395,
        size.height * 0.5036767,
        size.width * 0.9355640,
        size.height * 0.5087033);
    path_9.cubicTo(
        size.width * 0.9333605,
        size.height * 0.5142600,
        size.width * 0.9309826,
        size.height * 0.5169633,
        size.width * 0.9285872,
        size.height * 0.5166400);
    path_9.cubicTo(
        size.width * 0.9261977,
        size.height * 0.5168967,
        size.width * 0.9238198,
        size.height * 0.5141367,
        size.width * 0.9216221,
        size.height * 0.5085333);
    path_9.cubicTo(
        size.width * 0.9195523,
        size.height * 0.5033767,
        size.width * 0.9176744,
        size.height * 0.4958600,
        size.width * 0.9160872,
        size.height * 0.4864033);
    path_9.cubicTo(
        size.width * 0.9145174,
        size.height * 0.4766400,
        size.width * 0.9132849,
        size.height * 0.4650600,
        size.width * 0.9124767,
        size.height * 0.4523667);
    path_9.cubicTo(
        size.width * 0.9115930,
        size.height * 0.4388933,
        size.width * 0.9111686,
        size.height * 0.4244967,
        size.width * 0.9112267,
        size.height * 0.4100233);
    path_9.cubicTo(
        size.width * 0.9111977,
        size.height * 0.3953967,
        size.width * 0.9116395,
        size.height * 0.3808767,
        size.width * 0.9125349,
        size.height * 0.3672767);
    path_9.cubicTo(
        size.width * 0.9133779,
        size.height * 0.3547000,
        size.width * 0.9146279,
        size.height * 0.3432633,
        size.width * 0.9162209,
        size.height * 0.3336433);
    path_9.cubicTo(
        size.width * 0.9178314,
        size.height * 0.3242810,
        size.width * 0.9197326,
        size.height * 0.3168810,
        size.width * 0.9218140,
        size.height * 0.3118503);
    path_9.cubicTo(
        size.width * 0.9263140,
        size.height * 0.3017083,
        size.width * 0.9312791,
        size.height * 0.3018640,
        size.width * 0.9357616,
        size.height * 0.3122877);
    path_9.lineTo(size.width * 0.9357326, size.height * 0.3123550);
    path_9.close();
    path_9.moveTo(size.width * 0.9318140, size.height * 0.4639700);
    path_9.cubicTo(
        size.width * 0.9328488,
        size.height * 0.4615933,
        size.width * 0.9337791,
        size.height * 0.4578600,
        size.width * 0.9345349,
        size.height * 0.4530400);
    path_9.cubicTo(
        size.width * 0.9353314,
        size.height * 0.4480000,
        size.width * 0.9359593,
        size.height * 0.4420867,
        size.width * 0.9363779,
        size.height * 0.4356200);
    path_9.cubicTo(
        size.width * 0.9368895,
        size.height * 0.4277800,
        size.width * 0.9371512,
        size.height * 0.4194233,
        size.width * 0.9371395,
        size.height * 0.4110000);
    path_9.cubicTo(
        size.width * 0.9371628,
        size.height * 0.4025200,
        size.width * 0.9369186,
        size.height * 0.3940933,
        size.width * 0.9364128,
        size.height * 0.3861800);
    path_9.cubicTo(
        size.width * 0.9360058,
        size.height * 0.3796767,
        size.width * 0.9353895,
        size.height * 0.3737133,
        size.width * 0.9346047,
        size.height * 0.3686233);
    path_9.cubicTo(
        size.width * 0.9338488,
        size.height * 0.3637667,
        size.width * 0.9329302,
        size.height * 0.3599867,
        size.width * 0.9319012,
        size.height * 0.3575567);
    path_9.cubicTo(
        size.width * 0.9298663,
        size.height * 0.3525500,
        size.width * 0.9275930,
        size.height * 0.3524167,
        size.width * 0.9255407,
        size.height * 0.3571867);
    path_9.cubicTo(
        size.width * 0.9245116,
        size.height * 0.3595633,
        size.width * 0.9235814,
        size.height * 0.3632867,
        size.width * 0.9228198,
        size.height * 0.3680833);
    path_9.cubicTo(
        size.width * 0.9220233,
        size.height * 0.3731300,
        size.width * 0.9214012,
        size.height * 0.3790567,
        size.width * 0.9209826,
        size.height * 0.3855400);
    path_9.cubicTo(
        size.width * 0.9204651,
        size.height * 0.3934300,
        size.width * 0.9202035,
        size.height * 0.4018467,
        size.width * 0.9202151,
        size.height * 0.4103267);
    path_9.cubicTo(
        size.width * 0.9201919,
        size.height * 0.4188000,
        size.width * 0.9204360,
        size.height * 0.4272267,
        size.width * 0.9209360,
        size.height * 0.4351467);
    path_9.cubicTo(
        size.width * 0.9213488,
        size.height * 0.4416467,
        size.width * 0.9219651,
        size.height * 0.4476067,
        size.width * 0.9227500,
        size.height * 0.4527033);
    path_9.cubicTo(
        size.width * 0.9235000,
        size.height * 0.4575500,
        size.width * 0.9244244,
        size.height * 0.4613300,
        size.width * 0.9254477,
        size.height * 0.4637700);
    path_9.cubicTo(
        size.width * 0.9264593,
        size.height * 0.4662167,
        size.width * 0.9275349,
        size.height * 0.4674967,
        size.width * 0.9286279,
        size.height * 0.4675367);
    path_9.cubicTo(
        size.width * 0.9297151,
        size.height * 0.4675500,
        size.width * 0.9307965,
        size.height * 0.4663400,
        size.width * 0.9318081,
        size.height * 0.4639700);
    path_9.lineTo(size.width * 0.9318140, size.height * 0.4639700);
    path_9.close();

    Paint paint_9_fill = Paint()..style = PaintingStyle.fill;
    paint_9_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_9, paint_9_fill);

    Path path_10 = Path();
    path_10.moveTo(size.width * 0.9502616, size.height * 0.3112503);
    path_10.lineTo(size.width * 0.9567500, size.height * 0.3114523);
    path_10.cubicTo(
        size.width * 0.9568895,
        size.height * 0.3114477,
        size.width * 0.9570291,
        size.height * 0.3116093,
        size.width * 0.9571570,
        size.height * 0.3119270);
    path_10.cubicTo(
        size.width * 0.9572849,
        size.height * 0.3122450,
        size.width * 0.9574012,
        size.height * 0.3127130,
        size.width * 0.9575000,
        size.height * 0.3133040);
    path_10.cubicTo(
        size.width * 0.9575988,
        size.height * 0.3138953,
        size.width * 0.9576802,
        size.height * 0.3145977,
        size.width * 0.9577326,
        size.height * 0.3153710);
    path_10.cubicTo(
        size.width * 0.9577849,
        size.height * 0.3161443,
        size.width * 0.9578081,
        size.height * 0.3169730,
        size.width * 0.9578081,
        size.height * 0.3178090);
    path_10.lineTo(size.width * 0.9578081, size.height * 0.3182797);
    path_10.cubicTo(
        size.width * 0.9578081,
        size.height * 0.3194817,
        size.width * 0.9578663,
        size.height * 0.3206570,
        size.width * 0.9579767,
        size.height * 0.3216667);
    path_10.cubicTo(
        size.width * 0.9580872,
        size.height * 0.3226763,
        size.width * 0.9582384,
        size.height * 0.3234783,
        size.width * 0.9584244,
        size.height * 0.3239773);
    path_10.cubicTo(
        size.width * 0.9586047,
        size.height * 0.3244763,
        size.width * 0.9588081,
        size.height * 0.3246513,
        size.width * 0.9590058,
        size.height * 0.3244820);
    path_10.cubicTo(
        size.width * 0.9592035,
        size.height * 0.3243127,
        size.width * 0.9593895,
        size.height * 0.3238060,
        size.width * 0.9595407,
        size.height * 0.3230220);
    path_10.cubicTo(
        size.width * 0.9602907,
        size.height * 0.3192570,
        size.width * 0.9611163,
        size.height * 0.3160707,
        size.width * 0.9619942,
        size.height * 0.3135373);
    path_10.cubicTo(
        size.width * 0.9628895,
        size.height * 0.3109980,
        size.width * 0.9638256,
        size.height * 0.3091123,
        size.width * 0.9647965,
        size.height * 0.3079210);
    path_10.cubicTo(
        size.width * 0.9657151,
        size.height * 0.3067067,
        size.width * 0.9666512,
        size.height * 0.3060530,
        size.width * 0.9675930,
        size.height * 0.3059700);
    path_10.cubicTo(
        size.width * 0.9696919,
        size.height * 0.3057223,
        size.width * 0.9717616,
        size.height * 0.3087347,
        size.width * 0.9736105,
        size.height * 0.3147147);
    path_10.cubicTo(
        size.width * 0.9748314,
        size.height * 0.3188220,
        size.width * 0.9758837,
        size.height * 0.3245780,
        size.width * 0.9766744,
        size.height * 0.3315310);
    path_10.cubicTo(
        size.width * 0.9767674,
        size.height * 0.3323480,
        size.width * 0.9768895,
        size.height * 0.3330257,
        size.width * 0.9770291,
        size.height * 0.3335100);
    path_10.cubicTo(
        size.width * 0.9771744,
        size.height * 0.3339967,
        size.width * 0.9773314,
        size.height * 0.3342733,
        size.width * 0.9774942,
        size.height * 0.3343233);
    path_10.cubicTo(
        size.width * 0.9776570,
        size.height * 0.3343700,
        size.width * 0.9778198,
        size.height * 0.3341900,
        size.width * 0.9779709,
        size.height * 0.3337933);
    path_10.cubicTo(
        size.width * 0.9781221,
        size.height * 0.3333967,
        size.width * 0.9782500,
        size.height * 0.3327940,
        size.width * 0.9783547,
        size.height * 0.3320353);
    path_10.cubicTo(
        size.width * 0.9793430,
        size.height * 0.3244067,
        size.width * 0.9806163,
        size.height * 0.3182783,
        size.width * 0.9820698,
        size.height * 0.3141430);
    path_10.cubicTo(
        size.width * 0.9839244,
        size.height * 0.3089560,
        size.width * 0.9859535,
        size.height * 0.3064450,
        size.width * 0.9879942,
        size.height * 0.3068110);
    path_10.cubicTo(
        size.width * 0.9895174,
        size.height * 0.3068710,
        size.width * 0.9910291,
        size.height * 0.3084273,
        size.width * 0.9924709,
        size.height * 0.3114187);
    path_10.cubicTo(
        size.width * 0.9938895,
        size.height * 0.3142863,
        size.width * 0.9951977,
        size.height * 0.3188637,
        size.width * 0.9963140,
        size.height * 0.3248717);
    path_10.cubicTo(
        size.width * 0.9975058,
        size.height * 0.3315560,
        size.width * 0.9984244,
        size.height * 0.3397933,
        size.width * 0.9990000,
        size.height * 0.3489533);
    path_10.cubicTo(
        size.width * 0.9997209,
        size.height * 0.3598267,
        size.width * 1.000058,
        size.height * 0.3714667,
        size.width * 0.9999942,
        size.height * 0.3831567);
    path_10.lineTo(size.width * 0.9998837, size.height * 0.5065900);
    path_10.cubicTo(
        size.width * 0.9998837,
        size.height * 0.5082633,
        size.width * 0.9997733,
        size.height * 0.5098633,
        size.width * 0.9995698,
        size.height * 0.5110400);
    path_10.cubicTo(
        size.width * 0.9993721,
        size.height * 0.5122167,
        size.width * 0.9991047,
        size.height * 0.5128800,
        size.width * 0.9988256,
        size.height * 0.5128767);
    path_10.lineTo(size.width * 0.9922035, size.height * 0.5126767);
    path_10.cubicTo(
        size.width * 0.9920640,
        size.height * 0.5126733,
        size.width * 0.9919244,
        size.height * 0.5125033,
        size.width * 0.9918023,
        size.height * 0.5121833);
    path_10.cubicTo(
        size.width * 0.9916744,
        size.height * 0.5118600,
        size.width * 0.9915581,
        size.height * 0.5113900,
        size.width * 0.9914593,
        size.height * 0.5108000);
    path_10.cubicTo(
        size.width * 0.9913605,
        size.height * 0.5102100,
        size.width * 0.9912849,
        size.height * 0.5095100,
        size.width * 0.9912326,
        size.height * 0.5087433);
    path_10.cubicTo(
        size.width * 0.9911802,
        size.height * 0.5079733,
        size.width * 0.9911570,
        size.height * 0.5071500,
        size.width * 0.9911570,
        size.height * 0.5063200);
    path_10.lineTo(size.width * 0.9912500, size.height * 0.3938533);
    path_10.cubicTo(
        size.width * 0.9913198,
        size.height * 0.3842433,
        size.width * 0.9908488,
        size.height * 0.3747733,
        size.width * 0.9899186,
        size.height * 0.3669467);
    path_10.cubicTo(
        size.width * 0.9889767,
        size.height * 0.3595800,
        size.width * 0.9874884,
        size.height * 0.3558800,
        size.width * 0.9853895,
        size.height * 0.3558133);
    path_10.cubicTo(
        size.width * 0.9845349,
        size.height * 0.3555400,
        size.width * 0.9836802,
        size.height * 0.3564467,
        size.width * 0.9828895,
        size.height * 0.3584700);
    path_10.cubicTo(
        size.width * 0.9821047,
        size.height * 0.3604933,
        size.width * 0.9814070,
        size.height * 0.3635767,
        size.width * 0.9808488,
        size.height * 0.3674833);
    path_10.cubicTo(
        size.width * 0.9797500,
        size.height * 0.3751533,
        size.width * 0.9791628,
        size.height * 0.3849867,
        size.width * 0.9791977,
        size.height * 0.3950967);
    path_10.lineTo(size.width * 0.9791047, size.height * 0.5060833);
    path_10.cubicTo(
        size.width * 0.9791047,
        size.height * 0.5069133,
        size.width * 0.9790756,
        size.height * 0.5077367,
        size.width * 0.9790233,
        size.height * 0.5085000);
    path_10.cubicTo(
        size.width * 0.9789709,
        size.height * 0.5092667,
        size.width * 0.9788895,
        size.height * 0.5099600,
        size.width * 0.9787907,
        size.height * 0.5105467);
    path_10.cubicTo(
        size.width * 0.9786977,
        size.height * 0.5111300,
        size.width * 0.9785814,
        size.height * 0.5115933,
        size.width * 0.9784535,
        size.height * 0.5119067);
    path_10.cubicTo(
        size.width * 0.9783256,
        size.height * 0.5122200,
        size.width * 0.9781860,
        size.height * 0.5123767,
        size.width * 0.9780465,
        size.height * 0.5123733);
    path_10.lineTo(size.width * 0.9712035, size.height * 0.5119700);
    path_10.cubicTo(
        size.width * 0.9709244,
        size.height * 0.5119600,
        size.width * 0.9706570,
        size.height * 0.5112900,
        size.width * 0.9704651,
        size.height * 0.5101067);
    path_10.cubicTo(
        size.width * 0.9702674,
        size.height * 0.5089200,
        size.width * 0.9701570,
        size.height * 0.5073200,
        size.width * 0.9701570,
        size.height * 0.5056467);
    path_10.lineTo(size.width * 0.9702558, size.height * 0.3931800);
    path_10.cubicTo(
        size.width * 0.9703198,
        size.height * 0.3833833,
        size.width * 0.9698256,
        size.height * 0.3737500,
        size.width * 0.9688605,
        size.height * 0.3658700);
    path_10.cubicTo(
        size.width * 0.9679186,
        size.height * 0.3589400,
        size.width * 0.9664302,
        size.height * 0.3552433,
        size.width * 0.9643779,
        size.height * 0.3551733);
    path_10.cubicTo(
        size.width * 0.9623314,
        size.height * 0.3551067,
        size.width * 0.9608605,
        size.height * 0.3587400,
        size.width * 0.9597674,
        size.height * 0.3664067);
    path_10.cubicTo(
        size.width * 0.9586686,
        size.height * 0.3742300,
        size.width * 0.9580872,
        size.height * 0.3841933,
        size.width * 0.9581221,
        size.height * 0.3944233);
    path_10.lineTo(size.width * 0.9580291, size.height * 0.5054133);
    path_10.cubicTo(
        size.width * 0.9580291,
        size.height * 0.5062433,
        size.width * 0.9580000,
        size.height * 0.5070633,
        size.width * 0.9579477,
        size.height * 0.5078300);
    path_10.cubicTo(
        size.width * 0.9578895,
        size.height * 0.5085933,
        size.width * 0.9578140,
        size.height * 0.5092900,
        size.width * 0.9577151,
        size.height * 0.5098733);
    path_10.cubicTo(
        size.width * 0.9576163,
        size.height * 0.5104567,
        size.width * 0.9575000,
        size.height * 0.5109200,
        size.width * 0.9573721,
        size.height * 0.5112333);
    path_10.cubicTo(
        size.width * 0.9572442,
        size.height * 0.5115467,
        size.width * 0.9571105,
        size.height * 0.5117067,
        size.width * 0.9569709,
        size.height * 0.5117000);
    path_10.lineTo(size.width * 0.9500698, size.height * 0.5115000);
    path_10.cubicTo(
        size.width * 0.9499302,
        size.height * 0.5114933,
        size.width * 0.9497965,
        size.height * 0.5113267,
        size.width * 0.9496686,
        size.height * 0.5110067);
    path_10.cubicTo(
        size.width * 0.9495407,
        size.height * 0.5106833,
        size.width * 0.9494244,
        size.height * 0.5102133,
        size.width * 0.9493256,
        size.height * 0.5096233);
    path_10.cubicTo(
        size.width * 0.9492326,
        size.height * 0.5090333,
        size.width * 0.9491512,
        size.height * 0.5083333,
        size.width * 0.9490988,
        size.height * 0.5075667);
    path_10.cubicTo(
        size.width * 0.9490465,
        size.height * 0.5067967,
        size.width * 0.9490233,
        size.height * 0.5059733,
        size.width * 0.9490233,
        size.height * 0.5051433);
    path_10.lineTo(size.width * 0.9491860, size.height * 0.3176743);
    path_10.cubicTo(
        size.width * 0.9491802,
        size.height * 0.3168227,
        size.width * 0.9492093,
        size.height * 0.3159763,
        size.width * 0.9492616,
        size.height * 0.3151863);
    path_10.cubicTo(
        size.width * 0.9493140,
        size.height * 0.3143963,
        size.width * 0.9493953,
        size.height * 0.3136793,
        size.width * 0.9494942,
        size.height * 0.3130787);
    path_10.cubicTo(
        size.width * 0.9495930,
        size.height * 0.3124780,
        size.width * 0.9497151,
        size.height * 0.3120063,
        size.width * 0.9498430,
        size.height * 0.3116920);
    path_10.cubicTo(
        size.width * 0.9499767,
        size.height * 0.3113777,
        size.width * 0.9501163,
        size.height * 0.3112273,
        size.width * 0.9502616,
        size.height * 0.3112503);
    path_10.close();

    Paint paint_10_fill = Paint()..style = PaintingStyle.fill;
    paint_10_fill.color = Theme.of(context)
        .iconTheme
        .color!; //Color(0xff191B20).withOpacity(1.0);
    canvas.drawPath(path_10, paint_10_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
