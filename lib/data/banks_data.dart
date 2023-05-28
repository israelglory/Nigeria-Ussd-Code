import '../utils/exports.dart';

List<BankUssd> firstBank = [
  BankUssd(
    code: '*894#',
    description: 'Activate First Bank code',
  ),
  BankUssd(
    code: '*894*Amount*Account Number#',
    description: 'Transfer Money',
  ),
  BankUssd(
    code: '*894*Amount*Account Number#',
    description: 'Transfer Code to another Bank Account',
  ),
  BankUssd(
    code: '*894*0#',
    description: 'Account Opening',
  ),
  BankUssd(
    code: '*894*00#',
    description: 'Check Balance',
  ),
  BankUssd(
    code: '*894*Amount#',
    description: 'Buy Airtime for Self',
  ),
  BankUssd(
    code: '*894*Amount*Phone Number#',
    description: 'Buy Airtime for Others',
  ),
  BankUssd(
    code: '*894*911#',
    description: 'Block Account',
  ),
  BankUssd(
    code: '*565*0#',
    description: 'Check BVN',
  ),
  BankUssd(
    code: '*894*Account Number#',
    description: 'Check Statement of Account',
  ),
  BankUssd(
    code: '*894#',
    description: 'First Bank Loan',
  ),
  BankUssd(
    code: '*894*2#',
    description: 'Buy Data',
  ),
];

List<BankUssd> fcmbBank = [
  BankUssd(
    code: '*329#',
    description: 'General Ussd',
  ),
  BankUssd(
    code: '*329*Amount*Account number#',
    description: 'To transfer funds',
  ),
  BankUssd(
    code: '*329*00#',
    description: 'Account balance',
  ),
  BankUssd(
    code: '*329*Amount#',
    description: 'Mobile Top-up for self',
  ),
  BankUssd(
    code: '*329*Amount*Mobile number#',
    description: 'Mobile Top-up for others',
  ),
  BankUssd(
    code: '*329*0#',
    description: 'Reset/create pin',
  ),
  BankUssd(
    code: '*329*1*Mobile number#',
    description: 'Buy data',
  ),
  BankUssd(
    code: '*329#',
    description: 'Get bank statement',
  ),
  BankUssd(
    code: '*329#',
    description: 'Get bank statement',
  ),
  BankUssd(
    code: '*329*0#',
    description: 'To increase daily transaction limit',
  ),
  BankUssd(
    code: '*329*911#',
    description: 'To block USSD profile or Bank account',
  ),
];

List<BankUssd> gtBank = [
  BankUssd(code: '*737#', description: 'General USSD Code'),
  BankUssd(
    code: "*737*1*Amount* Account Number#",
    description: 'Transfer to Gt Bank Account',
  ),
  BankUssd(
    code: "*737*2*Amount*Account Number#",
    description: 'Transfer to Other Banks	',
  ),
  BankUssd(
    code: '*737*3*Amount#',
    description: 'Careless Withdrawal',
  ),
  BankUssd(
    code: '*737*6*1#',
    description: 'Retrieve BVN',
  ),
  BankUssd(
    code: '*737*51*73#',
    description: 'Hotlist ATM Card',
  ),
  BankUssd(
    code: '*737*0#',
    description: 'Account Opening',
  ),
  BankUssd(
    code: '*737*7#',
    description: 'Generate OTP',
  ),
  BankUssd(
    code: '*737*6*2#',
    description: 'Loan Balance',
  ),
  BankUssd(
    code: '*737*6*3#',
    description: 'Card Status',
  ),
  BankUssd(
    code: '737*8*1',
    description: 'Airtime Advance',
  ),
];

List<BankUssd> zenith = [
  BankUssd(
    code: "*966#",
    description: 'General USSD Service',
  ),
  BankUssd(
    code: "*966*0#",
    description: 'Activate USSD banking',
  ),
  BankUssd(
    code: "*966*0#",
    description: 'Check account balance',
  ),
  BankUssd(
    code: "*966*amount#",
    description: 'Airtime for self',
  ),
  BankUssd(
    code: "*966*911#",
    description: 'Block all debit transactions on lost phone',
  ),
  BankUssd(
    code: "*966*0#",
    description: 'Check Zenith bank account number',
  ),
  BankUssd(
    code: "*966*60#",
    description: 'Block Zenith ATM Debit Card',
  ),
  BankUssd(
    code: "*966*20*0#",
    description: 'Deactivate Eazy Banking Profile',
  ),
  BankUssd(
    code: "*966*11#",
    description: 'Payday Loan',
  ),
  BankUssd(
    code: "*966*60#",
    description: 'Increase daily transaction limit',
  ),
];

