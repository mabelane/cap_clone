import 'package:flutter/material.dart';

import 'colours.dart';

Widget debitOrderIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/debitorders.png",
));
Widget licenceIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/license.png",
));
Widget payBeneficiaryIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/payben.png",
));
Widget payBillsIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/paybills.png",
));
Widget payMeIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/payme.png",
));
Widget payShapIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/payshap.png",
));
Widget recurringIcon = const ImageIcon(
  AssetImage(
    "lib/icons/transact/recurring.png",
  ),
  size: 30,
);

Widget sarsIcon = const ImageIcon(
  AssetImage(
    "lib/icons/transact/sars.png",
  ),
  size: 30,
);

Widget scanToPayIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/scan_to_pay.png",
));
Widget sendCashIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/sendcash.png",
));
Widget vouchersIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/vouchers.png",
));
Widget lottoIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/lotto.png",
));
Widget buyPrepaidIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/mobile.png",
));
Widget electricityIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/lightbulb.png",
));
Widget capitecPayIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/cappay.png",
));
Widget wifiIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/wifi.png",
));

Widget transferIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/transfer.png",
));
Widget trackIcon = const ImageIcon(AssetImage(
  "lib/icons/transact/track.png",
));

Widget transactIcon = const ImageIcon(
  AssetImage(
    "lib/icons/navbar_icons/transact.png",
  ),
);

Widget whiteTransactIcon = const ImageIcon(
  AssetImage(
    "lib/icons/navbar_icons/transact.png",
  ),
  color: white,
);
Widget transactDarkIcon = const ImageIcon(AssetImage(
  "lib/icons/navbar_icons/transactDark.png",
));
Widget virtualCardIcon = const ImageIcon(AssetImage(
  "lib/icons/navbar_icons/virtual_card.png",
));
Widget messagesIcon = const ImageIcon(
  AssetImage(
    "lib/icons/navbar_icons/messages.png",
  ),
);
Widget exploreIcon = const ImageIcon(AssetImage(
  "lib/icons/navbar_icons/explore.png",
));
Widget homeIcon = const ImageIcon(AssetImage(
  "lib/icons/navbar_icons/home.png",
));

Widget creditIcon = const ImageIcon(
  AssetImage(
    "lib/icons/explore/credit.png",
  ),
  color: white,
);
Widget globalOne = Image.asset(
  "lib/icons/explore/globalone.png",
);

Widget whiteGlobalOne = Image.asset(
  "lib/icons/explore/globalone.png",
  color: white,
);
Icon trailingIcon = const Icon(
  Icons.arrow_forward_ios_outlined,
  size: 15,
);
Widget insureIcon = const ImageIcon(
  AssetImage(
    "lib/icons/explore/insure.png",
  ),
  color: white,
);
Widget livebetterIcon = Image.asset(
  "lib/images/livebetter.png",
);
Widget hello = Image.asset(
  "lib/images/hello.PNG",
);
Widget redHello = Image.asset(
  "lib/images/redhello.png",
);

Widget card = Image.asset(
  "lib/images/card.png",
);

Widget cardBack = Image.asset(
  "lib/images/cardback.png",
);
Widget activate = Image.asset(
  "lib/images/activate.png",
);
Widget openacc = Image.asset(
  "lib/images/openacc.png",
);
Widget savingsIcon = const ImageIcon(
  AssetImage(
    "lib/icons/explore/savings.png",
  ),
  color: white,
  size: 80,
);
Container leadContainer(Color color, Widget child) => Container(
    height: 78,
    width: 44,
    padding: const EdgeInsets.all(7.5),
    color: color,
    child: child);

Widget savingsConatiner = leadContainer(primaryColour, whiteTransactIcon);
Widget saveConatiner = leadContainer(savingsColour, savingsIcon);
Widget insureConatiner = leadContainer(insureColour, savingsIcon);
Widget creditConatiner = leadContainer(creditRed, savingsIcon);
