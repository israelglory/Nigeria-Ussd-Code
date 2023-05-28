import '../utils/exports.dart';

List<NetworkUssd> generalCode = [
  NetworkUssd(
    code: '*565*0#',
    description: 'Check BVN Number',
    networkName: "General",
  ),
  NetworkUssd(
    code: '112',
    description: 'Nigeria Emergency Number',
    networkName: "General",
  ),
  NetworkUssd(
    code: '*6820#',
    description: 'Report Domestic Violence',
    networkName: "General",
  ),
  NetworkUssd(
    code: '*242#',
    description: 'Paga Service Code',
    networkName: "General",
  ),
  NetworkUssd(
    code: '*288#',
    description: 'DSTV Self Service',
    networkName: "General",
  ),
];

List<BankUssd> bankSwiftCode = [
  BankUssd(code: 'ABNGNGLA', description: 'Access Bank Plc - Lagos'),
  BankUssd(code: 'DBLNNGLA', description: 'Diamond Bank Swift Code'),
  BankUssd(code: 'ECOCNGLA', description: 'Ecobank Nigeria Limited - Lagos'),
  BankUssd(code: 'FCMBNGLA', description: 'FCMB Swift Code - Lagos'),
  BankUssd(code: 'FIDTNGLA', description: 'Fidelity Bank Plc - Lagos'),
  BankUssd(code: 'FBNINGLA', description: 'First Bank of Nigeria  - Lagos'),
  BankUssd(code: 'GTBINGLA', description: 'GTB Swift Code - Lagos'),
  BankUssd(code: 'HBCLNGLA', description: 'Heritage Bank - Lagos'),
  BankUssd(code: 'JAIZNGLA', description: 'JAIZ Bank Plc - Abuja'),
  BankUssd(code: 'PLNINGLA', description: 'Keystone Bank Limited - Lagos'),
  BankUssd(code: 'PRDTNGLA', description: 'Sky Bank Plc - Lagos'),
  BankUssd(code: 'SBICNGLX', description: 'Stanbic IBTC Bank Plc - Lagos'),
  BankUssd(code: 'NAMENGLA', description: 'Sterling Bank Plc - Lagos'),
  BankUssd(code: 'UNAFNGLA', description: 'UBA Bank Plc - Lagos'),
  BankUssd(code: 'ICITNGLA', description: 'Unity Bank Plc - Abuja'),
  BankUssd(code: 'UBNINGLA', description: 'Union Bank of Nigeria Plc - Lagos'),
  BankUssd(code: 'WEMANGLA', description: 'Wema Bank Plc - Lagos'),
  BankUssd(code: 'ZEIBNGLA', description: 'Zenith Bank Plc - Lagos'),
];