List<BankUssd> accessBank = [
  BankUssd(
    code: "*901#",
    description: 'General USSD Service',
  ),
  BankUssd(
    code: "*901*0#",
    description: 'Account Opening',
  ),
  BankUssd(
    code: "*901*11#",
    description: 'Payday Loan',
  ),
  BankUssd(
    code: "*901*8#",
    description: 'Data Purchase',
  ),
  BankUssd(
    code: "*901*5#",
    description: 'Transfer code for Balance Enquiry',
  ),
  BankUssd(
    code: "*901*3#",
    description: 'Bill Payment',
  ),
  BankUssd(
    code: "*901*4*1#",
    description: 'Generate OTP',
  ),
];

List<BankUssd> ecoBank = [
  BankUssd(code: "*326#", description: "General Ussd Service"),
  BankUssd(code: "*326*0#", description: "Check balance"),
  BankUssd(code: "*326#", description: "To open an Xpress save account"),
  BankUssd(code: "*326#", description: "For Xpress loan"),
  BankUssd(code: "*326#", description: "To reset PIN")
];

List<BankUssd> ubaBank = [
  BankUssd(code: '*919*00#', description: 'Check balance'),
  BankUssd(code: '*919*14#', description: 'Buy data for self'),
  BankUssd(code: "*919*32#", description: "Uba prepaid card"),
  BankUssd(code: "*919*5#", description: "Pay bills"),
  BankUssd(code: "*919*10#", description: "Block debit card"),
  BankUssd(code: "*919*12#", description: "Flight payment"),
  BankUssd(code: "*919*20#", description: "Open new uba account"),
  BankUssd(code: "*919*9#", description: "Freeze online transactions"),
  BankUssd(code: "*919*18#", description: "Retrieve BVN"),
  BankUssd(code: "*919*21#", description: "Get Bank statements"),
  BankUssd(code: "*919*8#", description: "Generate OTP"),
  BankUssd(code: "*919*23#", description: "Smile data top up"),
  BankUssd(code: "*919*0#", description: "Self enrollment registration"),
  BankUssd(code: "*919*26*1#", description: "Baba ijebu wallet funding"),
  BankUssd(code: "*919*26*2#", description: "Lottomania wallet funding"),
  BankUssd(code: "*919*27*2#", description: "Oak pensions"),
  BankUssd(code: "*919*27*1#", description: "ARM pensions")
];

List<BankUssd> unionBank = [
  BankUssd(code: '*826*4#', description: "Check Balance"),
  BankUssd(code: "*826*9#", description: "Buy Data"),
  BankUssd(code: "*565*0#", description: "Retrieve BVN"),
  BankUssd(code: "*826*41#", description: "Request Loan"),
  BankUssd(code: "*826*21#", description: "Request ATM card"),
  BankUssd(code: "*826*21#", description: "Hotlist ATM Card"),
  BankUssd(code: "*826#", description: "Account Opening"),
  BankUssd(code: "*826*8#", description: "Increase Account Limit"),
  BankUssd(code: "*826*19#", description: "Locate a Union Bank Branch"),
  BankUssd(code: "*826*21#", description: "Unblock ATM Card")
];

List<BankUssd> fidelityBank = [
  BankUssd(code: "*770#", description: "General USSD Service"),
  BankUssd(code: "*770*0#", description: "Check balance"),
  BankUssd(code: "*770*911#", description: "Block Card"),
  BankUssd(code: "*770*00#", description: "Change PIN"),
  BankUssd(code: "*565*0#", description: "Checking BVN"),
  BankUssd(code: "*770#", description: "Pay bills"),
  BankUssd(code: "*770*2#", description: "Choose SMS and Email Alert"),
  BankUssd(code: "*770*02#", description: "Update BVN")
];

List<BankUssd> polarisBank = [
  BankUssd(code: "*833#", description: "Smart USSD code"),
  BankUssd(code: "*833*1#", description: "Open an account"),
  BankUssd(code: "*833*2#", description: "Pay bills"),
  BankUssd(code: "*833*3#", description: "Transfer Funds"),
  BankUssd(code: "*833*5#", description: "Update BVN"),
  BankUssd(code: "*833*6#", description: "Check balance"),
  BankUssd(code: "*833*4#", description: "Hotlist card"),
  BankUssd(code: "*833*7#", description: "Pay with MasterPass"),
];

List<BankUssd> sterlingBank = [
  BankUssd(code: "*822*6#", description: "Check Balance"),
  BankUssd(code: "*822*2#", description: "Pay Bills"),
  BankUssd(code: "*822*42#", description: "Cardless Withdrawal"),
  BankUssd(code: "*822*7#", description: "Open Account"),
  BankUssd(code: "*822*8#", description: "Check Account Number"),
  BankUssd(code: "*822*19#", description: "Card Management"),
  BankUssd(code: "*822*15#", description: "LCC Toll Payment"),
  BankUssd(code: "*565*0#", description: "Retrieve BVN")
];

List<BankUssd> wemaBank = [
  BankUssd(code: "*945*0#", description: "Balance Enquiry"),
  BankUssd(code: "*945*00#", description: "Change USSD pin "),
  BankUssd(code: "*945*1#", description: "Open an account"),
  BankUssd(
      code: "*945*01#",
      description: "Register account with USSD wema bank transfer code"),
  BankUssd(code: "*945*5#", description: "Account reactivation"),
  BankUssd(code: "*945*000#", description: "Check your account"),
  BankUssd(code: "*945*4#", description: "Manage your BVN"),
  BankUssd(code: "*945*911#", description: "Account restrictions")
];

List<BankUssd> stanbicBank = [
  BankUssd(code: "*909*0#", description: "Account Opening"),
  BankUssd(code: "*909*1*1#", description: "Check Balance"),
  BankUssd(code: "*565*0#", description: "Retrieve BVN"),
  BankUssd(code: "*909*Amount#", description: "Airtime Top Up Self"),
  BankUssd(
      code: "*909*22*Amount*Account Number#",
      description: "Transfer to Other Banks"),
  BankUssd(
      code: "*909*11*Amount*Account Number#",
      description: "Transfer to Stanbic Account"),
  BankUssd(code: "*909#", description: "Pay Cable Bills")
];

List<BankUssd> otherBank = [
  BankUssd(code: "*426#", description: "Diamond Bank USSD Code"),
  BankUssd(code: "*322#", description: "Heritage Bank USSD Code"),
  BankUssd(code: "*7111#", description: "KeyStone Bank USSD Code"),
  BankUssd(code: "*7799#", description: "Unity Bank USSD Code"),
];

List<BankUssd> getbank(String bankName) {
  if (bankName == 'First Bank') {
    return firstBank;
  }
  if (bankName == 'FCMB') {
    return fcmbBank;
  }
  if (bankName == 'GTB') {
    return gtBank;
  }
  if (bankName == 'Zenith') {
    return zenith;
  }
  if (bankName == 'Access Bank') {
    return accessBank;
  }
  if (bankName == 'Eco Bank') {
    return ecoBank;
  }
  if (bankName == 'UBA Bank') {
    return ubaBank;
  }
  if (bankName == 'Union Bank') {
    return unionBank;
  }
  if (bankName == 'Fidelity Bank') {
    return fidelityBank;
  }
  if (bankName == 'Polaris') {
    return polarisBank;
  }
  if (bankName == 'Sterling') {
    return sterlingBank;
  }
  if (bankName == 'Wema') {
    return wemaBank;
  }
  if (bankName == 'Stanbic') {
    return stanbicBank;
  }
  if (bankName == 'Others') {
    return otherBank;
  }
  return [];
}

String getBankLogo(String bankName) {
  if (bankName == 'First Bank') {
    return AppAssets.firstBank;
  }
  if (bankName == 'FCMB') {
    return AppAssets.fcmbBank;
  }
  if (bankName == 'GTB') {
    return AppAssets.gtBank;
  }
  if (bankName == 'Zenith') {
    return AppAssets.zenithBank;
  }
  if (bankName == 'Access Bank') {
    return AppAssets.accessBank;
  }
  if (bankName == 'Eco Bank') {
    return AppAssets.ecoBank;
  }
  if (bankName == 'UBA Bank') {
    return AppAssets.ubaBank;
  }
  if (bankName == 'Union Bank') {
    return AppAssets.unionBank;
  }
  if (bankName == 'Fidelity Bank') {
    return AppAssets.fidelityBank;
  }
  if (bankName == 'Polaris') {
    return AppAssets.polarisBank;
  }
  if (bankName == 'Sterling') {
    return AppAssets.sterlingBank;
  }
  if (bankName == 'Wema') {
    return AppAssets.wemaBank;
  }
  if (bankName == 'Stanbic') {
    return AppAssets.stanbicBank;
  }
  if (bankName == 'Others') {
    return AppAssets.bank;
  }
  return '';
}
