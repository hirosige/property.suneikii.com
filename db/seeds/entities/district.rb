class DistrictSeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "District"
    District.destroy_all
  end

  def exec
    to_string

    District.create(
        original_id: '1001',
        name_ja: 'Phra Nakhon',
        name_th: 'เขตพระนคร',
        name_en: 'Phra Nakhon',
        url_safe: 'phra-nakhon',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1002',
        name_ja: 'Dusit',
        name_th: 'เขตดุสิต',
        name_en: 'Dusit',
        url_safe: 'dusit',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1003',
        name_ja: 'Nong Chok',
        name_th: 'เขตหนองจอก',
        name_en: 'Nong Chok',
        url_safe: 'nong-chok',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1004',
        name_ja: 'Bang Rak',
        name_th: 'เขตบางรัก',
        name_en: 'Bang Rak',
        url_safe: 'bang-rak',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1005',
        name_ja: 'Bang Khen',
        name_th: 'เขตบางเขน',
        name_en: 'Bang Khen',
        url_safe: 'bang-khen',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1006',
        name_ja: 'Bang Kapi',
        name_th: 'เขตบางกะปิ',
        name_en: 'Bang Kapi',
        url_safe: 'bang-kapi',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1007',
        name_ja: 'Pathum Wan',
        name_th: 'เขตปทุมวัน',
        name_en: 'Pathum Wan',
        url_safe: 'pathum-wan',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1008',
        name_ja: 'Pom Prap Sattruphai',
        name_th: 'เขตป้อมปราบศัตรูพ่าย',
        name_en: 'Pom Prap Sattruphai',
        url_safe: 'pom-prap-sattruphai',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1009',
        name_ja: 'Phra Khanong',
        name_th: 'เขตพระโขนง',
        name_en: 'Phra Khanong',
        url_safe: 'phra-khanong',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1010',
        name_ja: 'Min Buri',
        name_th: 'เขตมีนบุรี',
        name_en: 'Min Buri',
        url_safe: 'min-buri',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1011',
        name_ja: 'Lat Krabang',
        name_th: 'เขตลาดกระบัง',
        name_en: 'Lat Krabang',
        url_safe: 'lat-krabang',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1012',
        name_ja: 'Yannawa',
        name_th: 'เขตยานนาวา',
        name_en: 'Yannawa',
        url_safe: 'yannawa',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1013',
        name_ja: 'Samphanthawong',
        name_th: 'เขตสัมพันธวงศ์',
        name_en: 'Samphanthawong',
        url_safe: 'samphanthawong',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1014',
        name_ja: 'Phaya Thai',
        name_th: 'เขตพญาไท',
        name_en: 'Phaya Thai',
        url_safe: 'phaya-thai',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1015',
        name_ja: 'Thon Buri',
        name_th: 'เขตธนบุรี',
        name_en: 'Thon Buri',
        url_safe: 'thon-buri',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1016',
        name_ja: 'Bangkok Yai',
        name_th: 'เขตบางกอกใหญ่',
        name_en: 'Bangkok Yai',
        url_safe: 'bangkok-yai',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1017',
        name_ja: 'Huai Khwang',
        name_th: 'เขตห้วยขวาง',
        name_en: 'Huai Khwang',
        url_safe: 'huai-khwang',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1018',
        name_ja: 'Khlong San',
        name_th: 'เขตคลองสาน',
        name_en: 'Khlong San',
        url_safe: 'khlong-san',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1019',
        name_ja: 'Taling Chan',
        name_th: 'เขตตลิ่งชัน',
        name_en: 'Taling Chan',
        url_safe: 'taling-chan',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1020',
        name_ja: 'Bangkok Noi',
        name_th: 'เขตบางกอกน้อย',
        name_en: 'Bangkok Noi',
        url_safe: 'bangkok-noi',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1021',
        name_ja: 'Bang Khun Thian',
        name_th: 'เขตบางขุนเทียน',
        name_en: 'Bang Khun Thian',
        url_safe: 'bang-khun-thian',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1022',
        name_ja: 'Phasi Charoen',
        name_th: 'เขตภาษีเจริญ',
        name_en: 'Phasi Charoen',
        url_safe: 'phasi-charoen',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1023',
        name_ja: 'Nong Khaem',
        name_th: 'เขตหนองแขม',
        name_en: 'Nong Khaem',
        url_safe: 'nong-khaem',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1024',
        name_ja: 'Rat Burana',
        name_th: 'เขตราษฎร์บูรณะ',
        name_en: 'Rat Burana',
        url_safe: 'rat-burana',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1025',
        name_ja: 'Bang Phlat',
        name_th: 'เขตบางพลัด',
        name_en: 'Bang Phlat',
        url_safe: 'bang-phlat',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1026',
        name_ja: 'Din Daeng',
        name_th: 'เขตดินแดง',
        name_en: 'Din Daeng',
        url_safe: 'din-daeng',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1027',
        name_ja: 'Bung Kum',
        name_th: 'เขตบึงกุ่ม',
        name_en: 'Bung Kum',
        url_safe: 'bung-kum',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1028',
        name_ja: 'Sa Thon',
        name_th: 'เขตสาทร',
        name_en: 'Sa Thon',
        url_safe: 'sa-thon',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1029',
        name_ja: 'Bang Su',
        name_th: 'เขตบางซื่อ',
        name_en: 'Bang Su',
        url_safe: 'bang-su',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1030',
        name_ja: 'Chatuchak',
        name_th: 'เขตจตุจักร',
        name_en: 'Chatuchak',
        url_safe: 'chatuchak',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1031',
        name_ja: 'Bang Kho Laem',
        name_th: 'เขตบางคอแหลม',
        name_en: 'Bang Kho Laem',
        url_safe: 'bang-kho-laem',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1032',
        name_ja: 'Prawet',
        name_th: 'เขตประเวศ',
        name_en: 'Prawet',
        url_safe: 'prawet',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1033',
        name_ja: 'Khlong Toei',
        name_th: 'เขตคลองเตย',
        name_en: 'Khlong Toei',
        url_safe: 'khlong-toei',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1034',
        name_ja: 'Suan Luang',
        name_th: 'เขตสวนหลวง',
        name_en: 'Suan Luang',
        url_safe: 'suan-luang',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1035',
        name_ja: 'Chom Thong',
        name_th: 'เขตจอมทอง',
        name_en: 'Chom Thong',
        url_safe: 'chom-thong',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1036',
        name_ja: 'Don Mueang',
        name_th: 'เขตดอนเมือง',
        name_en: 'Don Mueang',
        url_safe: 'don-mueang',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1037',
        name_ja: 'Rat Thewi',
        name_th: 'เขตราชเทวี',
        name_en: 'Rat Thewi',
        url_safe: 'rat-thewi',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1038',
        name_ja: 'Lat Phrao',
        name_th: 'เขตลาดพร้าว',
        name_en: 'Lat Phrao',
        url_safe: 'lat-phrao',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1039',
        name_ja: 'Watthana',
        name_th: 'เขตวัฒนา',
        name_en: 'Watthana',
        url_safe: 'watthana',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1040',
        name_ja: 'Bang Khae',
        name_th: 'เขตบางแค',
        name_en: 'Bang Khae',
        url_safe: 'bang-khae',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1041',
        name_ja: 'Lak Si',
        name_th: 'เขตหลักสี่',
        name_en: 'Lak Si',
        url_safe: 'lak-si',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1042',
        name_ja: 'Sai Mai',
        name_th: 'เขตสายไหม',
        name_en: 'Sai Mai',
        url_safe: 'sai-mai',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1043',
        name_ja: 'Khanna Yao',
        name_th: 'เขตคันนายาว',
        name_en: 'Khanna Yao',
        url_safe: 'khanna-yao',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1044',
        name_ja: 'Saphan Sung',
        name_th: 'เขตสะพานสูง',
        name_en: 'Saphan Sung',
        url_safe: 'saphan-sung',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1045',
        name_ja: 'Wang Thong Lang',
        name_th: 'เขตวังทองหลาง',
        name_en: 'Wang Thong Lang',
        url_safe: 'wang-thong-lang',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1046',
        name_ja: 'Khlong Sam Wa',
        name_th: 'เขตคลองสามวา',
        name_en: 'Khlong Sam Wa',
        url_safe: 'khlong-sam-wa',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1047',
        name_ja: 'Bang Na',
        name_th: 'เขตบางนา',
        name_en: 'Bang Na',
        url_safe: 'bang-na',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1048',
        name_ja: 'Thawi Watthana',
        name_th: 'เขตทวีวัฒนา',
        name_en: 'Thawi Watthana',
        url_safe: 'thawi-watthana',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1049',
        name_ja: 'Thung Khu',
        name_th: 'เขตทุ่งครุ',
        name_en: 'Thung Khu',
        url_safe: 'thung-khu',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1050',
        name_ja: 'Bang Bon',
        name_th: 'เขตบางบอน',
        name_en: 'Bang Bon',
        url_safe: 'bang-bon',
        province_original_id: 'bangkok'
    )

    District.create(
        original_id: '1101',
        name_ja: 'Mueang Samut Prakan',
        name_th: 'อ.เมืองสมุทรปราการ',
        name_en: 'Mueang Samut Prakan',
        url_safe: 'mueang-samut-prakan',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1102',
        name_ja: 'Bang Bo',
        name_th: 'อ.บางบ่อ',
        name_en: 'Bang Bo',
        url_safe: 'bang-bo',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1103',
        name_ja: 'Bang Phli',
        name_th: 'อ.บางพลี',
        name_en: 'Bang Phli',
        url_safe: 'bang-phli',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1104',
        name_ja: 'Phra Pradaeng',
        name_th: 'อ.พระประแดง',
        name_en: 'Phra Pradaeng',
        url_safe: 'phra-pradaeng',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1105',
        name_ja: 'Phra Samut Chedi',
        name_th: 'อ.พระสมุทรเจดีย์',
        name_en: 'Phra Samut Chedi',
        url_safe: 'phra-samut-chedi',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1106',
        name_ja: 'Bang Sao Thong',
        name_th: 'อ.บางเสาธง',
        name_en: 'Bang Sao Thong',
        url_safe: 'bang-sao-thong',
        province_original_id: 'samut-prakarn'
    )

    District.create(
        original_id: '1201',
        name_ja: 'Mueang Nonthaburi',
        name_th: 'อ.เมืองนนทบุรี',
        name_en: 'Mueang Nonthaburi',
        url_safe: 'mueang-nonthaburi',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1202',
        name_ja: 'Bang Kruai',
        name_th: 'อ.บางกรวย',
        name_en: 'Bang Kruai',
        url_safe: 'bang-kruai',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1203',
        name_ja: 'Bang Yai',
        name_th: 'อ.บางใหญ่',
        name_en: 'Bang Yai',
        url_safe: 'bang-yai',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1204',
        name_ja: 'Bang Bua Thong',
        name_th: 'อ.บางบัวทอง',
        name_en: 'Bang Bua Thong',
        url_safe: 'bang-bua-thong',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1205',
        name_ja: 'Sai Noi',
        name_th: 'อ.ไทรน้อย',
        name_en: 'Sai Noi',
        url_safe: 'sai-noi',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1206',
        name_ja: 'Pak Kret',
        name_th: 'อ.ปากเกร็ด',
        name_en: 'Pak Kret',
        url_safe: 'pak-kret',
        province_original_id: 'nonthaburi'
    )

    District.create(
        original_id: '1301',
        name_ja: 'Mueang Pathum Thani',
        name_th: 'อ.เมืองปทุมธานี',
        name_en: 'Mueang Pathum Thani',
        url_safe: 'mueang-pathum-thani',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1302',
        name_ja: 'khlong Luang',
        name_th: 'อ.คลองหลวง',
        name_en: 'khlong Luang',
        url_safe: 'khlong-luang',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1303',
        name_ja: 'Thanyaburi',
        name_th: 'อ.ธัญบุรี',
        name_en: 'Thanyaburi',
        url_safe: 'thanyaburi',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1304',
        name_ja: 'Nong Suea',
        name_th: 'อ.หนองเสือ',
        name_en: 'Nong Suea',
        url_safe: 'nong-suea',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1305',
        name_ja: 'Lat Lum Kaeo',
        name_th: 'อ.ลาดหลุมแก้ว',
        name_en: 'Lat Lum Kaeo',
        url_safe: 'lat-lum-kaeo',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1306',
        name_ja: 'Lam Luk Ka',
        name_th: 'อ.ลำลูกกา',
        name_en: 'Lam Luk Ka',
        url_safe: 'lam-luk-ka',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1307',
        name_ja: 'Sam Khok',
        name_th: 'อ.สามโคก',
        name_en: 'Sam Khok',
        url_safe: 'sam-khok',
        province_original_id: 'pathum-thani'
    )

    District.create(
        original_id: '1401',
        name_ja: 'Phra Nakhon Si Ayutthaya',
        name_th: 'อ.พระนครศรีอยุธยา',
        name_en: 'Phra Nakhon Si Ayutthaya',
        url_safe: 'phra-nakhon-si-ayutthaya',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1402',
        name_ja: 'Tha Ruea',
        name_th: 'อ.ท่าเรือ',
        name_en: 'Tha Ruea',
        url_safe: 'tha-ruea',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1403',
        name_ja: 'Nakhon Luang',
        name_th: 'อ.นครหลวง',
        name_en: 'Nakhon Luang',
        url_safe: 'nakhon-luang',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1404',
        name_ja: 'Bang Sai',
        name_th: 'อ.บางไทร',
        name_en: 'Bang Sai',
        url_safe: 'bang-sai',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1405',
        name_ja: 'Bang Ban',
        name_th: 'อ.บางบาล',
        name_en: 'Bang Ban',
        url_safe: 'bang-ban',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1406',
        name_ja: 'Bang Pa-in',
        name_th: 'อ.บางปะอิน',
        name_en: 'Bang Pa-in',
        url_safe: 'bang-pa-in',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1407',
        name_ja: 'Bang Pahan',
        name_th: 'อ.บางปะหัน',
        name_en: 'Bang Pahan',
        url_safe: 'bang-pahan',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1408',
        name_ja: 'Phak Hai',
        name_th: 'อ.ผักไห่',
        name_en: 'Phak Hai',
        url_safe: 'phak-hai',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1409',
        name_ja: 'Phachi',
        name_th: 'อ.ภาชี',
        name_en: 'Phachi',
        url_safe: 'phachi',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1410',
        name_ja: 'Lat Bua Luang',
        name_th: 'อ.ลาดบัวหลวง',
        name_en: 'Lat Bua Luang',
        url_safe: 'lat-bua-luang',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1411',
        name_ja: 'Wang Noi',
        name_th: 'อ.วังน้อย',
        name_en: 'Wang Noi',
        url_safe: 'wang-noi',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1412',
        name_ja: 'Sena',
        name_th: 'อ.เสนา',
        name_en: 'Sena',
        url_safe: 'sena',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1413',
        name_ja: 'Bang Sai',
        name_th: 'อ.บางซ้าย',
        name_en: 'Bang Sai',
        url_safe: 'bang-sai',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1414',
        name_ja: 'Uthai',
        name_th: 'อ.อุทัย',
        name_en: 'Uthai',
        url_safe: 'uthai',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1415',
        name_ja: 'Maha Rat',
        name_th: 'อ.มหาราช',
        name_en: 'Maha Rat',
        url_safe: 'maha-rat',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1416',
        name_ja: 'Ban Phraek',
        name_th: 'อ.บ้านแพรก',
        name_en: 'Ban Phraek',
        url_safe: 'ban-phraek',
        province_original_id: 'phra-nakhon-si-ayutthaya'
    )

    District.create(
        original_id: '1501',
        name_ja: 'Mueang Ang Thong',
        name_th: 'อ.เมืองอ่างทอง',
        name_en: 'Mueang Ang Thong',
        url_safe: 'mueang-ang-thong',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1502',
        name_ja: 'Chaiyo',
        name_th: 'อ.ไชโย',
        name_en: 'Chaiyo',
        url_safe: 'chaiyo',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1503',
        name_ja: 'Pa Mok',
        name_th: 'อ.ป่าโมก',
        name_en: 'Pa Mok',
        url_safe: 'pa-mok',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1504',
        name_ja: 'Pho Thong',
        name_th: 'อ.โพธิ์ทอง',
        name_en: 'Pho Thong',
        url_safe: 'pho-thong',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1505',
        name_ja: 'Sawaeng Ha',
        name_th: 'อ.แสวงหา',
        name_en: 'Sawaeng Ha',
        url_safe: 'sawaeng-ha',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1506',
        name_ja: 'Wiset Chai Chan',
        name_th: 'อ.วิเศษชัยชาญ',
        name_en: 'Wiset Chai Chan',
        url_safe: 'wiset-chai-chan',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1507',
        name_ja: 'Samko',
        name_th: 'อ.สามโก้',
        name_en: 'Samko',
        url_safe: 'samko',
        province_original_id: 'ang-thong'
    )

    District.create(
        original_id: '1601',
        name_ja: 'Mueang Lop Buri',
        name_th: 'อ.เมืองลพบุรี',
        name_en: 'Mueang Lop Buri',
        url_safe: 'mueang-lop-buri',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1602',
        name_ja: 'Phatthana Nikhom',
        name_th: 'อ.พัฒนานิคม',
        name_en: 'Phatthana Nikhom',
        url_safe: 'phatthana-nikhom',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1603',
        name_ja: 'Khok Samrong',
        name_th: 'อ.โคกสำโรง',
        name_en: 'Khok Samrong',
        url_safe: 'khok-samrong',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1604',
        name_ja: 'Chai Badan',
        name_th: 'อ.ชัยบาดาล',
        name_en: 'Chai Badan',
        url_safe: 'chai-badan',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1605',
        name_ja: 'Tha Wung',
        name_th: 'อ.ท่าวุ้ง',
        name_en: 'Tha Wung',
        url_safe: 'tha-wung',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1606',
        name_ja: 'Ban Mi',
        name_th: 'อ.บ้านหมี่',
        name_en: 'Ban Mi',
        url_safe: 'ban-mi',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1607',
        name_ja: 'Tha Luang',
        name_th: 'อ.ท่าหลวง',
        name_en: 'Tha Luang',
        url_safe: 'tha-luang',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1608',
        name_ja: 'Sa Bot',
        name_th: 'อ.สระโบสถ์',
        name_en: 'Sa Bot',
        url_safe: 'sa-bot',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1609',
        name_ja: 'Khok Charoen',
        name_th: 'อ.โคกเจริญ',
        name_en: 'Khok Charoen',
        url_safe: 'khok-charoen',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1610',
        name_ja: 'Lam Sonthi',
        name_th: 'อ.ลำสนธิ',
        name_en: 'Lam Sonthi',
        url_safe: 'lam-sonthi',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1611',
        name_ja: 'Nong Muang',
        name_th: 'อ.หนองม่วง',
        name_en: 'Nong Muang',
        url_safe: 'nong-muang',
        province_original_id: 'lop-buri'
    )

    District.create(
        original_id: '1701',
        name_ja: 'Mueang Sing Buri',
        name_th: 'อ.เมืองสิงห์บุรี',
        name_en: 'Mueang Sing Buri',
        url_safe: 'mueang-sing-buri',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1702',
        name_ja: 'Bang Rachan',
        name_th: 'อ.บางระจัน',
        name_en: 'Bang Rachan',
        url_safe: 'bang-rachan',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1703',
        name_ja: 'Khai Bang Rachan',
        name_th: 'อ.ค่ายบางระจัน',
        name_en: 'Khai Bang Rachan',
        url_safe: 'khai-bang-rachan',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1704',
        name_ja: 'Phrom Buri',
        name_th: 'อ.พรหมบุรี',
        name_en: 'Phrom Buri',
        url_safe: 'phrom-buri',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1705',
        name_ja: 'Tha Chang',
        name_th: 'อ.ท่าช้าง',
        name_en: 'Tha Chang',
        url_safe: 'tha-chang',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1706',
        name_ja: 'In Buri',
        name_th: 'อ.อินทร์บุรี',
        name_en: 'In Buri',
        url_safe: 'in-buri',
        province_original_id: 'sing-buri'
    )

    District.create(
        original_id: '1801',
        name_ja: 'Mueang Chai Nat',
        name_th: 'อ.เมืองชัยนาท',
        name_en: 'Mueang Chai Nat',
        url_safe: 'mueang-chai-nat',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1802',
        name_ja: 'Manorom',
        name_th: 'อ.มโนรมย์',
        name_en: 'Manorom',
        url_safe: 'manorom',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1803',
        name_ja: 'Wat Sing',
        name_th: 'อ.วัดสิงห์',
        name_en: 'Wat Sing',
        url_safe: 'wat-sing',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1804',
        name_ja: 'Sapphaya',
        name_th: 'อ.สรรพยา',
        name_en: 'Sapphaya',
        url_safe: 'sapphaya',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1805',
        name_ja: 'Sankhaburi',
        name_th: 'อ.สรรคบุรี',
        name_en: 'Sankhaburi',
        url_safe: 'sankhaburi',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1806',
        name_ja: 'Hankha',
        name_th: 'อ.หันคา',
        name_en: 'Hankha',
        url_safe: 'hankha',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1807',
        name_ja: 'Nong Mamong',
        name_th: 'อ.หนองมะโมง',
        name_en: 'Nong Mamong',
        url_safe: 'nong-mamong',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1808',
        name_ja: 'Noen Kham',
        name_th: 'อ.เนินขาม',
        name_en: 'Noen Kham',
        url_safe: 'noen-kham',
        province_original_id: 'chai-nat'
    )

    District.create(
        original_id: '1901',
        name_ja: 'Mueang Saraburi',
        name_th: 'อ.เมืองสระบุรี',
        name_en: 'Mueang Saraburi',
        url_safe: 'mueang-saraburi',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1902',
        name_ja: 'Kaeng Khoi',
        name_th: 'อ.แก่งคอย',
        name_en: 'Kaeng Khoi',
        url_safe: 'kaeng-khoi',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1903',
        name_ja: 'Nong Khae',
        name_th: 'อ.หนองแค',
        name_en: 'Nong Khae',
        url_safe: 'nong-khae',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1904',
        name_ja: 'Wihan Daeng',
        name_th: 'อ.วิหารแดง',
        name_en: 'Wihan Daeng',
        url_safe: 'wihan-daeng',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1905',
        name_ja: 'Nong Saeng',
        name_th: 'อ.หนองแซง',
        name_en: 'Nong Saeng',
        url_safe: 'nong-saeng',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1906',
        name_ja: 'Ban Mo',
        name_th: 'อ.บ้านหมอ',
        name_en: 'Ban Mo',
        url_safe: 'ban-mo',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1907',
        name_ja: 'Don Phut',
        name_th: 'อ.ดอนพุด',
        name_en: 'Don Phut',
        url_safe: 'don-phut',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1908',
        name_ja: 'Nong Don',
        name_th: 'อ.หนองโดน',
        name_en: 'Nong Don',
        url_safe: 'nong-don',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1909',
        name_ja: 'Phra Phutthabat',
        name_th: 'อ.พระพุทธบาท',
        name_en: 'Phra Phutthabat',
        url_safe: 'phra-phutthabat',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1910',
        name_ja: 'Sao Hai',
        name_th: 'อ.เสาไห้',
        name_en: 'Sao Hai',
        url_safe: 'sao-hai',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1911',
        name_ja: 'Muak Lek',
        name_th: 'อ.มวกเหล็ก',
        name_en: 'Muak Lek',
        url_safe: 'muak-lek',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1912',
        name_ja: 'Wang Muang',
        name_th: 'อ.วังม่วง',
        name_en: 'Wang Muang',
        url_safe: 'wang-muang',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '1913',
        name_ja: 'Chaloem Phra Kiet',
        name_th: 'อ.เฉลิมพระเกียรติ',
        name_en: 'Chaloem Phra Kiet',
        url_safe: 'chaloem-phra-kiet',
        province_original_id: 'saraburi'
    )

    District.create(
        original_id: '2001',
        name_ja: 'Mueang Chon Buri',
        name_th: 'อ.เมืองชลบุรี',
        name_en: 'Mueang Chon Buri',
        url_safe: 'mueang-chon-buri',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2002',
        name_ja: 'Ban Bueng',
        name_th: 'อ.บ้านบึง',
        name_en: 'Ban Bueng',
        url_safe: 'ban-bueng',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2003',
        name_ja: 'Nong Yai',
        name_th: 'อ.หนองใหญ่',
        name_en: 'Nong Yai',
        url_safe: 'nong-yai',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2004',
        name_ja: 'Bang Lamung',
        name_th: 'อ.บางละมุง',
        name_en: 'Bang Lamung',
        url_safe: 'bang-lamung',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2005',
        name_ja: 'Phan Thong',
        name_th: 'อ.พานทอง',
        name_en: 'Phan Thong',
        url_safe: 'phan-thong',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2006',
        name_ja: 'Phanat Nikhom',
        name_th: 'อ.พนัสนิคม',
        name_en: 'Phanat Nikhom',
        url_safe: 'phanat-nikhom',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2007',
        name_ja: 'Si Racha',
        name_th: 'อ.ศรีราชา',
        name_en: 'Si Racha',
        url_safe: 'si-racha',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2008',
        name_ja: 'Ko Sichang',
        name_th: 'อ.เกาะสีชัง',
        name_en: 'Ko Sichang',
        url_safe: 'ko-sichang',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2009',
        name_ja: 'Sattahip',
        name_th: 'อ.สัตหีบ',
        name_en: 'Sattahip',
        url_safe: 'sattahip',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2010',
        name_ja: 'Bo Thong',
        name_th: 'อ.บ่อทอง',
        name_en: 'Bo Thong',
        url_safe: 'bo-thong',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2011',
        name_ja: 'Ko Chan',
        name_th: 'อ.เกาะจันทร์',
        name_en: 'Ko Chan',
        url_safe: 'ko-chan',
        province_original_id: 'chon-buri'
    )

    District.create(
        original_id: '2101',
        name_ja: 'Mueang Rayong',
        name_th: 'อ.เมืองระยอง',
        name_en: 'Mueang Rayong',
        url_safe: 'mueang-rayong',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2102',
        name_ja: 'Ban Chang',
        name_th: 'อ.บ้านฉาง',
        name_en: 'Ban Chang',
        url_safe: 'ban-chang',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2103',
        name_ja: 'Klaeng',
        name_th: 'อ.แกลง',
        name_en: 'Klaeng',
        url_safe: 'klaeng',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2104',
        name_ja: 'Wang Chan',
        name_th: 'อ.วังจันทร์',
        name_en: 'Wang Chan',
        url_safe: 'wang-chan',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2105',
        name_ja: 'Ban Khai',
        name_th: 'อ.บ้านค่าย',
        name_en: 'Ban Khai',
        url_safe: 'ban-khai',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2106',
        name_ja: 'Pluak Daeng',
        name_th: 'อ.ปลวกแดง',
        name_en: 'Pluak Daeng',
        url_safe: 'pluak-daeng',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2107',
        name_ja: 'Khao Chamao',
        name_th: 'อ.เขาชะเมา',
        name_en: 'Khao Chamao',
        url_safe: 'khao-chamao',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2108',
        name_ja: 'Nikhom Phatthana',
        name_th: 'อ.นิคมพัฒนา',
        name_en: 'Nikhom Phatthana',
        url_safe: 'nikhom-phatthana',
        province_original_id: 'rayong'
    )

    District.create(
        original_id: '2201',
        name_ja: 'Mueang Chanthaburi',
        name_th: 'อ.เมืองจันทบุรี',
        name_en: 'Mueang Chanthaburi',
        url_safe: 'mueang-chanthaburi',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2202',
        name_ja: 'Khlung',
        name_th: 'อ.ขลุง',
        name_en: 'Khlung',
        url_safe: 'khlung',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2203',
        name_ja: 'Tha Mai',
        name_th: 'อ.ท่าใหม่',
        name_en: 'Tha Mai',
        url_safe: 'tha-mai',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2204',
        name_ja: 'Pong Nam Ron',
        name_th: 'อ.โป่งน้ำร้อน',
        name_en: 'Pong Nam Ron',
        url_safe: 'pong-nam-ron',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2205',
        name_ja: 'Makham',
        name_th: 'อ.มะขาม',
        name_en: 'Makham',
        url_safe: 'makham',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2207',
        name_ja: 'Soi Dao',
        name_th: 'อ.สอยดาว',
        name_en: 'Soi Dao',
        url_safe: 'soi-dao',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2208',
        name_ja: 'Kaeng Hang Maeo',
        name_th: 'อ.แก่งหางแมว',
        name_en: 'Kaeng Hang Maeo',
        url_safe: 'kaeng-hang-maeo',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2209',
        name_ja: 'Na Yai Am',
        name_th: 'อ.นายายอาม',
        name_en: 'Na Yai Am',
        url_safe: 'na-yai-am',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2210',
        name_ja: 'Khao Khitchakut',
        name_th: 'อ.เขาคิชฌกูฏ',
        name_en: 'Khao Khitchakut',
        url_safe: 'khao-khitchakut',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2301',
        name_ja: 'Mueang Trat',
        name_th: 'อ.เมืองตราด',
        name_en: 'Mueang Trat',
        url_safe: 'mueang-trat',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2302',
        name_ja: 'Khlong Yai',
        name_th: 'อ.คลองใหญ่',
        name_en: 'Khlong Yai',
        url_safe: 'khlong-yai',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2303',
        name_ja: 'Khao Saming',
        name_th: 'อ.เขาสมิง',
        name_en: 'Khao Saming',
        url_safe: 'khao-saming',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2304',
        name_ja: 'Bo Rai',
        name_th: 'อ.บ่อไร่',
        name_en: 'Bo Rai',
        url_safe: 'bo-rai',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2305',
        name_ja: 'Laem Ngop',
        name_th: 'อ.แหลมงอบ',
        name_en: 'Laem Ngop',
        url_safe: 'laem-ngop',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2306',
        name_ja: 'Ko Kut',
        name_th: 'อ.เกาะกูด',
        name_en: 'Ko Kut',
        url_safe: 'ko-kut',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2307',
        name_ja: 'Ko Chang',
        name_th: 'อ.เกาะช้าง',
        name_en: 'Ko Chang',
        url_safe: 'ko-chang',
        province_original_id: 'trat'
    )

    District.create(
        original_id: '2401',
        name_ja: 'Mueang Chachoengsao',
        name_th: 'อ.เมืองฉะเชิงเทรา',
        name_en: 'Mueang Chachoengsao',
        url_safe: 'mueang-chachoengsao',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2402',
        name_ja: 'Bang Khla',
        name_th: 'อ.บางคล้า',
        name_en: 'Bang Khla',
        url_safe: 'bang-khla',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2403',
        name_ja: 'Bang Nam Priao',
        name_th: 'อ.บางน้ำเปรี้ยว',
        name_en: 'Bang Nam Priao',
        url_safe: 'bang-nam-priao',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2404',
        name_ja: 'Bang Pakong',
        name_th: 'อ.บางปะกง',
        name_en: 'Bang Pakong',
        url_safe: 'bang-pakong',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2405',
        name_ja: 'Ban Pho',
        name_th: 'อ.บ้านโพธิ์',
        name_en: 'Ban Pho',
        url_safe: 'ban-pho',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2406',
        name_ja: 'Phanom Sarakham',
        name_th: 'อ.พนมสารคาม',
        name_en: 'Phanom Sarakham',
        url_safe: 'phanom-sarakham',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2407',
        name_ja: 'Ratchasan',
        name_th: 'อ.ราชสาส์น',
        name_en: 'Ratchasan',
        url_safe: 'ratchasan',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2408',
        name_ja: 'Sanam Chai Khet',
        name_th: 'อ.สนามชัยเขต',
        name_en: 'Sanam Chai Khet',
        url_safe: 'sanam-chai-khet',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2409',
        name_ja: 'Pleang Yao',
        name_th: 'อ.แปลงยาว',
        name_en: 'Pleang Yao',
        url_safe: 'pleang-yao',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2410',
        name_ja: 'Tha Takiap',
        name_th: 'อ.ท่าตะเกียบ',
        name_en: 'Tha Takiap',
        url_safe: 'tha-takiap',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2411',
        name_ja: 'Khlong Khuean',
        name_th: 'อ.คลองเขื่อน',
        name_en: 'Khlong Khuean',
        url_safe: 'khlong-khuean',
        province_original_id: 'chachoengsao'
    )

    District.create(
        original_id: '2501',
        name_ja: 'Mueang Prachin Buri',
        name_th: 'อ.เมืองปราจีนบุรี',
        name_en: 'Mueang Prachin Buri',
        url_safe: 'mueang-prachin-buri',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2502',
        name_ja: 'Kabin Buri',
        name_th: 'อ.กบินทร์บุรี',
        name_en: 'Kabin Buri',
        url_safe: 'kabin-buri',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2503',
        name_ja: 'Na Di',
        name_th: 'อ.นาดี',
        name_en: 'Na Di',
        url_safe: 'na-di',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2506',
        name_ja: 'Ban Sang',
        name_th: 'อ.บ้านสร้าง',
        name_en: 'Ban Sang',
        url_safe: 'ban-sang',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2206',
        name_ja: 'Laem Sing',
        name_th: 'อ.แหลมสิงห์',
        name_en: 'Laem Sing',
        url_safe: 'laem-sing',
        province_original_id: 'chanthaburi'
    )

    District.create(
        original_id: '2507',
        name_ja: 'Prachantakham',
        name_th: 'อ.ประจันตคาม',
        name_en: 'Prachantakham',
        url_safe: 'prachantakham',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2508',
        name_ja: 'Si Maha Phot',
        name_th: 'อ.ศรีมหาโพธิ',
        name_en: 'Si Maha Phot',
        url_safe: 'si-maha-phot',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2509',
        name_ja: 'Si Mahosot',
        name_th: 'อ.ศรีมโหสถ',
        name_en: 'Si Mahosot',
        url_safe: 'si-mahosot',
        province_original_id: 'prachin-buri'
    )

    District.create(
        original_id: '2601',
        name_ja: 'Mueang Nakhon Nayok',
        name_th: 'อ.เมืองนครนายก',
        name_en: 'Mueang Nakhon Nayok',
        url_safe: 'mueang-nakhon-nayok',
        province_original_id: 'nakhon-nayok'
    )

    District.create(
        original_id: '2602',
        name_ja: 'Pak Phli',
        name_th: 'อ.ปากพลี',
        name_en: 'Pak Phli',
        url_safe: 'pak-phli',
        province_original_id: 'nakhon-nayok'
    )

    District.create(
        original_id: '2603',
        name_ja: 'Ban Na',
        name_th: 'อ.บ้านนา',
        name_en: 'Ban Na',
        url_safe: 'ban-na',
        province_original_id: 'nakhon-nayok'
    )

    District.create(
        original_id: '2604',
        name_ja: 'Ongkharak',
        name_th: 'อ.องครักษ์',
        name_en: 'Ongkharak',
        url_safe: 'ongkharak',
        province_original_id: 'nakhon-nayok'
    )

    District.create(
        original_id: '2701',
        name_ja: 'Mueang Sa Kaeo',
        name_th: 'อ.เมืองสระแก้ว',
        name_en: 'Mueang Sa Kaeo',
        url_safe: 'mueang-sa-kaeo',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2702',
        name_ja: 'Khlong Hat',
        name_th: 'อ.คลองหาด',
        name_en: 'Khlong Hat',
        url_safe: 'khlong-hat',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2703',
        name_ja: 'Ta Phraya',
        name_th: 'อ.ตาพระยา',
        name_en: 'Ta Phraya',
        url_safe: 'ta-phraya',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2704',
        name_ja: 'Wang Nam Yen',
        name_th: 'อ.วังน้ำเย็น',
        name_en: 'Wang Nam Yen',
        url_safe: 'wang-nam-yen',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2705',
        name_ja: 'Watthana Nakhon',
        name_th: 'อ.วัฒนานคร',
        name_en: 'Watthana Nakhon',
        url_safe: 'watthana-nakhon',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2706',
        name_ja: 'Aranyaprathet',
        name_th: 'อ.อรัญประเทศ',
        name_en: 'Aranyaprathet',
        url_safe: 'aranyaprathet',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2707',
        name_ja: 'Khao Chakan',
        name_th: 'อ.เขาฉกรรจ์',
        name_en: 'Khao Chakan',
        url_safe: 'khao-chakan',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2708',
        name_ja: 'Khok Sung',
        name_th: 'อ.โคกสูง',
        name_en: 'Khok Sung',
        url_safe: 'khok-sung',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '2709',
        name_ja: 'Wang Sombun',
        name_th: 'อ.วังสมบูรณ์',
        name_en: 'Wang Sombun',
        url_safe: 'wang-sombun',
        province_original_id: 'sa-kaeo'
    )

    District.create(
        original_id: '3001',
        name_ja: 'Mueang Nakhon Ratchasima',
        name_th: 'อ.เมืองนครราชสีมา',
        name_en: 'Mueang Nakhon Ratchasima',
        url_safe: 'mueang-nakhon-ratchasima',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3002',
        name_ja: 'Khon Buri',
        name_th: 'อ.ครบุรี',
        name_en: 'Khon Buri',
        url_safe: 'khon-buri',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3003',
        name_ja: 'Soeng Sang',
        name_th: 'อ.เสิงสาง',
        name_en: 'Soeng Sang',
        url_safe: 'soeng-sang',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3004',
        name_ja: 'Khong',
        name_th: 'อ.คง',
        name_en: 'Khong',
        url_safe: 'khong',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3005',
        name_ja: 'Ban Lueam',
        name_th: 'อ.บ้านเหลื่อม',
        name_en: 'Ban Lueam',
        url_safe: 'ban-lueam',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3006',
        name_ja: 'Chakkarat',
        name_th: 'อ.จักราช',
        name_en: 'Chakkarat',
        url_safe: 'chakkarat',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3007',
        name_ja: 'Chok Chai',
        name_th: 'อ.โชคชัย',
        name_en: 'Chok Chai',
        url_safe: 'chok-chai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3008',
        name_ja: 'Dan Khun Thot',
        name_th: 'อ.ด่านขุนทด',
        name_en: 'Dan Khun Thot',
        url_safe: 'dan-khun-thot',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3009',
        name_ja: 'Non Thai',
        name_th: 'อ.โนนไทย',
        name_en: 'Non Thai',
        url_safe: 'non-thai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3010',
        name_ja: 'Non Sung',
        name_th: 'อ.โนนสูง',
        name_en: 'Non Sung',
        url_safe: 'non-sung',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3011',
        name_ja: 'Kham Sakaesaeng',
        name_th: 'อ.ขามสะแกแสง',
        name_en: 'Kham Sakaesaeng',
        url_safe: 'kham-sakaesaeng',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3012',
        name_ja: 'Bua Yai',
        name_th: 'อ.บัวใหญ่',
        name_en: 'Bua Yai',
        url_safe: 'bua-yai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3013',
        name_ja: 'Prathai',
        name_th: 'อ.ประทาย',
        name_en: 'Prathai',
        url_safe: 'prathai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3014',
        name_ja: 'Pak Thong Chai',
        name_th: 'อ.ปักธงชัย',
        name_en: 'Pak Thong Chai',
        url_safe: 'pak-thong-chai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3015',
        name_ja: 'Phimai',
        name_th: 'อ.พิมาย',
        name_en: 'Phimai',
        url_safe: 'phimai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3016',
        name_ja: 'Huai Thalaeng',
        name_th: 'อ.ห้วยแถลง',
        name_en: 'Huai Thalaeng',
        url_safe: 'huai-thalaeng',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3017',
        name_ja: 'Chum Phuang',
        name_th: 'อ.ชุมพวง',
        name_en: 'Chum Phuang',
        url_safe: 'chum-phuang',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3018',
        name_ja: 'Sung Noen',
        name_th: 'อ.สูงเนิน',
        name_en: 'Sung Noen',
        url_safe: 'sung-noen',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3019',
        name_ja: 'Kham Thale So',
        name_th: 'อ.ขามทะเลสอ',
        name_en: 'Kham Thale So',
        url_safe: 'kham-thale-so',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3020',
        name_ja: 'Si Khio',
        name_th: 'อ.สีคิ้ว',
        name_en: 'Si Khio',
        url_safe: 'si-khio',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3021',
        name_ja: 'Pak Chong',
        name_th: 'อ.ปากช่อง',
        name_en: 'Pak Chong',
        url_safe: 'pak-chong',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3022',
        name_ja: 'Nong Bunmak',
        name_th: 'อ.หนองบุญมาก',
        name_en: 'Nong Bunmak',
        url_safe: 'nong-bunmak',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3023',
        name_ja: 'Kaeng Sanam Nang',
        name_th: 'อ.แก้งสนามนาง',
        name_en: 'Kaeng Sanam Nang',
        url_safe: 'kaeng-sanam-nang',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3024',
        name_ja: 'Non Daeng',
        name_th: 'อ.โนนแดง',
        name_en: 'Non Daeng',
        url_safe: 'non-daeng',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3025',
        name_ja: 'Wang Nam Khiao',
        name_th: 'อ.วังน้ำเขียว',
        name_en: 'Wang Nam Khiao',
        url_safe: 'wang-nam-khiao',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3026',
        name_ja: 'Thepharak',
        name_th: 'อ.เทพารักษ์',
        name_en: 'Thepharak',
        url_safe: 'thepharak',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3027',
        name_ja: 'Mueang Yang',
        name_th: 'อ.เมืองยาง',
        name_en: 'Mueang Yang',
        url_safe: 'mueang-yang',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3028',
        name_ja: 'Phra Thong Kham',
        name_th: 'อ.พระทองคำ',
        name_en: 'Phra Thong Kham',
        url_safe: 'phra-thong-kham',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3029',
        name_ja: 'Lamtaman Chai',
        name_th: 'อ.ลำทะเมนชัย',
        name_en: 'Lamtaman Chai',
        url_safe: 'lamtaman-chai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3030',
        name_ja: 'Bua Lai',
        name_th: 'อ.บัวลาย',
        name_en: 'Bua Lai',
        url_safe: 'bua-lai',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3031',
        name_ja: 'Sida',
        name_th: 'อ.สีดา',
        name_en: 'Sida',
        url_safe: 'sida',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3032',
        name_ja: 'Chaloem Phra Kiet',
        name_th: 'อ.เฉลิมพระเกียรติ',
        name_en: 'Chaloem Phra Kiet',
        url_safe: 'chaloem-phra-kiet',
        province_original_id: 'nakhon-ratchasima'
    )

    District.create(
        original_id: '3101',
        name_ja: 'Mueang Buri Ram',
        name_th: 'อ.เมืองบุรีรัมย์',
        name_en: 'Mueang Buri Ram',
        url_safe: 'mueang-buri-ram',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3102',
        name_ja: 'Khu Mueang',
        name_th: 'อ.คูเมือง',
        name_en: 'Khu Mueang',
        url_safe: 'khu-mueang',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3103',
        name_ja: 'Krasang',
        name_th: 'อ.กระสัง',
        name_en: 'Krasang',
        url_safe: 'krasang',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3104',
        name_ja: 'Nang Rong',
        name_th: 'อ.นางรอง',
        name_en: 'Nang Rong',
        url_safe: 'nang-rong',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3105',
        name_ja: 'Nong Ki',
        name_th: 'อ.หนองกี่',
        name_en: 'Nong Ki',
        url_safe: 'nong-ki',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3106',
        name_ja: 'Lahan Sai',
        name_th: 'อ.ละหานทราย',
        name_en: 'Lahan Sai',
        url_safe: 'lahan-sai',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3107',
        name_ja: 'Prakhon Chai',
        name_th: 'อ.ประโคนชัย',
        name_en: 'Prakhon Chai',
        url_safe: 'prakhon-chai',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3108',
        name_ja: 'Ban Kruat',
        name_th: 'อ.บ้านกรวด',
        name_en: 'Ban Kruat',
        url_safe: 'ban-kruat',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3109',
        name_ja: 'Phutthaisong',
        name_th: 'อ.พุทไธสง',
        name_en: 'Phutthaisong',
        url_safe: 'phutthaisong',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3110',
        name_ja: 'Lam Plai Mat',
        name_th: 'อ.ลำปลายมาศ',
        name_en: 'Lam Plai Mat',
        url_safe: 'lam-plai-mat',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3111',
        name_ja: 'Satuek',
        name_th: 'อ.สตึก',
        name_en: 'Satuek',
        url_safe: 'satuek',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3112',
        name_ja: 'Pakham',
        name_th: 'อ.ปะคำ',
        name_en: 'Pakham',
        url_safe: 'pakham',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3113',
        name_ja: 'Na Pho',
        name_th: 'อ.นาโพธิ์',
        name_en: 'Na Pho',
        url_safe: 'na-pho',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3114',
        name_ja: 'Nong Hong',
        name_th: 'อ.หนองหงส์',
        name_en: 'Nong Hong',
        url_safe: 'nong-hong',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3115',
        name_ja: 'Phlapphla Chai',
        name_th: 'อ.พลับพลาชัย',
        name_en: 'Phlapphla Chai',
        url_safe: 'phlapphla-chai',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3116',
        name_ja: 'Huai Rat',
        name_th: 'อ.ห้วยราช',
        name_en: 'Huai Rat',
        url_safe: 'huai-rat',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3117',
        name_ja: 'Non Din Daeng',
        name_th: 'อ.โนนสุวรรณ',
        name_en: 'Non Din Daeng',
        url_safe: 'non-din-daeng',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3118',
        name_ja: 'Chamni',
        name_th: 'อ.ชำนิ',
        name_en: 'Chamni',
        url_safe: 'chamni',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3119',
        name_ja: 'Ban Mai Chaiyaphot',
        name_th: 'อ.บ้านใหม่ไชยพจน์',
        name_en: 'Ban Mai Chaiyaphot',
        url_safe: 'ban-mai-chaiyaphot',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3120',
        name_ja: 'Non Din Daeng',
        name_th: 'อ.โนนดินแดง',
        name_en: 'Non Din Daeng',
        url_safe: 'non-din-daeng',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3121',
        name_ja: 'Ban Dan',
        name_th: 'อ.บ้านด่าน',
        name_en: 'Ban Dan',
        url_safe: 'ban-dan',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3122',
        name_ja: 'Khaen Dong',
        name_th: 'อ.แคนดง',
        name_en: 'Khaen Dong',
        url_safe: 'khaen-dong',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3123',
        name_ja: 'Chaloem Phra Kiet',
        name_th: 'อ.เฉลิมพระเกียรติ',
        name_en: 'Chaloem Phra Kiet',
        url_safe: 'chaloem-phra-kiet',
        province_original_id: 'buri-ram'
    )

    District.create(
        original_id: '3201',
        name_ja: 'Mueang Surin',
        name_th: 'อ.เมืองสุรินทร์',
        name_en: 'Mueang Surin',
        url_safe: 'mueang-surin',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3202',
        name_ja: 'Chumphon Buri',
        name_th: 'อ.ชุมพลบุรี',
        name_en: 'Chumphon Buri',
        url_safe: 'chumphon-buri',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3203',
        name_ja: 'Tha Tum',
        name_th: 'อ.ท่าตูม',
        name_en: 'Tha Tum',
        url_safe: 'tha-tum',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3204',
        name_ja: 'Chom Phra',
        name_th: 'อ.จอมพระ',
        name_en: 'Chom Phra',
        url_safe: 'chom-phra',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3205',
        name_ja: 'Prasat',
        name_th: 'อ.ปราสาท',
        name_en: 'Prasat',
        url_safe: 'prasat',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3206',
        name_ja: 'Kap Choeng',
        name_th: 'อ.กาบเชิง',
        name_en: 'Kap Choeng',
        url_safe: 'kap-choeng',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3207',
        name_ja: 'Rattanaburi',
        name_th: 'อ.รัตนบุรี',
        name_en: 'Rattanaburi',
        url_safe: 'rattanaburi',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3208',
        name_ja: 'Sanom',
        name_th: 'อ.สนม',
        name_en: 'Sanom',
        url_safe: 'sanom',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3209',
        name_ja: 'Sikhoraphum',
        name_th: 'อ.ศีขรภูมิ',
        name_en: 'Sikhoraphum',
        url_safe: 'sikhoraphum',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3210',
        name_ja: 'Sangkha',
        name_th: 'อ.สังขะ',
        name_en: 'Sangkha',
        url_safe: 'sangkha',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3211',
        name_ja: 'Lamduan',
        name_th: 'อ.ลำดวน',
        name_en: 'Lamduan',
        url_safe: 'lamduan',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3212',
        name_ja: 'Samrong Thap',
        name_th: 'อ.สำโรงทาบ',
        name_en: 'Samrong Thap',
        url_safe: 'samrong-thap',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3213',
        name_ja: 'Buachet',
        name_th: 'อ.บัวเชด',
        name_en: 'Buachet',
        url_safe: 'buachet',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3214',
        name_ja: 'Phanom Dong Rak',
        name_th: 'อ.พนมดงรัก',
        name_en: 'Phanom Dong Rak',
        url_safe: 'phanom-dong-rak',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3215',
        name_ja: 'Si Narong',
        name_th: 'อ.ศรีณรงค์',
        name_en: 'Si Narong',
        url_safe: 'si-narong',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3216',
        name_ja: 'Khwao Sinarin',
        name_th: 'อ.เขวาสินรินทร์',
        name_en: 'Khwao Sinarin',
        url_safe: 'khwao-sinarin',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3217',
        name_ja: 'Non Narai',
        name_th: 'อ.โนนนารายณ์',
        name_en: 'Non Narai',
        url_safe: 'non-narai',
        province_original_id: 'surin'
    )

    District.create(
        original_id: '3301',
        name_ja: 'Mueang Si Sa Ket',
        name_th: 'อ.เมืองศรีสะเกษ',
        name_en: 'Mueang Si Sa Ket',
        url_safe: 'mueang-si-sa-ket',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3302',
        name_ja: 'Yang Chum Noi',
        name_th: 'อ.ยางชุมน้อย',
        name_en: 'Yang Chum Noi',
        url_safe: 'yang-chum-noi',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3303',
        name_ja: 'Kanthararom',
        name_th: 'อ.กันทรารมย์',
        name_en: 'Kanthararom',
        url_safe: 'kanthararom',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3304',
        name_ja: 'Kantharalak',
        name_th: 'อ.กันทรลักษ์',
        name_en: 'Kantharalak',
        url_safe: 'kantharalak',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3305',
        name_ja: 'Khukhan',
        name_th: 'อ.ขุขันธ์',
        name_en: 'Khukhan',
        url_safe: 'khukhan',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3306',
        name_ja: 'Phrai Bueng',
        name_th: 'อ.ไพรบึง',
        name_en: 'Phrai Bueng',
        url_safe: 'phrai-bueng',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3307',
        name_ja: 'Prang Ku',
        name_th: 'อ.ปรางค์กู่',
        name_en: 'Prang Ku',
        url_safe: 'prang-ku',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3308',
        name_ja: 'Khun Han',
        name_th: 'อ.ขุนหาญ',
        name_en: 'Khun Han',
        url_safe: 'khun-han',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3309',
        name_ja: 'Rasi Salai',
        name_th: 'อ.ราษีไศล',
        name_en: 'Rasi Salai',
        url_safe: 'rasi-salai',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3310',
        name_ja: 'Uthumphon Phisai',
        name_th: 'อ.อุทุมพรพิสัย',
        name_en: 'Uthumphon Phisai',
        url_safe: 'uthumphon-phisai',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3311',
        name_ja: 'Bueng Bun',
        name_th: 'อ.บึงบูรพ์',
        name_en: 'Bueng Bun',
        url_safe: 'bueng-bun',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3312',
        name_ja: 'Huai Thap Than',
        name_th: 'อ.ห้วยทับทัน',
        name_en: 'Huai Thap Than',
        url_safe: 'huai-thap-than',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3313',
        name_ja: 'Non Khun',
        name_th: 'อ.โนนคูณ',
        name_en: 'Non Khun',
        url_safe: 'non-khun',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3314',
        name_ja: 'Si Rattana',
        name_th: 'อ.ศรีรัตนะ',
        name_en: 'Si Rattana',
        url_safe: 'si-rattana',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3315',
        name_ja: 'Nam Kliang',
        name_th: 'อ.น้ำเกลี้ยง',
        name_en: 'Nam Kliang',
        url_safe: 'nam-kliang',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3316',
        name_ja: 'Wang Hin',
        name_th: 'อ.วังหิน',
        name_en: 'Wang Hin',
        url_safe: 'wang-hin',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3317',
        name_ja: 'Phu Sing',
        name_th: 'อ.ภูสิงห์',
        name_en: 'Phu Sing',
        url_safe: 'phu-sing',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3318',
        name_ja: 'Mueang Chan',
        name_th: 'อ.เมืองจันทร์',
        name_en: 'Mueang Chan',
        url_safe: 'mueang-chan',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3319',
        name_ja: 'Benchalak',
        name_th: 'อ.เบญจลักษ์',
        name_en: 'Benchalak',
        url_safe: 'benchalak',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3320',
        name_ja: 'Phayu',
        name_th: 'อ.พยุห์',
        name_en: 'Phayu',
        url_safe: 'phayu',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3321',
        name_ja: 'Pho Si Suwan',
        name_th: 'อ.โพธิ์ศรีสุวรรณ',
        name_en: 'Pho Si Suwan',
        url_safe: 'pho-si-suwan',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3322',
        name_ja: 'Sila Lat',
        name_th: 'อ.ศิลาลาด',
        name_en: 'Sila Lat',
        url_safe: 'sila-lat',
        province_original_id: 'si-sa-ket'
    )

    District.create(
        original_id: '3401',
        name_ja: 'Mueang Ubon Ratchathani',
        name_th: 'อ.เมืองอุบลราชธานี',
        name_en: 'Mueang Ubon Ratchathani',
        url_safe: 'mueang-ubon-ratchathani',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3402',
        name_ja: 'Si Mueang Mai',
        name_th: 'อ.ศรีเมืองใหม่',
        name_en: 'Si Mueang Mai',
        url_safe: 'si-mueang-mai',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3403',
        name_ja: 'Khong Chiam',
        name_th: 'อ.โขงเจียม',
        name_en: 'Khong Chiam',
        url_safe: 'khong-chiam',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3404',
        name_ja: 'Khueang Nai',
        name_th: 'อ.เขื่องใน',
        name_en: 'Khueang Nai',
        url_safe: 'khueang-nai',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3405',
        name_ja: 'Khemarat',
        name_th: 'อ.เขมราฐ',
        name_en: 'Khemarat',
        url_safe: 'khemarat',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3407',
        name_ja: 'Det Udom',
        name_th: 'อ.เดชอุดม',
        name_en: 'Det Udom',
        url_safe: 'det-udom',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3408',
        name_ja: 'Na Chaluai',
        name_th: 'อ.นาจะหลวย',
        name_en: 'Na Chaluai',
        url_safe: 'na-chaluai',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3409',
        name_ja: 'Nam Yuen',
        name_th: 'อ.น้ำยืน',
        name_en: 'Nam Yuen',
        url_safe: 'nam-yuen',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3410',
        name_ja: 'Boontharik',
        name_th: 'อ.บุณฑริก',
        name_en: 'Boontharik',
        url_safe: 'boontharik',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3411',
        name_ja: 'Trakan Phuet Phon',
        name_th: 'อ.ตระการพืชผล',
        name_en: 'Trakan Phuet Phon',
        url_safe: 'trakan-phuet-phon',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3412',
        name_ja: 'Kut Khaopun',
        name_th: 'อ.กุดข้าวปุ้น',
        name_en: 'Kut Khaopun',
        url_safe: 'kut-khaopun',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3414',
        name_ja: 'Muang Sam Sip',
        name_th: 'อ.ม่วงสามสิบ',
        name_en: 'Muang Sam Sip',
        url_safe: 'muang-sam-sip',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3415',
        name_ja: 'Warin Chamrap',
        name_th: 'อ.วารินชำราบ',
        name_en: 'Warin Chamrap',
        url_safe: 'warin-chamrap',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3419',
        name_ja: 'Phibun Mangsahan',
        name_th: 'อ.พิบูลมังสาหาร',
        name_en: 'Phibun Mangsahan',
        url_safe: 'phibun-mangsahan',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3420',
        name_ja: 'Tan Sum',
        name_th: 'อ.ตาลสุม',
        name_en: 'Tan Sum',
        url_safe: 'tan-sum',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3421',
        name_ja: 'Pho Sai',
        name_th: 'อ.โพธิ์ไทร',
        name_en: 'Pho Sai',
        url_safe: 'pho-sai',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3422',
        name_ja: 'Samrong',
        name_th: 'อ.สำโรง',
        name_en: 'Samrong',
        url_safe: 'samrong',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3424',
        name_ja: 'Don Mot Daeng',
        name_th: 'อ.ดอนมดแดง',
        name_en: 'Don Mot Daeng',
        url_safe: 'don-mot-daeng',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3425',
        name_ja: 'Sirindhorn',
        name_th: 'อ.สิรินธร',
        name_en: 'Sirindhorn',
        url_safe: 'sirindhorn',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3426',
        name_ja: 'Thung Si Udom',
        name_th: 'อ.ทุ่งศรีอุดม',
        name_en: 'Thung Si Udom',
        url_safe: 'thung-si-udom',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3429',
        name_ja: 'Na Yia',
        name_th: 'อ.นาเยีย',
        name_en: 'Na Yia',
        url_safe: 'na-yia',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3430',
        name_ja: 'Na Tan',
        name_th: 'อ.นาตาล',
        name_en: 'Na Tan',
        url_safe: 'na-tan',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3431',
        name_ja: 'Lao Suea Kok',
        name_th: 'อ.เหล่าเสือโก้ก',
        name_en: 'Lao Suea Kok',
        url_safe: 'lao-suea-kok',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3432',
        name_ja: 'Sawang Wirawong',
        name_th: 'อ.สว่างวีระวงศ์',
        name_en: 'Sawang Wirawong',
        url_safe: 'sawang-wirawong',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3433',
        name_ja: 'Nam Khun',
        name_th: 'อ.น้ำขุ่น',
        name_en: 'Nam Khun',
        url_safe: 'nam-khun',
        province_original_id: 'ubon-ratchathani'
    )

    District.create(
        original_id: '3501',
        name_ja: 'Mueang Yasothon',
        name_th: 'อ.เมืองยโสธร',
        name_en: 'Mueang Yasothon',
        url_safe: 'mueang-yasothon',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3502',
        name_ja: 'Sai Mun',
        name_th: 'อ.ทรายมูล',
        name_en: 'Sai Mun',
        url_safe: 'sai-mun',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3503',
        name_ja: 'Kut Chum',
        name_th: 'อ.กุดชุม',
        name_en: 'Kut Chum',
        url_safe: 'kut-chum',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3504',
        name_ja: 'Kham Khuean Kaeo',
        name_th: 'อ.คำเขื่อนแก้ว',
        name_en: 'Kham Khuean Kaeo',
        url_safe: 'kham-khuean-kaeo',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3505',
        name_ja: 'Pa Tio',
        name_th: 'อ.ป่าติ้ว',
        name_en: 'Pa Tio',
        url_safe: 'pa-tio',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3506',
        name_ja: 'Maha Chana Chai',
        name_th: 'อ.มหาชนะชัย',
        name_en: 'Maha Chana Chai',
        url_safe: 'maha-chana-chai',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3507',
        name_ja: 'Kho Wang',
        name_th: 'อ.ค้อวัง',
        name_en: 'Kho Wang',
        url_safe: 'kho-wang',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3508',
        name_ja: 'Loeng Nok Tha',
        name_th: 'อ.เลิงนกทา',
        name_en: 'Loeng Nok Tha',
        url_safe: 'loeng-nok-tha',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3509',
        name_ja: 'Thai Charoen',
        name_th: 'อ.ไทยเจริญ',
        name_en: 'Thai Charoen',
        url_safe: 'thai-charoen',
        province_original_id: 'yasothon'
    )

    District.create(
        original_id: '3601',
        name_ja: 'Mueang Chaiyaphum',
        name_th: 'อ.เมืองชัยภูมิ',
        name_en: 'Mueang Chaiyaphum',
        url_safe: 'mueang-chaiyaphum',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3602',
        name_ja: 'Ban Khwao',
        name_th: 'อ.บ้านเขว้า',
        name_en: 'Ban Khwao',
        url_safe: 'ban-khwao',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3603',
        name_ja: 'Khon Sawan',
        name_th: 'อ.คอนสวรรค์',
        name_en: 'Khon Sawan',
        url_safe: 'khon-sawan',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3604',
        name_ja: 'Kaset Sombun',
        name_th: 'อ.เกษตรสมบูรณ์',
        name_en: 'Kaset Sombun',
        url_safe: 'kaset-sombun',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3605',
        name_ja: 'Nong Bua Daeng',
        name_th: 'อ.หนองบัวแดง',
        name_en: 'Nong Bua Daeng',
        url_safe: 'nong-bua-daeng',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3606',
        name_ja: 'Chatturat',
        name_th: 'อ.จัตุรัส',
        name_en: 'Chatturat',
        url_safe: 'chatturat',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3607',
        name_ja: 'Bamnet Narong',
        name_th: 'อ.บำเหน็จณรงค์',
        name_en: 'Bamnet Narong',
        url_safe: 'bamnet-narong',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3608',
        name_ja: 'Nong Bua Rawe',
        name_th: 'อ.หนองบัวระเหว',
        name_en: 'Nong Bua Rawe',
        url_safe: 'nong-bua-rawe',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3609',
        name_ja: 'Thep Sathit',
        name_th: 'อ.เทพสถิต',
        name_en: 'Thep Sathit',
        url_safe: 'thep-sathit',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3610',
        name_ja: 'Phu Khiao',
        name_th: 'อ.ภูเขียว',
        name_en: 'Phu Khiao',
        url_safe: 'phu-khiao',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3611',
        name_ja: 'Ban Thaen',
        name_th: 'อ.บ้านแท่น',
        name_en: 'Ban Thaen',
        url_safe: 'ban-thaen',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3612',
        name_ja: 'Kaeng Khro',
        name_th: 'อ.แก้งคร้อ',
        name_en: 'Kaeng Khro',
        url_safe: 'kaeng-khro',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3613',
        name_ja: 'Khon San',
        name_th: 'อ.คอนสาร',
        name_en: 'Khon San',
        url_safe: 'khon-san',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3614',
        name_ja: 'Phakdi Chumphon',
        name_th: 'อ.ภักดีชุมพล',
        name_en: 'Phakdi Chumphon',
        url_safe: 'phakdi-chumphon',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3615',
        name_ja: 'Noen Sa-nga',
        name_th: 'อ.เนินสง่า',
        name_en: 'Noen Sa-nga',
        url_safe: 'noen-sa-nga',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3616',
        name_ja: 'Sap Yai',
        name_th: 'อ.ซับใหญ่',
        name_en: 'Sap Yai',
        url_safe: 'sap-yai',
        province_original_id: 'chaiyaphum'
    )

    District.create(
        original_id: '3701',
        name_ja: 'Mueang Amnat Charoen',
        name_th: 'อ.เมืองอำนาจเจริญ',
        name_en: 'Mueang Amnat Charoen',
        url_safe: 'mueang-amnat-charoen',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3702',
        name_ja: 'Chanuman',
        name_th: 'อ.ชานุมาน',
        name_en: 'Chanuman',
        url_safe: 'chanuman',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3703',
        name_ja: 'Pathum Ratchawongsa',
        name_th: 'อ.ปทุมราชวงศา',
        name_en: 'Pathum Ratchawongsa',
        url_safe: 'pathum-ratchawongsa',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3704',
        name_ja: 'Phana',
        name_th: 'อ.พนา',
        name_en: 'Phana',
        url_safe: 'phana',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3705',
        name_ja: 'Senangkhanikhom',
        name_th: 'อ.เสนางคนิคม',
        name_en: 'Senangkhanikhom',
        url_safe: 'senangkhanikhom',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3706',
        name_ja: 'Hua Taphan',
        name_th: 'อ.หัวตะพาน',
        name_en: 'Hua Taphan',
        url_safe: 'hua-taphan',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3707',
        name_ja: 'Lue Amnat',
        name_th: 'อ.ลืออำนาจ',
        name_en: 'Lue Amnat',
        url_safe: 'lue-amnat',
        province_original_id: 'amnat-charoen'
    )

    District.create(
        original_id: '3801',
        name_ja: 'Bueng Kan',
        name_th: 'อ.บึงกาฬ',
        name_en: 'Bueng Kan',
        url_safe: 'bueng-kan',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3802',
        name_ja: 'Phon Charoen',
        name_th: 'อ.พรเจริญ',
        name_en: 'Phon Charoen',
        url_safe: 'phon-charoen',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3803',
        name_ja: 'So Phisai',
        name_th: 'อ.โซ่พิสัย',
        name_en: 'So Phisai',
        url_safe: 'so-phisai',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3804',
        name_ja: 'Seka',
        name_th: 'อ.เซกา',
        name_en: 'Seka',
        url_safe: 'seka',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3805',
        name_ja: 'Pak Khat',
        name_th: 'อ.ปากคาด',
        name_en: 'Pak Khat',
        url_safe: 'pak-khat',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3806',
        name_ja: 'Bueng Khong Long',
        name_th: 'อ.บึงโขงหลง',
        name_en: 'Bueng Khong Long',
        url_safe: 'bueng-khong-long',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3807',
        name_ja: 'Si Wilai',
        name_th: 'อ.ศรีวิไล',
        name_en: 'Si Wilai',
        url_safe: 'si-wilai',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3808',
        name_ja: 'Bung Khla',
        name_th: 'อ.บุ่งคล้า',
        name_en: 'Bung Khla',
        url_safe: 'bung-khla',
        province_original_id: 'bueng-kan'
    )

    District.create(
        original_id: '3901',
        name_ja: 'Mueang Nong Bua Lam Phu',
        name_th: 'อ.เมืองหนองบัวลำภู',
        name_en: 'Mueang Nong Bua Lam Phu',
        url_safe: 'mueang-nong-bua-lam-phu',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '3902',
        name_ja: 'Na Klang',
        name_th: 'อ.นากลาง',
        name_en: 'Na Klang',
        url_safe: 'na-klang',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '3903',
        name_ja: 'Non Sang',
        name_th: 'อ.โนนสัง',
        name_en: 'Non Sang',
        url_safe: 'non-sang',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '3904',
        name_ja: 'Si Bun Rueang',
        name_th: 'อ.ศรีบุญเรือง',
        name_en: 'Si Bun Rueang',
        url_safe: 'si-bun-rueang',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '3905',
        name_ja: 'Suwannakhuha',
        name_th: 'อ.สุวรรณคูหา',
        name_en: 'Suwannakhuha',
        url_safe: 'suwannakhuha',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '3906',
        name_ja: 'Na Wang',
        name_th: 'อ.นาวัง',
        name_en: 'Na Wang',
        url_safe: 'na-wang',
        province_original_id: 'nong-bua-lam-phu'
    )

    District.create(
        original_id: '4001',
        name_ja: 'Mueang Khon Kaen',
        name_th: 'อ.เมืองขอนแก่น',
        name_en: 'Mueang Khon Kaen',
        url_safe: 'mueang-khon-kaen',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4002',
        name_ja: 'Ban Fang',
        name_th: 'อ.บ้านฝาง',
        name_en: 'Ban Fang',
        url_safe: 'ban-fang',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4003',
        name_ja: 'Phra Yuen',
        name_th: 'อ.พระยืน',
        name_en: 'Phra Yuen',
        url_safe: 'phra-yuen',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4004',
        name_ja: 'Nong Ruea',
        name_th: 'อ.หนองเรือ',
        name_en: 'Nong Ruea',
        url_safe: 'nong-ruea',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4005',
        name_ja: 'Chum Phae',
        name_th: 'อ.ชุมแพ',
        name_en: 'Chum Phae',
        url_safe: 'chum-phae',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4006',
        name_ja: 'Si Chomphu',
        name_th: 'อ.สีชมพู',
        name_en: 'Si Chomphu',
        url_safe: 'si-chomphu',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4007',
        name_ja: 'Nam Phong',
        name_th: 'อ.น้ำพอง',
        name_en: 'Nam Phong',
        url_safe: 'nam-phong',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4008',
        name_ja: 'Ubolratana',
        name_th: 'อ.อุบลรัตน์',
        name_en: 'Ubolratana',
        url_safe: 'ubolratana',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4009',
        name_ja: 'Kranuan',
        name_th: 'อ.กระนวน',
        name_en: 'Kranuan',
        url_safe: 'kranuan',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4010',
        name_ja: 'Ban Phai',
        name_th: 'อ.บ้านไผ่',
        name_en: 'Ban Phai',
        url_safe: 'ban-phai',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4011',
        name_ja: 'Pueai Noi',
        name_th: 'อ.เปือยน้อย',
        name_en: 'Pueai Noi',
        url_safe: 'pueai-noi',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4012',
        name_ja: 'Phon',
        name_th: 'อ.พล',
        name_en: 'Phon',
        url_safe: 'phon',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4013',
        name_ja: 'Waeng Yai',
        name_th: 'อ.แวงใหญ่',
        name_en: 'Waeng Yai',
        url_safe: 'waeng-yai',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4014',
        name_ja: 'Waeng Noi',
        name_th: 'อ.แวงน้อย',
        name_en: 'Waeng Noi',
        url_safe: 'waeng-noi',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4015',
        name_ja: 'Nong Song Hong',
        name_th: 'อ.หนองสองห้อง',
        name_en: 'Nong Song Hong',
        url_safe: 'nong-song-hong',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4016',
        name_ja: 'Phu Wiang',
        name_th: 'อ.ภูเวียง',
        name_en: 'Phu Wiang',
        url_safe: 'phu-wiang',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4017',
        name_ja: 'Mancha Khiri',
        name_th: 'อ.มัญจาคีรี',
        name_en: 'Mancha Khiri',
        url_safe: 'mancha-khiri',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4018',
        name_ja: 'Chonnabot',
        name_th: 'อ.ชนบท',
        name_en: 'Chonnabot',
        url_safe: 'chonnabot',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4019',
        name_ja: 'Khao Suan Kwang',
        name_th: 'อ.เขาสวนกวาง',
        name_en: 'Khao Suan Kwang',
        url_safe: 'khao-suan-kwang',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4020',
        name_ja: 'Phu Phaman',
        name_th: 'อ.ภูผาม่าน',
        name_en: 'Phu Phaman',
        url_safe: 'phu-phaman',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4021',
        name_ja: 'Sam Sung',
        name_th: 'อ.ซำสูง',
        name_en: 'Sam Sung',
        url_safe: 'sam-sung',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4022',
        name_ja: 'Khok Pho Chai',
        name_th: 'อ.โคกโพธิ์ไชย',
        name_en: 'Khok Pho Chai',
        url_safe: 'khok-pho-chai',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4023',
        name_ja: 'Nong Na Kham',
        name_th: 'อ.หนองนาคำ',
        name_en: 'Nong Na Kham',
        url_safe: 'nong-na-kham',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4024',
        name_ja: 'Ban Haet',
        name_th: 'อ.บ้านแฮด',
        name_en: 'Ban Haet',
        url_safe: 'ban-haet',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4025',
        name_ja: 'Non Sila',
        name_th: 'อ.โนนศิลา',
        name_en: 'Non Sila',
        url_safe: 'non-sila',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4026',
        name_ja: 'Wiang Kao',
        name_th: 'อ.เวียงเก่า',
        name_en: 'Wiang Kao',
        url_safe: 'wiang-kao',
        province_original_id: 'khon-kaen'
    )

    District.create(
        original_id: '4101',
        name_ja: 'Mueang Udon Thani',
        name_th: 'อ.เมืองอุดรธานี',
        name_en: 'Mueang Udon Thani',
        url_safe: 'mueang-udon-thani',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4102',
        name_ja: 'Kut Chap',
        name_th: 'อ.กุดจับ',
        name_en: 'Kut Chap',
        url_safe: 'kut-chap',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4103',
        name_ja: 'Nong Wua So',
        name_th: 'อ.หนองวัวซอ',
        name_en: 'Nong Wua So',
        url_safe: 'nong-wua-so',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4104',
        name_ja: 'Kumphawapi',
        name_th: 'อ.กุมภวาปี',
        name_en: 'Kumphawapi',
        url_safe: 'kumphawapi',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4105',
        name_ja: 'Non Sa-at',
        name_th: 'อ.โนนสะอาด',
        name_en: 'Non Sa-at',
        url_safe: 'non-sa-at',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4106',
        name_ja: 'Nong Saeng',
        name_th: 'อ.หนองหาน',
        name_en: 'Nong Saeng',
        url_safe: 'nong-saeng',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4107',
        name_ja: 'Thung Fon',
        name_th: 'อ.ทุ่งฝน',
        name_en: 'Thung Fon',
        url_safe: 'thung-fon',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4108',
        name_ja: 'Chai Wan',
        name_th: 'อ.ไชยวาน',
        name_en: 'Chai Wan',
        url_safe: 'chai-wan',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4109',
        name_ja: 'Si That',
        name_th: 'อ.ศรีธาตุ',
        name_en: 'Si That',
        url_safe: 'si-that',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4110',
        name_ja: 'Wang Sam Mo',
        name_th: 'อ.วังสามหมอ',
        name_en: 'Wang Sam Mo',
        url_safe: 'wang-sam-mo',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4111',
        name_ja: 'Ban Dung',
        name_th: 'อ.บ้านดุง',
        name_en: 'Ban Dung',
        url_safe: 'ban-dung',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4117',
        name_ja: 'Ban Phue',
        name_th: 'อ.บ้านผือ',
        name_en: 'Ban Phue',
        url_safe: 'ban-phue',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4118',
        name_ja: 'Nam Som',
        name_th: 'อ.น้ำโสม',
        name_en: 'Nam Som',
        url_safe: 'nam-som',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4119',
        name_ja: 'Phen',
        name_th: 'อ.เพ็ญ',
        name_en: 'Phen',
        url_safe: 'phen',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4120',
        name_ja: 'Sang Khom',
        name_th: 'อ.สร้างคอม',
        name_en: 'Sang Khom',
        url_safe: 'sang-khom',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4121',
        name_ja: 'Nong Saeng',
        name_th: 'อ.หนองแสง',
        name_en: 'Nong Saeng',
        url_safe: 'nong-saeng',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4122',
        name_ja: 'Na Yung',
        name_th: 'อ.นายูง',
        name_en: 'Na Yung',
        url_safe: 'na-yung',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4123',
        name_ja: 'Phibun Rak',
        name_th: 'อ.พิบูลย์รักษ์',
        name_en: 'Phibun Rak',
        url_safe: 'phibun-rak',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4124',
        name_ja: 'Ku Kaeo',
        name_th: 'อ.กู่แก้ว',
        name_en: 'Ku Kaeo',
        url_safe: 'ku-kaeo',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4125',
        name_ja: 'Prachaksinlapakhom',
        name_th: 'อ.ประจักษ์ศิลปาคม',
        name_en: 'Prachaksinlapakhom',
        url_safe: 'prachaksinlapakhom',
        province_original_id: 'udon-thani'
    )

    District.create(
        original_id: '4201',
        name_ja: 'Mueang Loei',
        name_th: 'อ.เมืองเลย',
        name_en: 'Mueang Loei',
        url_safe: 'mueang-loei',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4202',
        name_ja: 'Na Duang',
        name_th: 'อ.นาด้วง',
        name_en: 'Na Duang',
        url_safe: 'na-duang',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4203',
        name_ja: 'Chiang Khan',
        name_th: 'อ.เชียงคาน',
        name_en: 'Chiang Khan',
        url_safe: 'chiang-khan',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4204',
        name_ja: 'Pak Chom',
        name_th: 'อ.ปากชม',
        name_en: 'Pak Chom',
        url_safe: 'pak-chom',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4205',
        name_ja: 'Dan Sai',
        name_th: 'อ.ด่านซ้าย',
        name_en: 'Dan Sai',
        url_safe: 'dan-sai',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4206',
        name_ja: 'Na Haeo',
        name_th: 'อ.นาแห้ว',
        name_en: 'Na Haeo',
        url_safe: 'na-haeo',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4207',
        name_ja: 'Phu Ruea',
        name_th: 'อ.ภูเรือ',
        name_en: 'Phu Ruea',
        url_safe: 'phu-ruea',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4208',
        name_ja: 'Tha Li',
        name_th: 'อ.ท่าลี่',
        name_en: 'Tha Li',
        url_safe: 'tha-li',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4209',
        name_ja: 'Wang Saphung',
        name_th: 'อ.วังสะพุง',
        name_en: 'Wang Saphung',
        url_safe: 'wang-saphung',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4210',
        name_ja: 'Phu Kradueng',
        name_th: 'อ.ภูกระดึง',
        name_en: 'Phu Kradueng',
        url_safe: 'phu-kradueng',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4211',
        name_ja: 'Phu Luang',
        name_th: 'อ.ภูหลวง',
        name_en: 'Phu Luang',
        url_safe: 'phu-luang',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4212',
        name_ja: 'Pha Khao',
        name_th: 'อ.ผาขาว',
        name_en: 'Pha Khao',
        url_safe: 'pha-khao',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4213',
        name_ja: 'Erawan',
        name_th: 'อ.เอราวัณ',
        name_en: 'Erawan',
        url_safe: 'erawan',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4214',
        name_ja: 'Nong Hin',
        name_th: 'อ.หนองหิน',
        name_en: 'Nong Hin',
        url_safe: 'nong-hin',
        province_original_id: 'loei'
    )

    District.create(
        original_id: '4301',
        name_ja: 'Mueang Nong Khai',
        name_th: 'อ.เมืองหนองคาย',
        name_en: 'Mueang Nong Khai',
        url_safe: 'mueang-nong-khai',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4302',
        name_ja: 'Tha Bo',
        name_th: 'อ.ท่าบ่อ',
        name_en: 'Tha Bo',
        url_safe: 'tha-bo',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4305',
        name_ja: 'Phon Phisai',
        name_th: 'อ.โพนพิสัย',
        name_en: 'Phon Phisai',
        url_safe: 'phon-phisai',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4307',
        name_ja: 'Si Chiang Mai',
        name_th: 'อ.ศรีเชียงใหม่',
        name_en: 'Si Chiang Mai',
        url_safe: 'si-chiang-mai',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4308',
        name_ja: 'Sangkhom',
        name_th: 'อ.สังคม',
        name_en: 'Sangkhom',
        url_safe: 'sangkhom',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4314',
        name_ja: 'Sakhrai',
        name_th: 'อ.สระใคร',
        name_en: 'Sakhrai',
        url_safe: 'sakhrai',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4315',
        name_ja: 'Fao Rai',
        name_th: 'อ.เฝ้าไร่',
        name_en: 'Fao Rai',
        url_safe: 'fao-rai',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4316',
        name_ja: 'Rattanawapi',
        name_th: 'อ.รัตนวาปี',
        name_en: 'Rattanawapi',
        url_safe: 'rattanawapi',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4317',
        name_ja: 'Pho Tak',
        name_th: 'อ.โพธิ์ตาก',
        name_en: 'Pho Tak',
        url_safe: 'pho-tak',
        province_original_id: 'nong-khai'
    )

    District.create(
        original_id: '4401',
        name_ja: 'Mueang Maha Sarakham',
        name_th: 'อ.เมืองมหาสารคาม',
        name_en: 'Mueang Maha Sarakham',
        url_safe: 'mueang-maha-sarakham',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4402',
        name_ja: 'Kae Dam',
        name_th: 'อ.แกดำ',
        name_en: 'Kae Dam',
        url_safe: 'kae-dam',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4403',
        name_ja: 'Kosum Phisai',
        name_th: 'อ.โกสุมพิสัย',
        name_en: 'Kosum Phisai',
        url_safe: 'kosum-phisai',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4404',
        name_ja: 'Kantharawichai',
        name_th: 'อ.กันทรวิชัย',
        name_en: 'Kantharawichai',
        url_safe: 'kantharawichai',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4405',
        name_ja: 'Chiang Yuen',
        name_th: 'อ.เชียงยืน',
        name_en: 'Chiang Yuen',
        url_safe: 'chiang-yuen',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4406',
        name_ja: 'Borabue',
        name_th: 'อ.บรบือ',
        name_en: 'Borabue',
        url_safe: 'borabue',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4407',
        name_ja: 'Na Chueak',
        name_th: 'อ.นาเชือก',
        name_en: 'Na Chueak',
        url_safe: 'na-chueak',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4408',
        name_ja: 'Phayakkhaphum Phisai',
        name_th: 'อ.พยัคฆภูมิพิสัย',
        name_en: 'Phayakkhaphum Phisai',
        url_safe: 'phayakkhaphum-phisai',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4409',
        name_ja: 'Wapi Pathum',
        name_th: 'อ.วาปีปทุม',
        name_en: 'Wapi Pathum',
        url_safe: 'wapi-pathum',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4410',
        name_ja: 'Na Dun',
        name_th: 'อ.นาดูน',
        name_en: 'Na Dun',
        url_safe: 'na-dun',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4411',
        name_ja: 'Yang Sisurat',
        name_th: 'อ.ยางสีสุราช',
        name_en: 'Yang Sisurat',
        url_safe: 'yang-sisurat',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4412',
        name_ja: 'Kut Rang',
        name_th: 'อ.กุดรัง',
        name_en: 'Kut Rang',
        url_safe: 'kut-rang',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4413',
        name_ja: 'Chuen Chom',
        name_th: 'อ.ชื่นชม',
        name_en: 'Chuen Chom',
        url_safe: 'chuen-chom',
        province_original_id: 'maha-sarakham'
    )

    District.create(
        original_id: '4501',
        name_ja: 'Mueang Roi Et',
        name_th: 'อ.เมืองร้อยเอ็ด',
        name_en: 'Mueang Roi Et',
        url_safe: 'mueang-roi-et',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4502',
        name_ja: 'Kaset Wisai',
        name_th: 'อ.เกษตรวิสัย',
        name_en: 'Kaset Wisai',
        url_safe: 'kaset-wisai',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4503',
        name_ja: 'Pathum Rat',
        name_th: 'อ.ปทุมรัตต์',
        name_en: 'Pathum Rat',
        url_safe: 'pathum-rat',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4504',
        name_ja: 'Chaturaphak Phiman',
        name_th: 'อ.จตุรพักตรพิมาน',
        name_en: 'Chaturaphak Phiman',
        url_safe: 'chaturaphak-phiman',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4505',
        name_ja: 'Thawat Buri',
        name_th: 'อ.ธวัชบุรี',
        name_en: 'Thawat Buri',
        url_safe: 'thawat-buri',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4506',
        name_ja: 'Phanom Phrai',
        name_th: 'อ.พนมไพร',
        name_en: 'Phanom Phrai',
        url_safe: 'phanom-phrai',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4507',
        name_ja: 'Phon Thong',
        name_th: 'อ.โพนทอง',
        name_en: 'Phon Thong',
        url_safe: 'phon-thong',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4508',
        name_ja: 'Pho Chai',
        name_th: 'อ.โพธิ์ชัย',
        name_en: 'Pho Chai',
        url_safe: 'pho-chai',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4509',
        name_ja: 'Nong Phok',
        name_th: 'อ.หนองพอก',
        name_en: 'Nong Phok',
        url_safe: 'nong-phok',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4510',
        name_ja: 'Selaphum',
        name_th: 'อ.เสลภูมิ',
        name_en: 'Selaphum',
        url_safe: 'selaphum',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4511',
        name_ja: 'Suwannaphum',
        name_th: 'อ.สุวรรณภูมิ',
        name_en: 'Suwannaphum',
        url_safe: 'suwannaphum',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4512',
        name_ja: 'Mueang Suang',
        name_th: 'อ.เมืองสรวง',
        name_en: 'Mueang Suang',
        url_safe: 'mueang-suang',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4513',
        name_ja: 'Phon Sai',
        name_th: 'อ.โพนทราย',
        name_en: 'Phon Sai',
        url_safe: 'phon-sai',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4514',
        name_ja: 'At Samat',
        name_th: 'อ.อาจสามารถ',
        name_en: 'At Samat',
        url_safe: 'at-samat',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4515',
        name_ja: 'Moei Wadi',
        name_th: 'อ.เมยวดี',
        name_en: 'Moei Wadi',
        url_safe: 'moei-wadi',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4516',
        name_ja: 'Si Somdet',
        name_th: 'อ.ศรีสมเด็จ',
        name_en: 'Si Somdet',
        url_safe: 'si-somdet',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4517',
        name_ja: 'Changhan',
        name_th: 'อ.จังหาร',
        name_en: 'Changhan',
        url_safe: 'changhan',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4518',
        name_ja: 'Chiang Khwan',
        name_th: 'อ.เชียงขวัญ',
        name_en: 'Chiang Khwan',
        url_safe: 'chiang-khwan',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4519',
        name_ja: 'Nong Hi',
        name_th: 'อ.หนองฮี',
        name_en: 'Nong Hi',
        url_safe: 'nong-hi',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4520',
        name_ja: 'Thung Khao Luang',
        name_th: 'อ.ทุ่งเขาหลวง',
        name_en: 'Thung Khao Luang',
        url_safe: 'thung-khao-luang',
        province_original_id: 'roi-et'
    )

    District.create(
        original_id: '4601',
        name_ja: 'Mueang Kalasin',
        name_th: 'อ.เมืองกาฬสินธุ์',
        name_en: 'Mueang Kalasin',
        url_safe: 'mueang-kalasin',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4602',
        name_ja: 'Na Mon',
        name_th: 'อ.นามน',
        name_en: 'Na Mon',
        url_safe: 'na-mon',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4603',
        name_ja: 'Kamalasai',
        name_th: 'อ.กมลาไสย',
        name_en: 'Kamalasai',
        url_safe: 'kamalasai',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4604',
        name_ja: 'Rong Kham',
        name_th: 'อ.ร่องคำ',
        name_en: 'Rong Kham',
        url_safe: 'rong-kham',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4605',
        name_ja: 'Kuchinarai',
        name_th: 'อ.กุฉินารายณ์',
        name_en: 'Kuchinarai',
        url_safe: 'kuchinarai',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4606',
        name_ja: 'Khao Wong',
        name_th: 'อ.เขาวง',
        name_en: 'Khao Wong',
        url_safe: 'khao-wong',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4607',
        name_ja: 'Yang Talat',
        name_th: 'อ.ยางตลาด',
        name_en: 'Yang Talat',
        url_safe: 'yang-talat',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4608',
        name_ja: 'Huai Mek',
        name_th: 'อ.ห้วยเม็ก',
        name_en: 'Huai Mek',
        url_safe: 'huai-mek',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4609',
        name_ja: 'Sahatsakhan',
        name_th: 'อ.สหัสขันธ์',
        name_en: 'Sahatsakhan',
        url_safe: 'sahatsakhan',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4610',
        name_ja: 'Kham Muang',
        name_th: 'อ.คำม่วง',
        name_en: 'Kham Muang',
        url_safe: 'kham-muang',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4611',
        name_ja: 'Tha Khantho',
        name_th: 'อ.ท่าคันโท',
        name_en: 'Tha Khantho',
        url_safe: 'tha-khantho',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4612',
        name_ja: 'Nong Kung Si',
        name_th: 'อ.หนองกุงศรี',
        name_en: 'Nong Kung Si',
        url_safe: 'nong-kung-si',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4613',
        name_ja: 'Somdet',
        name_th: 'อ.สมเด็จ',
        name_en: 'Somdet',
        url_safe: 'somdet',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4614',
        name_ja: 'Huai Phueng',
        name_th: 'อ.ห้วยผึ้ง',
        name_en: 'Huai Phueng',
        url_safe: 'huai-phueng',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4615',
        name_ja: 'Sam Chai',
        name_th: 'อ.สามชัย',
        name_en: 'Sam Chai',
        url_safe: 'sam-chai',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4616',
        name_ja: 'Na Khu',
        name_th: 'อ.นาคู',
        name_en: 'Na Khu',
        url_safe: 'na-khu',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4617',
        name_ja: 'Don Chan',
        name_th: 'อ.ดอนจาน',
        name_en: 'Don Chan',
        url_safe: 'don-chan',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4618',
        name_ja: 'Khong Chai',
        name_th: 'อ.ฆ้องชัย',
        name_en: 'Khong Chai',
        url_safe: 'khong-chai',
        province_original_id: 'kalasin'
    )

    District.create(
        original_id: '4701',
        name_ja: 'Mueang Sakon Nakhon',
        name_th: 'อ.เมืองสกลนคร',
        name_en: 'Mueang Sakon Nakhon',
        url_safe: 'mueang-sakon-nakhon',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4702',
        name_ja: 'Kusuman',
        name_th: 'อ.กุสุมาลย์',
        name_en: 'Kusuman',
        url_safe: 'kusuman',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4703',
        name_ja: 'Kut Bak',
        name_th: 'อ.กุดบาก',
        name_en: 'Kut Bak',
        url_safe: 'kut-bak',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4704',
        name_ja: 'Phanna Nikhom',
        name_th: 'อ.พรรณานิคม',
        name_en: 'Phanna Nikhom',
        url_safe: 'phanna-nikhom',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4705',
        name_ja: 'Phanh khon',
        name_th: 'อ.พังโคน',
        name_en: 'Phanh khon',
        url_safe: 'phanh-khon',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4706',
        name_ja: 'Waritchaphum',
        name_th: 'อ.วาริชภูมิ',
        name_en: 'Waritchaphum',
        url_safe: 'waritchaphum',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4707',
        name_ja: 'Nikhom Nam un',
        name_th: 'อ.นิคมน้ำอูน',
        name_en: 'Nikhom Nam un',
        url_safe: 'nikhom-nam-un',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4708',
        name_ja: 'Wanon Niwat',
        name_th: 'อ.วานรนิวาส',
        name_en: 'Wanon Niwat',
        url_safe: 'wanon-niwat',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4709',
        name_ja: 'Kham Ta Kla',
        name_th: 'อ.คำตากล้า',
        name_en: 'Kham Ta Kla',
        url_safe: 'kham-ta-kla',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4710',
        name_ja: 'Ban Muang',
        name_th: 'อ.บ้านม่วง',
        name_en: 'Ban Muang',
        url_safe: 'ban-muang',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4711',
        name_ja: 'Akat Amnuai',
        name_th: 'อ.อากาศอำนวย',
        name_en: 'Akat Amnuai',
        url_safe: 'akat-amnuai',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4712',
        name_ja: 'Sawang Daen Din',
        name_th: 'อ.สว่างแดนดิน',
        name_en: 'Sawang Daen Din',
        url_safe: 'sawang-daen-din',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4713',
        name_ja: 'Song Dao',
        name_th: 'อ.ส่องดาว',
        name_en: 'Song Dao',
        url_safe: 'song-dao',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4714',
        name_ja: 'Tao Ngoi',
        name_th: 'อ.เต่างอย',
        name_en: 'Tao Ngoi',
        url_safe: 'tao-ngoi',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4715',
        name_ja: 'Khok Si Suphan',
        name_th: 'อ.โคกศรีสุพรรณ',
        name_en: 'Khok Si Suphan',
        url_safe: 'khok-si-suphan',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4716',
        name_ja: 'Charoen Sin',
        name_th: 'อ.เจริญศิลป์',
        name_en: 'Charoen Sin',
        url_safe: 'charoen-sin',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4717',
        name_ja: 'Phon Na Kaeo',
        name_th: 'อ.โพนนาแก้ว',
        name_en: 'Phon Na Kaeo',
        url_safe: 'phon-na-kaeo',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4718',
        name_ja: 'Phu Phan',
        name_th: 'อ.ภูพาน',
        name_en: 'Phu Phan',
        url_safe: 'phu-phan',
        province_original_id: 'sakon-nakhon'
    )

    District.create(
        original_id: '4801',
        name_ja: 'Mueang Nakhon Phanom',
        name_th: 'อ.เมืองนครพนม',
        name_en: 'Mueang Nakhon Phanom',
        url_safe: 'mueang-nakhon-phanom',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4802',
        name_ja: 'Pla Pak',
        name_th: 'อ.ปลาปาก',
        name_en: 'Pla Pak',
        url_safe: 'pla-pak',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4803',
        name_ja: 'Tha Uthen',
        name_th: 'อ.ท่าอุเทน',
        name_en: 'Tha Uthen',
        url_safe: 'tha-uthen',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4804',
        name_ja: 'Ban Phaeng',
        name_th: 'อ.บ้านแพง',
        name_en: 'Ban Phaeng',
        url_safe: 'ban-phaeng',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4805',
        name_ja: 'That Phanom',
        name_th: 'อ.ธาตุพนม',
        name_en: 'That Phanom',
        url_safe: 'that-phanom',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4806',
        name_ja: 'Renu Nakhon',
        name_th: 'อ.เรณูนคร',
        name_en: 'Renu Nakhon',
        url_safe: 'renu-nakhon',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4807',
        name_ja: 'Na Kae',
        name_th: 'อ.นาแก',
        name_en: 'Na Kae',
        url_safe: 'na-kae',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4808',
        name_ja: 'Si Songkhram',
        name_th: 'อ.ศรีสงคราม',
        name_en: 'Si Songkhram',
        url_safe: 'si-songkhram',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4809',
        name_ja: 'Na Wa',
        name_th: 'อ.นาหว้า',
        name_en: 'Na Wa',
        url_safe: 'na-wa',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4810',
        name_ja: 'Phon Sawan',
        name_th: 'อ.โพนสวรรค์',
        name_en: 'Phon Sawan',
        url_safe: 'phon-sawan',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4811',
        name_ja: 'Na Thom',
        name_th: 'อ.นาทม',
        name_en: 'Na Thom',
        url_safe: 'na-thom',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4812',
        name_ja: 'Wang Yang',
        name_th: 'อ.วังยาง',
        name_en: 'Wang Yang',
        url_safe: 'wang-yang',
        province_original_id: 'nakhon-phanom'
    )

    District.create(
        original_id: '4901',
        name_ja: 'Mueang Mukdahan',
        name_th: 'อ.เมืองมุกดาหาร',
        name_en: 'Mueang Mukdahan',
        url_safe: 'mueang-mukdahan',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4902',
        name_ja: 'Nikhom Kham Soi',
        name_th: 'อ.นิคมคำสร้อย',
        name_en: 'Nikhom Kham Soi',
        url_safe: 'nikhom-kham-soi',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4903',
        name_ja: 'Don Tan',
        name_th: 'อ.ดอนตาล',
        name_en: 'Don Tan',
        url_safe: 'don-tan',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4904',
        name_ja: 'Don Tan',
        name_th: 'อ.ดงหลวง',
        name_en: 'Don Tan',
        url_safe: 'don-tan',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4905',
        name_ja: 'Khamcha-i',
        name_th: 'อ.คำชะอี',
        name_en: 'Khamcha-i',
        url_safe: 'khamcha-i',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4906',
        name_ja: 'Wan Yai',
        name_th: 'อ.ว่านใหญ่',
        name_en: 'Wan Yai',
        url_safe: 'wan-yai',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '4907',
        name_ja: 'Nong Sung',
        name_th: 'อ.หนองสูง',
        name_en: 'Nong Sung',
        url_safe: 'nong-sung',
        province_original_id: 'mukdahan'
    )

    District.create(
        original_id: '5001',
        name_ja: 'Mueang Chiang Mai',
        name_th: 'อ.เมืองเชียงใหม่',
        name_en: 'Mueang Chiang Mai',
        url_safe: 'mueang-chiang-mai',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5002',
        name_ja: 'Chom Thong',
        name_th: 'อ.จอมทอง',
        name_en: 'Chom Thong',
        url_safe: 'chom-thong',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5003',
        name_ja: 'Mae Chaem',
        name_th: 'อ.แม่แจ่ม',
        name_en: 'Mae Chaem',
        url_safe: 'mae-chaem',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5004',
        name_ja: 'Chiang Dao',
        name_th: 'อ.เชียงดาว',
        name_en: 'Chiang Dao',
        url_safe: 'chiang-dao',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5005',
        name_ja: 'Doi Saket',
        name_th: 'อ.ดอยสะเก็ด',
        name_en: 'Doi Saket',
        url_safe: 'doi-saket',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5006',
        name_ja: 'Mae Taeng',
        name_th: 'อ.แม่แตง',
        name_en: 'Mae Taeng',
        url_safe: 'mae-taeng',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5007',
        name_ja: 'Mae Rim',
        name_th: 'อ.แม่ริม',
        name_en: 'Mae Rim',
        url_safe: 'mae-rim',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5008',
        name_ja: 'Samoeng',
        name_th: 'อ.สะเมิง',
        name_en: 'Samoeng',
        url_safe: 'samoeng',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5009',
        name_ja: 'Fang',
        name_th: 'อ.ฝาง',
        name_en: 'Fang',
        url_safe: 'fang',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5010',
        name_ja: 'Mae Ai',
        name_th: 'อ.แม่อาย',
        name_en: 'Mae Ai',
        url_safe: 'mae-ai',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5011',
        name_ja: 'Phrao',
        name_th: 'อ.พร้าว',
        name_en: 'Phrao',
        url_safe: 'phrao',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5012',
        name_ja: 'San Pa Tong',
        name_th: 'อ.สันป่าตอง',
        name_en: 'San Pa Tong',
        url_safe: 'san-pa-tong',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5013',
        name_ja: 'San Kamphaeng',
        name_th: 'อ.สันกำแพง',
        name_en: 'San Kamphaeng',
        url_safe: 'san-kamphaeng',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5014',
        name_ja: 'San Sai',
        name_th: 'อ.สันทราย',
        name_en: 'San Sai',
        url_safe: 'san-sai',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5015',
        name_ja: 'Hang Dong',
        name_th: 'อ.หางดง',
        name_en: 'Hang Dong',
        url_safe: 'hang-dong',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5016',
        name_ja: 'Hot',
        name_th: 'อ.ฮอด',
        name_en: 'Hot',
        url_safe: 'hot',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5017',
        name_ja: 'Doi Tao',
        name_th: 'อ.ดอยเต่า',
        name_en: 'Doi Tao',
        url_safe: 'doi-tao',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5018',
        name_ja: 'Omkoi',
        name_th: 'อ.อมก๋อย',
        name_en: 'Omkoi',
        url_safe: 'omkoi',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5019',
        name_ja: 'Saraphi',
        name_th: 'อ.สารภี',
        name_en: 'Saraphi',
        url_safe: 'saraphi',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5020',
        name_ja: 'Wiang Haeng',
        name_th: 'อ.เวียงแหง',
        name_en: 'Wiang Haeng',
        url_safe: 'wiang-haeng',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5021',
        name_ja: 'Chai Prakan',
        name_th: 'อ.ไชยปราการ',
        name_en: 'Chai Prakan',
        url_safe: 'chai-prakan',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5022',
        name_ja: 'Mae Wang',
        name_th: 'อ.แม่วาง',
        name_en: 'Mae Wang',
        url_safe: 'mae-wang',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5023',
        name_ja: 'Mae On',
        name_th: 'อ.แม่ออน',
        name_en: 'Mae On',
        url_safe: 'mae-on',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5024',
        name_ja: 'Doi Lo',
        name_th: 'อ.ดอยหล่อ',
        name_en: 'Doi Lo',
        url_safe: 'doi-lo',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5025',
        name_ja: 'Kanlayaniwatthana',
        name_th: 'อ.กัลยาณิวัฒนา',
        name_en: 'Kanlayaniwatthana',
        url_safe: 'kanlayaniwatthana',
        province_original_id: 'chiang-mai'
    )

    District.create(
        original_id: '5101',
        name_ja: 'Mueang Lamphun',
        name_th: 'อ.เมืองลำพูน',
        name_en: 'Mueang Lamphun',
        url_safe: 'mueang-lamphun',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5102',
        name_ja: 'Mae Tha',
        name_th: 'อ.แม่ทา',
        name_en: 'Mae Tha',
        url_safe: 'mae-tha',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5103',
        name_ja: 'Ban Hong',
        name_th: 'อ.บ้านโฮ่ง',
        name_en: 'Ban Hong',
        url_safe: 'ban-hong',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5104',
        name_ja: 'Li',
        name_th: 'อ.ลี้',
        name_en: 'Li',
        url_safe: 'li',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5105',
        name_ja: 'Thung Hua Chang',
        name_th: 'อ.ทุ่งหัวช้าง',
        name_en: 'Thung Hua Chang',
        url_safe: 'thung-hua-chang',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5106',
        name_ja: 'Pa Sang',
        name_th: 'อ.ป่าซาง',
        name_en: 'Pa Sang',
        url_safe: 'pa-sang',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5107',
        name_ja: 'Ban Thi',
        name_th: 'อ.บ้านธิ',
        name_en: 'Ban Thi',
        url_safe: 'ban-thi',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5108',
        name_ja: 'Wiang Nong Long',
        name_th: 'อ.เวียงหนองล่อง',
        name_en: 'Wiang Nong Long',
        url_safe: 'wiang-nong-long',
        province_original_id: 'lamphun'
    )

    District.create(
        original_id: '5201',
        name_ja: 'Mueang Lampang',
        name_th: 'อ.เมืองลำปาง',
        name_en: 'Mueang Lampang',
        url_safe: 'mueang-lampang',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5202',
        name_ja: 'Mae Mo',
        name_th: 'อ.แม่เมาะ',
        name_en: 'Mae Mo',
        url_safe: 'mae-mo',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5203',
        name_ja: 'Ko kha',
        name_th: 'อ.เกาะคา',
        name_en: 'Ko kha',
        url_safe: 'ko-kha',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5204',
        name_ja: 'Soem Ngam',
        name_th: 'อ.เสริมงาม',
        name_en: 'Soem Ngam',
        url_safe: 'soem-ngam',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5205',
        name_ja: 'Ngao',
        name_th: 'อ.งาว',
        name_en: 'Ngao',
        url_safe: 'ngao',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5206',
        name_ja: 'Chae Hom',
        name_th: 'อ.แจ้ห่ม',
        name_en: 'Chae Hom',
        url_safe: 'chae-hom',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5207',
        name_ja: 'Wang Nuea',
        name_th: 'อ.วังเหนือ',
        name_en: 'Wang Nuea',
        url_safe: 'wang-nuea',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5208',
        name_ja: 'Thoen',
        name_th: 'อ.เถิน',
        name_en: 'Thoen',
        url_safe: 'thoen',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5209',
        name_ja: 'Mae Phrik',
        name_th: 'อ.แม่พริก',
        name_en: 'Mae Phrik',
        url_safe: 'mae-phrik',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5210',
        name_ja: 'Mae Tha',
        name_th: 'อ.แม่ทะ',
        name_en: 'Mae Tha',
        url_safe: 'mae-tha',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5211',
        name_ja: 'Sop Prap',
        name_th: 'อ.สบปราบ',
        name_en: 'Sop Prap',
        url_safe: 'sop-prap',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5212',
        name_ja: 'Hang Chat',
        name_th: 'อ.ห้างฉัตร',
        name_en: 'Hang Chat',
        url_safe: 'hang-chat',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5213',
        name_ja: 'Mueang Pan',
        name_th: 'อ.เมืองปาน',
        name_en: 'Mueang Pan',
        url_safe: 'mueang-pan',
        province_original_id: 'lampang'
    )

    District.create(
        original_id: '5301',
        name_ja: 'Mueang Uttaradit',
        name_th: 'อ.เมืองอุตรดิตถ์',
        name_en: 'Mueang Uttaradit',
        url_safe: 'mueang-uttaradit',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5302',
        name_ja: 'Tron',
        name_th: 'อ.ตรอน',
        name_en: 'Tron',
        url_safe: 'tron',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5303',
        name_ja: 'Tha Pla',
        name_th: 'อ.ท่าปลา',
        name_en: 'Tha Pla',
        url_safe: 'tha-pla',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5304',
        name_ja: 'Nam Pat',
        name_th: 'อ.น้ำปาด',
        name_en: 'Nam Pat',
        url_safe: 'nam-pat',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5305',
        name_ja: 'Fak Tha',
        name_th: 'อ.ฟากท่า',
        name_en: 'Fak Tha',
        url_safe: 'fak-tha',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5306',
        name_ja: 'Ban Khok',
        name_th: 'อ.บ้านโคก',
        name_en: 'Ban Khok',
        url_safe: 'ban-khok',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5307',
        name_ja: 'Phichai',
        name_th: 'อ.พิชัย',
        name_en: 'Phichai',
        url_safe: 'phichai',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5308',
        name_ja: 'Laplae',
        name_th: 'อ.ลับแล',
        name_en: 'Laplae',
        url_safe: 'laplae',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5309',
        name_ja: 'Thong Saen Khan',
        name_th: 'อ.ทองแสนขัน',
        name_en: 'Thong Saen Khan',
        url_safe: 'thong-saen-khan',
        province_original_id: 'uttaradit'
    )

    District.create(
        original_id: '5401',
        name_ja: 'Mueang Phrae',
        name_th: 'อ.เมืองแพร่',
        name_en: 'Mueang Phrae',
        url_safe: 'mueang-phrae',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5402',
        name_ja: 'Mueang Phrae',
        name_th: 'อ.ร้องกวาง',
        name_en: 'Mueang Phrae',
        url_safe: 'mueang-phrae',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5403',
        name_ja: 'Long',
        name_th: 'อ.ลอง',
        name_en: 'Long',
        url_safe: 'long',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5404',
        name_ja: 'Sung Men',
        name_th: 'อ.สูงเม่น',
        name_en: 'Sung Men',
        url_safe: 'sung-men',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5405',
        name_ja: 'Den Chai',
        name_th: 'อ.เด่นชัย',
        name_en: 'Den Chai',
        url_safe: 'den-chai',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5406',
        name_ja: 'Song',
        name_th: 'อ.สอง',
        name_en: 'Song',
        url_safe: 'song',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5407',
        name_ja: 'Wang Chin',
        name_th: 'อ.วังชิ้น',
        name_en: 'Wang Chin',
        url_safe: 'wang-chin',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5408',
        name_ja: 'Nong Muang Khai',
        name_th: 'อ.หนองม่วงไข่',
        name_en: 'Nong Muang Khai',
        url_safe: 'nong-muang-khai',
        province_original_id: 'phrae'
    )

    District.create(
        original_id: '5501',
        name_ja: 'Mueang Nan',
        name_th: 'อ.เมืองน่าน',
        name_en: 'Mueang Nan',
        url_safe: 'mueang-nan',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5502',
        name_ja: 'Mae Charim',
        name_th: 'อ.แม่จริม',
        name_en: 'Mae Charim',
        url_safe: 'mae-charim',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5503',
        name_ja: 'Ban Luang',
        name_th: 'อ.บ้านหลวง',
        name_en: 'Ban Luang',
        url_safe: 'ban-luang',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5504',
        name_ja: 'Na Noi',
        name_th: 'อ.นาน้อย',
        name_en: 'Na Noi',
        url_safe: 'na-noi',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5505',
        name_ja: 'Pua',
        name_th: 'อ.ปัว',
        name_en: 'Pua',
        url_safe: 'pua',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5506',
        name_ja: 'Tha Wang Pha',
        name_th: 'อ.ท่าวังผา',
        name_en: 'Tha Wang Pha',
        url_safe: 'tha-wang-pha',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5507',
        name_ja: 'Wiang Sa',
        name_th: 'อ.เวียงสา',
        name_en: 'Wiang Sa',
        url_safe: 'wiang-sa',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5508',
        name_ja: 'Thung Chang',
        name_th: 'อ.ทุ่งช้าง',
        name_en: 'Thung Chang',
        url_safe: 'thung-chang',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5509',
        name_ja: 'Chiang Klang',
        name_th: 'อ.เชียงกลาง',
        name_en: 'Chiang Klang',
        url_safe: 'chiang-klang',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5510',
        name_ja: 'Na Muen',
        name_th: 'อ.นาหมื่น',
        name_en: 'Na Muen',
        url_safe: 'na-muen',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5511',
        name_ja: 'Santi Suk',
        name_th: 'อ.สันติสุข',
        name_en: 'Santi Suk',
        url_safe: 'santi-suk',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5512',
        name_ja: 'Bo Kluea',
        name_th: 'อ.บ่อเกลือ',
        name_en: 'Bo Kluea',
        url_safe: 'bo-kluea',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5513',
        name_ja: 'Song Khwae',
        name_th: 'อ.สองแคว',
        name_en: 'Song Khwae',
        url_safe: 'song-khwae',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5514',
        name_ja: 'Phu Phiang',
        name_th: 'อ.ภูเพียง',
        name_en: 'Phu Phiang',
        url_safe: 'phu-phiang',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5515',
        name_ja: 'Chaloem Phra Kiet',
        name_th: 'อ.เฉลิมพระเกียรติ',
        name_en: 'Chaloem Phra Kiet',
        url_safe: 'chaloem-phra-kiet',
        province_original_id: 'nan'
    )

    District.create(
        original_id: '5601',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.เมืองพะเยา',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5602',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.จุน',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5603',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.เชียงคำ',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5604',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.เชียงม่วน',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5605',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.ดอกคำใต้',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5606',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.ปง',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5607',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.แม่ใจ',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5608',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.ภูซาง',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5609',
        name_ja: 'Mueang Phayao',
        name_th: 'อ.ภูกามยาว',
        name_en: 'Mueang Phayao',
        url_safe: 'mueang-phayao',
        province_original_id: 'phayao'
    )

    District.create(
        original_id: '5701',
        name_ja: 'Mueang Chiang Rai',
        name_th: 'อ.เมืองเชียงราย',
        name_en: 'Mueang Chiang Rai',
        url_safe: 'mueang-chiang-rai',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5702',
        name_ja: 'Wiang Chai',
        name_th: 'อ.เวียงชัย',
        name_en: 'Wiang Chai',
        url_safe: 'wiang-chai',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5703',
        name_ja: 'Chiang Khong',
        name_th: 'อ.เชียงของ',
        name_en: 'Chiang Khong',
        url_safe: 'chiang-khong',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5704',
        name_ja: 'Thoeng',
        name_th: 'อ.เทิง',
        name_en: 'Thoeng',
        url_safe: 'thoeng',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5705',
        name_ja: 'Phan',
        name_th: 'อ.พาน',
        name_en: 'Phan',
        url_safe: 'phan',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5706',
        name_ja: 'Pa Daet',
        name_th: 'อ.ป่าแดด',
        name_en: 'Pa Daet',
        url_safe: 'pa-daet',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5707',
        name_ja: 'Mae Chan',
        name_th: 'อ.แม่จัน',
        name_en: 'Mae Chan',
        url_safe: 'mae-chan',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5708',
        name_ja: 'Chiang Saen',
        name_th: 'อ.เชียงแสน',
        name_en: 'Chiang Saen',
        url_safe: 'chiang-saen',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5709',
        name_ja: 'Mae Sai',
        name_th: 'อ.แม่สาย',
        name_en: 'Mae Sai',
        url_safe: 'mae-sai',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5710',
        name_ja: 'Mae Suai',
        name_th: 'อ.แม่สรวย',
        name_en: 'Mae Suai',
        url_safe: 'mae-suai',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5711',
        name_ja: 'Wiang Pa Pao',
        name_th: 'อ.เวียงป่าเป้า',
        name_en: 'Wiang Pa Pao',
        url_safe: 'wiang-pa-pao',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5712',
        name_ja: 'Phaya Mengrai',
        name_th: 'อ.พญาเม็งราย',
        name_en: 'Phaya Mengrai',
        url_safe: 'phaya-mengrai',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5713',
        name_ja: 'Wiang Kaen',
        name_th: 'อ.เวียงแก่น',
        name_en: 'Wiang Kaen',
        url_safe: 'wiang-kaen',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5714',
        name_ja: 'Khun Tan',
        name_th: 'อ.ขุนตาล',
        name_en: 'Khun Tan',
        url_safe: 'khun-tan',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5715',
        name_ja: 'Mae Fa Luang',
        name_th: 'อ.แม่ฟ้าหลวง',
        name_en: 'Mae Fa Luang',
        url_safe: 'mae-fa-luang',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5716',
        name_ja: 'Mae Lao',
        name_th: 'อ.แม่ลาว',
        name_en: 'Mae Lao',
        url_safe: 'mae-lao',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5717',
        name_ja: 'Wiang Chiang Rung',
        name_th: 'อ.เวียงเชียงรุ้ง',
        name_en: 'Wiang Chiang Rung',
        url_safe: 'wiang-chiang-rung',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5718',
        name_ja: 'Doi Luang',
        name_th: 'อ.ดอยหลวง',
        name_en: 'Doi Luang',
        url_safe: 'doi-luang',
        province_original_id: 'chiang-rai'
    )

    District.create(
        original_id: '5801',
        name_ja: 'Mueang Mae Hong Son',
        name_th: 'อ.เมืองแม่ฮ่องสอน',
        name_en: 'Mueang Mae Hong Son',
        url_safe: 'mueang-mae-hong-son',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5802',
        name_ja: 'Khun Yuam',
        name_th: 'อ.ขุนยวม',
        name_en: 'Khun Yuam',
        url_safe: 'khun-yuam',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5803',
        name_ja: 'Pai',
        name_th: 'อ.ปาย',
        name_en: 'Pai',
        url_safe: 'pai',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5804',
        name_ja: 'Mae Sariang',
        name_th: 'อ.แม่สะเรียง',
        name_en: 'Mae Sariang',
        url_safe: 'mae-sariang',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5805',
        name_ja: 'Mae La Noi',
        name_th: 'อ.แม่ลาน้อย',
        name_en: 'Mae La Noi',
        url_safe: 'mae-la-noi',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5806',
        name_ja: 'Sop Moei',
        name_th: 'อ.สบเมย',
        name_en: 'Sop Moei',
        url_safe: 'sop-moei',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '5807',
        name_ja: 'Pang Mapha',
        name_th: 'อ.ปางมะผ้า',
        name_en: 'Pang Mapha',
        url_safe: 'pang-mapha',
        province_original_id: 'mae-hong-son'
    )

    District.create(
        original_id: '6001',
        name_ja: 'Mueang Nakhon Sawan',
        name_th: 'อ.เมืองนครสวรรค์',
        name_en: 'Mueang Nakhon Sawan',
        url_safe: 'mueang-nakhon-sawan',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6002',
        name_ja: 'Krok Phra',
        name_th: 'อ.โกรกพระ',
        name_en: 'Krok Phra',
        url_safe: 'krok-phra',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6003',
        name_ja: 'Chum Saeng',
        name_th: 'อ.ชุมแสง',
        name_en: 'Chum Saeng',
        url_safe: 'chum-saeng',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6004',
        name_ja: 'Nong Bua',
        name_th: 'อ.หนองบัว',
        name_en: 'Nong Bua',
        url_safe: 'nong-bua',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6005',
        name_ja: 'Banphot Phisai',
        name_th: 'อ.บรรพตพิสัย',
        name_en: 'Banphot Phisai',
        url_safe: 'banphot-phisai',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6006',
        name_ja: 'Kao Liao',
        name_th: 'อ.เก้าเลี้ยว',
        name_en: 'Kao Liao',
        url_safe: 'kao-liao',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6007',
        name_ja: 'Takhli',
        name_th: 'อ.ตาคลี',
        name_en: 'Takhli',
        url_safe: 'takhli',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6008',
        name_ja: 'Tha Tako',
        name_th: 'อ.ท่าตะโก',
        name_en: 'Tha Tako',
        url_safe: 'tha-tako',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6009',
        name_ja: 'Phaisali',
        name_th: 'อ.ไพศาลี',
        name_en: 'Phaisali',
        url_safe: 'phaisali',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6010',
        name_ja: 'Phayuha Hkiri',
        name_th: 'อ.พยุหะคีรี',
        name_en: 'Phayuha Hkiri',
        url_safe: 'phayuha-hkiri',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6011',
        name_ja: 'Lat Yao',
        name_th: 'อ.ลาดยาว',
        name_en: 'Lat Yao',
        url_safe: 'lat-yao',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6012',
        name_ja: 'Tak Fa',
        name_th: 'อ.ตากฟ้า',
        name_en: 'Tak Fa',
        url_safe: 'tak-fa',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6013',
        name_ja: 'Mae Wong',
        name_th: 'อ.แม่วงก์',
        name_en: 'Mae Wong',
        url_safe: 'mae-wong',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6014',
        name_ja: 'Mae Pern',
        name_th: 'อ.แม่เปิน',
        name_en: 'Mae Pern',
        url_safe: 'mae-pern',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6015',
        name_ja: 'Chum Ta Bong',
        name_th: 'อ.ชุมตาบง',
        name_en: 'Chum Ta Bong',
        url_safe: 'chum-ta-bong',
        province_original_id: 'nakhon-sawan'
    )

    District.create(
        original_id: '6101',
        name_ja: 'Mueang Uthai Thani',
        name_th: 'อ.เมืองอุทัยธานี',
        name_en: 'Mueang Uthai Thani',
        url_safe: 'mueang-uthai-thani',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6102',
        name_ja: 'Thap Than',
        name_th: 'อ.ทัพทัน',
        name_en: 'Thap Than',
        url_safe: 'thap-than',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6103',
        name_ja: 'Sawang Arom',
        name_th: 'อ.สว่างอารมณ์',
        name_en: 'Sawang Arom',
        url_safe: 'sawang-arom',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6104',
        name_ja: 'Nong Chang',
        name_th: 'อ.หนองฉาง',
        name_en: 'Nong Chang',
        url_safe: 'nong-chang',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6105',
        name_ja: 'Nong Khayang',
        name_th: 'อ.หนองขาหย่าง',
        name_en: 'Nong Khayang',
        url_safe: 'nong-khayang',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6106',
        name_ja: 'Ban Rai',
        name_th: 'อ.บ้านไร่',
        name_en: 'Ban Rai',
        url_safe: 'ban-rai',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6107',
        name_ja: 'Lan Sak',
        name_th: 'อ.ลานสัก',
        name_en: 'Lan Sak',
        url_safe: 'lan-sak',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6108',
        name_ja: 'Huai Khot',
        name_th: 'อ.ห้วยคต',
        name_en: 'Huai Khot',
        url_safe: 'huai-khot',
        province_original_id: 'uthai-thani'
    )

    District.create(
        original_id: '6201',
        name_ja: 'Mueang Kamphaeng Phet',
        name_th: 'อ.เมืองกำแพงเพชร',
        name_en: 'Mueang Kamphaeng Phet',
        url_safe: 'mueang-kamphaeng-phet',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6202',
        name_ja: 'Sai Ngam',
        name_th: 'อ.ไทรงาม',
        name_en: 'Sai Ngam',
        url_safe: 'sai-ngam',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6203',
        name_ja: 'Khlong Lan',
        name_th: 'อ.คลองลาน',
        name_en: 'Khlong Lan',
        url_safe: 'khlong-lan',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6204',
        name_ja: 'Khanu Woralaksaburi',
        name_th: 'อ.ขาณุวรลักษบุรี',
        name_en: 'Khanu Woralaksaburi',
        url_safe: 'khanu-woralaksaburi',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6205',
        name_ja: 'Khlong Khlung',
        name_th: 'อ.คลองขลุง',
        name_en: 'Khlong Khlung',
        url_safe: 'khlong-khlung',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6206',
        name_ja: 'Phran Kratai',
        name_th: 'อ.พรานกระต่าย',
        name_en: 'Phran Kratai',
        url_safe: 'phran-kratai',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6207',
        name_ja: 'Lan Krabue',
        name_th: 'อ.ลานกระบือ',
        name_en: 'Lan Krabue',
        url_safe: 'lan-krabue',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6208',
        name_ja: 'Sai Thong Watthana',
        name_th: 'อ.ทรายทองวัฒนา',
        name_en: 'Sai Thong Watthana',
        url_safe: 'sai-thong-watthana',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6209',
        name_ja: 'Pang Sila Thong',
        name_th: 'อ.ปางศิลาทอง',
        name_en: 'Pang Sila Thong',
        url_safe: 'pang-sila-thong',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6210',
        name_ja: 'Bueng Samakkhi',
        name_th: 'อ.บึงสามัคคี',
        name_en: 'Bueng Samakkhi',
        url_safe: 'bueng-samakkhi',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6211',
        name_ja: 'Kosamphi Nakhon',
        name_th: 'อ.โกสัมพีนคร',
        name_en: 'Kosamphi Nakhon',
        url_safe: 'kosamphi-nakhon',
        province_original_id: 'kamphaeng-phet'
    )

    District.create(
        original_id: '6301',
        name_ja: 'Mueang Tak',
        name_th: 'อ.เมืองตาก',
        name_en: 'Mueang Tak',
        url_safe: 'mueang-tak',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6302',
        name_ja: 'Ban Tak',
        name_th: 'อ.บ้านตาก',
        name_en: 'Ban Tak',
        url_safe: 'ban-tak',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6303',
        name_ja: 'Sam Ngao',
        name_th: 'อ.สามเงา',
        name_en: 'Sam Ngao',
        url_safe: 'sam-ngao',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6304',
        name_ja: 'Mae Ramat',
        name_th: 'อ.แม่ระมาด',
        name_en: 'Mae Ramat',
        url_safe: 'mae-ramat',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6305',
        name_ja: 'Tha Song Yang',
        name_th: 'อ.ท่าสองยาง',
        name_en: 'Tha Song Yang',
        url_safe: 'tha-song-yang',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6306',
        name_ja: 'Mae Sot',
        name_th: 'อ.แม่สอด',
        name_en: 'Mae Sot',
        url_safe: 'mae-sot',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6307',
        name_ja: 'Phop Phra',
        name_th: 'อ.พบพระ',
        name_en: 'Phop Phra',
        url_safe: 'phop-phra',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6308',
        name_ja: 'Um Phang',
        name_th: 'อ.อุ้มผาง',
        name_en: 'Um Phang',
        url_safe: 'um-phang',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6309',
        name_ja: 'Wang Chao',
        name_th: 'อ.วังเจ้า',
        name_en: 'Wang Chao',
        url_safe: 'wang-chao',
        province_original_id: 'tak'
    )

    District.create(
        original_id: '6401',
        name_ja: 'Mueang Sukhothai',
        name_th: 'อ.เมืองสุโขทัย',
        name_en: 'Mueang Sukhothai',
        url_safe: 'mueang-sukhothai',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6402',
        name_ja: 'Ban Dan Lan Hoi',
        name_th: 'อ.บ้านด่านลานหอย',
        name_en: 'Ban Dan Lan Hoi',
        url_safe: 'ban-dan-lan-hoi',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6403',
        name_ja: 'Khiri Mat',
        name_th: 'อ.คีรีมาศ',
        name_en: 'Khiri Mat',
        url_safe: 'khiri-mat',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6404',
        name_ja: 'Kong Krailat',
        name_th: 'อ.กงไกรลาศ',
        name_en: 'Kong Krailat',
        url_safe: 'kong-krailat',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6405',
        name_ja: 'Si Satchanalai',
        name_th: 'อ.ศรีสัชนาลัย',
        name_en: 'Si Satchanalai',
        url_safe: 'si-satchanalai',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6406',
        name_ja: 'Si Samrong',
        name_th: 'อ.ศรีสำโรง',
        name_en: 'Si Samrong',
        url_safe: 'si-samrong',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6407',
        name_ja: 'Sawankhalok',
        name_th: 'อ.สวรรคโลก',
        name_en: 'Sawankhalok',
        url_safe: 'sawankhalok',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6408',
        name_ja: 'Si Nakhon',
        name_th: 'อ.ศรีนคร',
        name_en: 'Si Nakhon',
        url_safe: 'si-nakhon',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6409',
        name_ja: 'Thung Saliam',
        name_th: 'อ.ทุ่งเสลี่ยม',
        name_en: 'Thung Saliam',
        url_safe: 'thung-saliam',
        province_original_id: 'sukhothai'
    )

    District.create(
        original_id: '6501',
        name_ja: 'Mueang Phitsanulok',
        name_th: 'อ.เมืองพิษณุโลก',
        name_en: 'Mueang Phitsanulok',
        url_safe: 'mueang-phitsanulok',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6502',
        name_ja: 'Nakhon Thai',
        name_th: 'อ.นครไทย',
        name_en: 'Nakhon Thai',
        url_safe: 'nakhon-thai',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6503',
        name_ja: 'Chat Trakan',
        name_th: 'อ.ชาติตระการ',
        name_en: 'Chat Trakan',
        url_safe: 'chat-trakan',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6504',
        name_ja: 'Bang Rakam',
        name_th: 'อ.บางระกำ',
        name_en: 'Bang Rakam',
        url_safe: 'bang-rakam',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6505',
        name_ja: 'Bang Krathum',
        name_th: 'อ.บางกระทุ่ม',
        name_en: 'Bang Krathum',
        url_safe: 'bang-krathum',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6506',
        name_ja: 'Phrom Phiram',
        name_th: 'อ.พรหมพิราม',
        name_en: 'Phrom Phiram',
        url_safe: 'phrom-phiram',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6507',
        name_ja: 'Wat Bot',
        name_th: 'อ.วัดโบสถ์',
        name_en: 'Wat Bot',
        url_safe: 'wat-bot',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6508',
        name_ja: 'Wang Thong',
        name_th: 'อ.วังทอง',
        name_en: 'Wang Thong',
        url_safe: 'wang-thong',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6509',
        name_ja: 'Noen Maprang',
        name_th: 'อ.เนินมะปราง',
        name_en: 'Noen Maprang',
        url_safe: 'noen-maprang',
        province_original_id: 'phitsanulok'
    )

    District.create(
        original_id: '6601',
        name_ja: 'Mueang Phichit',
        name_th: 'อ.เมืองพิจิตร',
        name_en: 'Mueang Phichit',
        url_safe: 'mueang-phichit',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6602',
        name_ja: 'Wang Sai Phun',
        name_th: 'อ.วังทรายพูน',
        name_en: 'Wang Sai Phun',
        url_safe: 'wang-sai-phun',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6603',
        name_ja: 'Pho Prathap Chang',
        name_th: 'อ.โพธิ์ประทับช้าง',
        name_en: 'Pho Prathap Chang',
        url_safe: 'pho-prathap-chang',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6604',
        name_ja: 'Taphan Hin',
        name_th: 'อ.ตะพานหิน',
        name_en: 'Taphan Hin',
        url_safe: 'taphan-hin',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6605',
        name_ja: 'Bang Mun Nak',
        name_th: 'อ.บางมูลนาก',
        name_en: 'Bang Mun Nak',
        url_safe: 'bang-mun-nak',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6606',
        name_ja: 'Pho Thale',
        name_th: 'อ.โพทะเล',
        name_en: 'Pho Thale',
        url_safe: 'pho-thale',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6607',
        name_ja: 'Sam Ngam',
        name_th: 'อ.สามง่าม',
        name_en: 'Sam Ngam',
        url_safe: 'sam-ngam',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6608',
        name_ja: 'Tap Khlo',
        name_th: 'อ.ทับคล้อ',
        name_en: 'Tap Khlo',
        url_safe: 'tap-khlo',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6609',
        name_ja: 'Sak Lek',
        name_th: 'อ.สากเหล็ก',
        name_en: 'Sak Lek',
        url_safe: 'sak-lek',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6610',
        name_ja: 'Bueng Na Rang',
        name_th: 'อ.บึงนาราง',
        name_en: 'Bueng Na Rang',
        url_safe: 'bueng-na-rang',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6611',
        name_ja: 'Dong Charoen',
        name_th: 'อ.ดงเจริญ',
        name_en: 'Dong Charoen',
        url_safe: 'dong-charoen',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6612',
        name_ja: 'Wachirabarami',
        name_th: 'อ.วชิรบารมี',
        name_en: 'Wachirabarami',
        url_safe: 'wachirabarami',
        province_original_id: 'phichit'
    )

    District.create(
        original_id: '6701',
        name_ja: 'Mueang Phetchabun',
        name_th: 'อ.เมืองเพชรบูรณ์',
        name_en: 'Mueang Phetchabun',
        url_safe: 'mueang-phetchabun',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6702',
        name_ja: 'Chon Daen',
        name_th: 'อ.ชนแดน',
        name_en: 'Chon Daen',
        url_safe: 'chon-daen',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6703',
        name_ja: 'Lom Sak',
        name_th: 'อ.หล่มสัก',
        name_en: 'Lom Sak',
        url_safe: 'lom-sak',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6704',
        name_ja: 'Lom Kao',
        name_th: 'อ.หล่มเก่า',
        name_en: 'Lom Kao',
        url_safe: 'lom-kao',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6705',
        name_ja: 'Wichian Buri',
        name_th: 'อ.วิเชียรบุรี',
        name_en: 'Wichian Buri',
        url_safe: 'wichian-buri',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6706',
        name_ja: 'Si Thep',
        name_th: 'อ.ศรีเทพ',
        name_en: 'Si Thep',
        url_safe: 'si-thep',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6707',
        name_ja: 'Nong Phai',
        name_th: 'อ.หนองไผ่',
        name_en: 'Nong Phai',
        url_safe: 'nong-phai',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6708',
        name_ja: 'Bueng Sam Phan',
        name_th: 'อ.บึงสามพัน',
        name_en: 'Bueng Sam Phan',
        url_safe: 'bueng-sam-phan',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6709',
        name_ja: 'Nam Nao',
        name_th: 'อ.น้ำหนาว',
        name_en: 'Nam Nao',
        url_safe: 'nam-nao',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6710',
        name_ja: 'Wang Pong',
        name_th: 'อ.วังโป่ง',
        name_en: 'Wang Pong',
        url_safe: 'wang-pong',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '6711',
        name_ja: 'Khao kho',
        name_th: 'อ.เขาค้อ',
        name_en: 'Khao kho',
        url_safe: 'khao-kho',
        province_original_id: 'phetchabun'
    )

    District.create(
        original_id: '7001',
        name_ja: 'Mueang Ratchaburi',
        name_th: 'อ.เมืองราชบุรี',
        name_en: 'Mueang Ratchaburi',
        url_safe: 'mueang-ratchaburi',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7002',
        name_ja: 'Chom Bueng',
        name_th: 'อ.จอมบึง',
        name_en: 'Chom Bueng',
        url_safe: 'chom-bueng',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7003',
        name_ja: 'Suan Phueng',
        name_th: 'อ.สวนผึ้ง',
        name_en: 'Suan Phueng',
        url_safe: 'suan-phueng',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7004',
        name_ja: 'Damnoen Saduak',
        name_th: 'อ.ดำเนินสะดวก',
        name_en: 'Damnoen Saduak',
        url_safe: 'damnoen-saduak',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7005',
        name_ja: 'Ban Pong',
        name_th: 'อ.บ้านโป่ง',
        name_en: 'Ban Pong',
        url_safe: 'ban-pong',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7006',
        name_ja: 'Bang Phae',
        name_th: 'อ.บางแพ',
        name_en: 'Bang Phae',
        url_safe: 'bang-phae',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7007',
        name_ja: 'Photharam',
        name_th: 'อ.โพธาราม',
        name_en: 'Photharam',
        url_safe: 'photharam',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7008',
        name_ja: 'Pak Tho',
        name_th: 'อ.ปากท่อ',
        name_en: 'Pak Tho',
        url_safe: 'pak-tho',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7009',
        name_ja: 'Wat Phleng',
        name_th: 'อ.วัดเพลง',
        name_en: 'Wat Phleng',
        url_safe: 'wat-phleng',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7010',
        name_ja: 'Ban Kha',
        name_th: 'อ.บ้านคา',
        name_en: 'Ban Kha',
        url_safe: 'ban-kha',
        province_original_id: 'ratchaburi'
    )

    District.create(
        original_id: '7101',
        name_ja: 'Mueang Kanchanaburi',
        name_th: 'อ.เมืองกาญจนบุรี',
        name_en: 'Mueang Kanchanaburi',
        url_safe: 'mueang-kanchanaburi',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7102',
        name_ja: 'Sai Yok',
        name_th: 'อ.ไทรโยค',
        name_en: 'Sai Yok',
        url_safe: 'sai-yok',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7103',
        name_ja: 'Bo Phloi',
        name_th: 'อ.บ่อพลอย',
        name_en: 'Bo Phloi',
        url_safe: 'bo-phloi',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7104',
        name_ja: 'Si Sawat',
        name_th: 'อ.ศรีสวัสดิ์',
        name_en: 'Si Sawat',
        url_safe: 'si-sawat',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7105',
        name_ja: 'Tha Maka',
        name_th: 'อ.ท่ามะกา',
        name_en: 'Tha Maka',
        url_safe: 'tha-maka',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7106',
        name_ja: 'Tha Muang',
        name_th: 'อ.ท่าม่วง',
        name_en: 'Tha Muang',
        url_safe: 'tha-muang',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7107',
        name_ja: 'Thong Pha Phum',
        name_th: 'อ.ทองผาภูมิ',
        name_en: 'Thong Pha Phum',
        url_safe: 'thong-pha-phum',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7108',
        name_ja: 'Sangkhla Buri',
        name_th: 'อ.สังขละบุรี',
        name_en: 'Sangkhla Buri',
        url_safe: 'sangkhla-buri',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7109',
        name_ja: 'Phanom Thuan',
        name_th: 'อ.พนมทวน',
        name_en: 'Phanom Thuan',
        url_safe: 'phanom-thuan',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7110',
        name_ja: 'Lao Khwan',
        name_th: 'อ.เลาขวัญ',
        name_en: 'Lao Khwan',
        url_safe: 'lao-khwan',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7111',
        name_ja: 'Dan Makham Tia',
        name_th: 'อ.ด่านมะขามเตี้ย',
        name_en: 'Dan Makham Tia',
        url_safe: 'dan-makham-tia',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7112',
        name_ja: 'Nong Prue',
        name_th: 'อ.หนองปรือ',
        name_en: 'Nong Prue',
        url_safe: 'nong-prue',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7113',
        name_ja: 'Huai Krachao',
        name_th: 'อ.ห้วยกระเจา',
        name_en: 'Huai Krachao',
        url_safe: 'huai-krachao',
        province_original_id: 'kanchanaburi'
    )

    District.create(
        original_id: '7201',
        name_ja: 'Mueang Saphan Buri',
        name_th: 'อ.เมืองสุพรรณบุรี',
        name_en: 'Mueang Saphan Buri',
        url_safe: 'mueang-saphan-buri',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7202',
        name_ja: 'Doem Bang Nang Buat',
        name_th: 'อ.เดิมบางนางบวช',
        name_en: 'Doem Bang Nang Buat',
        url_safe: 'doem-bang-nang-buat',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7203',
        name_ja: 'Dan Chang',
        name_th: 'อ.ด่านช้าง',
        name_en: 'Dan Chang',
        url_safe: 'dan-chang',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7204',
        name_ja: 'Bang Pla Ma',
        name_th: 'อ.บางปลาม้า',
        name_en: 'Bang Pla Ma',
        url_safe: 'bang-pla-ma',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7205',
        name_ja: 'Si Prachan',
        name_th: 'อ.ศรีประจันต์',
        name_en: 'Si Prachan',
        url_safe: 'si-prachan',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7206',
        name_ja: 'Don Chedi',
        name_th: 'อ.ดอนเจดีย์',
        name_en: 'Don Chedi',
        url_safe: 'don-chedi',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7207',
        name_ja: 'Song Phi Nong',
        name_th: 'อ.สองพี่น้อง',
        name_en: 'Song Phi Nong',
        url_safe: 'song-phi-nong',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7208',
        name_ja: 'Sam Chuk',
        name_th: 'อ.สามชุก',
        name_en: 'Sam Chuk',
        url_safe: 'sam-chuk',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7209',
        name_ja: 'U Thong',
        name_th: 'อ.อู่ทอง',
        name_en: 'U Thong',
        url_safe: 'u-thong',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7210',
        name_ja: 'Nong Ya Sai',
        name_th: 'อ.หนองหญ้าไซ',
        name_en: 'Nong Ya Sai',
        url_safe: 'nong-ya-sai',
        province_original_id: 'suphan-buri'
    )

    District.create(
        original_id: '7301',
        name_ja: 'mueang Nakhon Pathom',
        name_th: 'อ.เมืองนครปฐม',
        name_en: 'mueang Nakhon Pathom',
        url_safe: 'mueang-nakhon-pathom',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7302',
        name_ja: 'Kamphaeng Saen',
        name_th: 'อ.กำแพงแสน',
        name_en: 'Kamphaeng Saen',
        url_safe: 'kamphaeng-saen',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7303',
        name_ja: 'Nakhon Chai Si',
        name_th: 'อ.นครชัยศรี',
        name_en: 'Nakhon Chai Si',
        url_safe: 'nakhon-chai-si',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7304',
        name_ja: 'Don Tum',
        name_th: 'อ.ดอนตูม',
        name_en: 'Don Tum',
        url_safe: 'don-tum',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7305',
        name_ja: 'Bang Len',
        name_th: 'อ.บางเลน',
        name_en: 'Bang Len',
        url_safe: 'bang-len',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7306',
        name_ja: 'Sam Phran',
        name_th: 'อ.สามพราน',
        name_en: 'Sam Phran',
        url_safe: 'sam-phran',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7307',
        name_ja: 'Phutthamonthon',
        name_th: 'อ.พุทธมณฑล',
        name_en: 'Phutthamonthon',
        url_safe: 'phutthamonthon',
        province_original_id: 'nakhon-pathom'
    )

    District.create(
        original_id: '7401',
        name_ja: 'Mueang Samut Sakhon',
        name_th: 'อ.เมืองสมุทรสาคร',
        name_en: 'Mueang Samut Sakhon',
        url_safe: 'mueang-samut-sakhon',
        province_original_id: 'samut-sakhon'
    )

    District.create(
        original_id: '7402',
        name_ja: 'Krathum Baen',
        name_th: 'อ.กระทุ่มแบน',
        name_en: 'Krathum Baen',
        url_safe: 'krathum-baen',
        province_original_id: 'samut-sakhon'
    )

    District.create(
        original_id: '7403',
        name_ja: 'Ban Phaeo',
        name_th: 'อ.บ้านแพ้ว',
        name_en: 'Ban Phaeo',
        url_safe: 'ban-phaeo',
        province_original_id: 'samut-sakhon'
    )

    District.create(
        original_id: '7501',
        name_ja: 'Mueang Samut Songkhram',
        name_th: 'อ.เมืองสมุทรสงคราม',
        name_en: 'Mueang Samut Songkhram',
        url_safe: 'mueang-samut-songkhram',
        province_original_id: 'samut-songkhram'
    )

    District.create(
        original_id: '7502',
        name_ja: 'Bang Khonthi',
        name_th: 'อ.บางคนที',
        name_en: 'Bang Khonthi',
        url_safe: 'bang-khonthi',
        province_original_id: 'samut-songkhram'
    )

    District.create(
        original_id: '7503',
        name_ja: 'Amphawa',
        name_th: 'อ.อัมพวา',
        name_en: 'Amphawa',
        url_safe: 'amphawa',
        province_original_id: 'samut-songkhram'
    )

    District.create(
        original_id: '7601',
        name_ja: 'Mueang Phetchaburi',
        name_th: 'อ.เมืองเพชรบุรี',
        name_en: 'Mueang Phetchaburi',
        url_safe: 'mueang-phetchaburi',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7602',
        name_ja: 'Khao Yoi',
        name_th: 'อ.เขาย้อย',
        name_en: 'Khao Yoi',
        url_safe: 'khao-yoi',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7603',
        name_ja: 'Nong Ya Plong',
        name_th: 'อ.หนองหญ้าปล้อง',
        name_en: 'Nong Ya Plong',
        url_safe: 'nong-ya-plong',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7604',
        name_ja: 'Cha-am',
        name_th: 'อ.ชะอำ',
        name_en: 'Cha-am',
        url_safe: 'cha-am',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7605',
        name_ja: 'Tha Yang',
        name_th: 'อ.ท่ายาง',
        name_en: 'Tha Yang',
        url_safe: 'tha-yang',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7606',
        name_ja: 'Ban Lat',
        name_th: 'อ.บ้านลาด',
        name_en: 'Ban Lat',
        url_safe: 'ban-lat',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7607',
        name_ja: 'Ban Laem',
        name_th: 'อ.บ้านแหลม',
        name_en: 'Ban Laem',
        url_safe: 'ban-laem',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7608',
        name_ja: 'Kaeng Krachan',
        name_th: 'อ.แก่งกระจาน',
        name_en: 'Kaeng Krachan',
        url_safe: 'kaeng-krachan',
        province_original_id: 'phetchaburi'
    )

    District.create(
        original_id: '7701',
        name_ja: 'Mueang Prachuap Khiri Khan',
        name_th: 'อ.เมืองประจวบคีรีขันธ์',
        name_en: 'Mueang Prachuap Khiri Khan',
        url_safe: 'mueang-prachuap-khiri-khan',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7702',
        name_ja: 'Kui Buri',
        name_th: 'อ.กุยบุรี',
        name_en: 'Kui Buri',
        url_safe: 'kui-buri',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7703',
        name_ja: 'Thap Sakae',
        name_th: 'อ.ทับสะแก',
        name_en: 'Thap Sakae',
        url_safe: 'thap-sakae',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7704',
        name_ja: 'Bang Saphan',
        name_th: 'อ.บางสะพาน',
        name_en: 'Bang Saphan',
        url_safe: 'bang-saphan',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7705',
        name_ja: 'Bang Saphan Noi',
        name_th: 'อ.บางสะพานน้อย',
        name_en: 'Bang Saphan Noi',
        url_safe: 'bang-saphan-noi',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7706',
        name_ja: 'Pran Buri',
        name_th: 'อ.ปราณบุรี',
        name_en: 'Pran Buri',
        url_safe: 'pran-buri',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7707',
        name_ja: 'Hua Hin',
        name_th: 'อ.หัวหิน',
        name_en: 'Hua Hin',
        url_safe: 'hua-hin',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '7708',
        name_ja: 'Sam Roi Yot',
        name_th: 'อ.สามร้อยยอด',
        name_en: 'Sam Roi Yot',
        url_safe: 'sam-roi-yot',
        province_original_id: 'prachuap-khiri-khan'
    )

    District.create(
        original_id: '8001',
        name_ja: 'Mueang Nakhon Si Thammarat',
        name_th: 'อ.เมืองนครศรีธรรมราช',
        name_en: 'Mueang Nakhon Si Thammarat',
        url_safe: 'mueang-nakhon-si-thammarat',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8002',
        name_ja: 'Phrom Khiri',
        name_th: 'อ.พรหมคีรี',
        name_en: 'Phrom Khiri',
        url_safe: 'phrom-khiri',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8003',
        name_ja: 'Lan Saka',
        name_th: 'อ.ลานสกา',
        name_en: 'Lan Saka',
        url_safe: 'lan-saka',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8004',
        name_ja: 'Chawang',
        name_th: 'อ.ฉวาง',
        name_en: 'Chawang',
        url_safe: 'chawang',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8005',
        name_ja: 'Phipun',
        name_th: 'อ.พิปูน',
        name_en: 'Phipun',
        url_safe: 'phipun',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8006',
        name_ja: 'Chian Yai',
        name_th: 'อ.เชียรใหญ่',
        name_en: 'Chian Yai',
        url_safe: 'chian-yai',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8007',
        name_ja: 'Cha-uat',
        name_th: 'อ.ชะอวด',
        name_en: 'Cha-uat',
        url_safe: 'cha-uat',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8008',
        name_ja: 'Tha Sala',
        name_th: 'อ.ท่าศาลา',
        name_en: 'Tha Sala',
        url_safe: 'tha-sala',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8009',
        name_ja: 'Thung Song',
        name_th: 'อ.ทุ่งสง',
        name_en: 'Thung Song',
        url_safe: 'thung-song',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8010',
        name_ja: 'Na Bon',
        name_th: 'อ.นาบอน',
        name_en: 'Na Bon',
        url_safe: 'na-bon',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8011',
        name_ja: 'Thung Yai',
        name_th: 'อ.ทุ่งใหญ่',
        name_en: 'Thung Yai',
        url_safe: 'thung-yai',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8012',
        name_ja: 'Pak Phanang',
        name_th: 'อ.ปากพนัง',
        name_en: 'Pak Phanang',
        url_safe: 'pak-phanang',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8013',
        name_ja: 'Ron Phibun',
        name_th: 'อ.ร่อนพิบูลย์',
        name_en: 'Ron Phibun',
        url_safe: 'ron-phibun',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8014',
        name_ja: 'Sichon',
        name_th: 'อ.สิชล',
        name_en: 'Sichon',
        url_safe: 'sichon',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8015',
        name_ja: 'Khanom',
        name_th: 'อ.ขนอม',
        name_en: 'Khanom',
        url_safe: 'khanom',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8016',
        name_ja: 'Hua Sai',
        name_th: 'อ.หัวไทร',
        name_en: 'Hua Sai',
        url_safe: 'hua-sai',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8017',
        name_ja: 'Bang Khan',
        name_th: 'อ.บางขัน',
        name_en: 'Bang Khan',
        url_safe: 'bang-khan',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8018',
        name_ja: 'Tham Phannara',
        name_th: 'อ.ถ้ำพรรณรา',
        name_en: 'Tham Phannara',
        url_safe: 'tham-phannara',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8019',
        name_ja: 'Chulabhorn',
        name_th: 'อ.จุฬาภรณ์',
        name_en: 'Chulabhorn',
        url_safe: 'chulabhorn',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8020',
        name_ja: 'Phra Phrom',
        name_th: 'อ.พระพรหม',
        name_en: 'Phra Phrom',
        url_safe: 'phra-phrom',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8021',
        name_ja: 'Nopphitam',
        name_th: 'อ.นบพิตำ',
        name_en: 'Nopphitam',
        url_safe: 'nopphitam',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8022',
        name_ja: 'Chang Klang',
        name_th: 'อ.ช้างกลาง',
        name_en: 'Chang Klang',
        url_safe: 'chang-klang',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8023',
        name_ja: 'Chaloem Phra Kiet',
        name_th: 'อ.เฉลิมพระเกียรติ',
        name_en: 'Chaloem Phra Kiet',
        url_safe: 'chaloem-phra-kiet',
        province_original_id: 'nakhon-si-thammarat'
    )

    District.create(
        original_id: '8101',
        name_ja: 'Mueang Krabi',
        name_th: 'อ.เมืองกระบี่',
        name_en: 'Mueang Krabi',
        url_safe: 'mueang-krabi',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8102',
        name_ja: 'Khao Phanom',
        name_th: 'อ.เขาพนม',
        name_en: 'Khao Phanom',
        url_safe: 'khao-phanom',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8103',
        name_ja: 'Ko Lanta',
        name_th: 'อ.เกาะลันตา',
        name_en: 'Ko Lanta',
        url_safe: 'ko-lanta',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8104',
        name_ja: 'Khlong Thom',
        name_th: 'อ.คลองท่อม',
        name_en: 'Khlong Thom',
        url_safe: 'khlong-thom',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8105',
        name_ja: 'Ao Luek',
        name_th: 'อ.อ่าวลึก',
        name_en: 'Ao Luek',
        url_safe: 'ao-luek',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8106',
        name_ja: 'Plai Phraya',
        name_th: 'อ.ปลายพระยา',
        name_en: 'Plai Phraya',
        url_safe: 'plai-phraya',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8107',
        name_ja: 'Lam Thap',
        name_th: 'อ.ลำทับ',
        name_en: 'Lam Thap',
        url_safe: 'lam-thap',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8108',
        name_ja: 'Nuea Khlong',
        name_th: 'อ.เหนือคลอง',
        name_en: 'Nuea Khlong',
        url_safe: 'nuea-khlong',
        province_original_id: 'krabi'
    )

    District.create(
        original_id: '8201',
        name_ja: 'Mueang Phang-nga',
        name_th: 'อ.เมืองพังงา',
        name_en: 'Mueang Phang-nga',
        url_safe: 'mueang-phang-nga',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8202',
        name_ja: 'Ko Yao',
        name_th: 'อ.เกาะยาว',
        name_en: 'Ko Yao',
        url_safe: 'ko-yao',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8203',
        name_ja: 'Kapong',
        name_th: 'อ.กะปง',
        name_en: 'Kapong',
        url_safe: 'kapong',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8204',
        name_ja: 'Takua Thung',
        name_th: 'อ.ตะกั่วทุ่ง',
        name_en: 'Takua Thung',
        url_safe: 'takua-thung',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8205',
        name_ja: 'Takua Pa',
        name_th: 'อ.ตะกั่วป่า',
        name_en: 'Takua Pa',
        url_safe: 'takua-pa',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8206',
        name_ja: 'Khura Buri',
        name_th: 'อ.คุระบุรี',
        name_en: 'Khura Buri',
        url_safe: 'khura-buri',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8207',
        name_ja: 'Thap Put',
        name_th: 'อ.ทับปุด',
        name_en: 'Thap Put',
        url_safe: 'thap-put',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8208',
        name_ja: 'Thai Mueang',
        name_th: 'อ.ท้ายเหมือง',
        name_en: 'Thai Mueang',
        url_safe: 'thai-mueang',
        province_original_id: 'phang-nga'
    )

    District.create(
        original_id: '8301',
        name_ja: 'Mueang Phuket',
        name_th: 'อ.เมืองภูเก็ต',
        name_en: 'Mueang Phuket',
        url_safe: 'mueang-phuket',
        province_original_id: 'phuket'
    )

    District.create(
        original_id: '8302',
        name_ja: 'Kathu',
        name_th: 'อ.กะทู้',
        name_en: 'Kathu',
        url_safe: 'kathu',
        province_original_id: 'phuket'
    )

    District.create(
        original_id: '8303',
        name_ja: 'Thalang',
        name_th: 'อ.ถลาง',
        name_en: 'Thalang',
        url_safe: 'thalang',
        province_original_id: 'phuket'
    )

    District.create(
        original_id: '8401',
        name_ja: 'Mueang Surat Thani',
        name_th: 'อ.เมืองสุราษฎร์ธานี',
        name_en: 'Mueang Surat Thani',
        url_safe: 'mueang-surat-thani',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8402',
        name_ja: 'Kanchanadit',
        name_th: 'อ.กาญจนดิษฐ์',
        name_en: 'Kanchanadit',
        url_safe: 'kanchanadit',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8403',
        name_ja: 'Don Sak',
        name_th: 'อ.ดอนสัก',
        name_en: 'Don Sak',
        url_safe: 'don-sak',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8404',
        name_ja: 'Ko Samui',
        name_th: 'อ.เกาะสมุย',
        name_en: 'Ko Samui',
        url_safe: 'ko-samui',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8405',
        name_ja: 'Ko Pha-ngan',
        name_th: 'อ.เกาะพะงัน',
        name_en: 'Ko Pha-ngan',
        url_safe: 'ko-pha-ngan',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8406',
        name_ja: 'Chaiya',
        name_th: 'อ.ไชยา',
        name_en: 'Chaiya',
        url_safe: 'chaiya',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8407',
        name_ja: 'Tha Chana',
        name_th: 'อ.ท่าชนะ',
        name_en: 'Tha Chana',
        url_safe: 'tha-chana',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8408',
        name_ja: 'Khiri Rat Nikhom',
        name_th: 'อ.คีรีรัฐนิคม',
        name_en: 'Khiri Rat Nikhom',
        url_safe: 'khiri-rat-nikhom',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8409',
        name_ja: 'Ban Ta Khun',
        name_th: 'อ.บ้านตาขุน',
        name_en: 'Ban Ta Khun',
        url_safe: 'ban-ta-khun',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8410',
        name_ja: 'Phanom',
        name_th: 'อ.พนม',
        name_en: 'Phanom',
        url_safe: 'phanom',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8411',
        name_ja: 'Tha Chang',
        name_th: 'อ.ท่าฉาง',
        name_en: 'Tha Chang',
        url_safe: 'tha-chang',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8412',
        name_ja: 'Ban Na San',
        name_th: 'อ.บ้านนาสาร',
        name_en: 'Ban Na San',
        url_safe: 'ban-na-san',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8413',
        name_ja: 'Ban Na Doem',
        name_th: 'อ.บ้านนาเดิม',
        name_en: 'Ban Na Doem',
        url_safe: 'ban-na-doem',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8414',
        name_ja: 'Khian Sa',
        name_th: 'อ.เคียนซา',
        name_en: 'Khian Sa',
        url_safe: 'khian-sa',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8415',
        name_ja: 'Wiang Sa',
        name_th: 'อ.เวียงสระ',
        name_en: 'Wiang Sa',
        url_safe: 'wiang-sa',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8416',
        name_ja: 'Phrasaeng',
        name_th: 'อ.พระแสง',
        name_en: 'Phrasaeng',
        url_safe: 'phrasaeng',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8417',
        name_ja: 'Phunphin',
        name_th: 'อ.พุนพิน',
        name_en: 'Phunphin',
        url_safe: 'phunphin',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8418',
        name_ja: 'Chai Buri',
        name_th: 'อ.ชัยบุรี',
        name_en: 'Chai Buri',
        url_safe: 'chai-buri',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8419',
        name_ja: 'Chai Buri',
        name_th: 'อ.วิภาวดี',
        name_en: 'Chai Buri',
        url_safe: 'chai-buri',
        province_original_id: 'surat-thani'
    )

    District.create(
        original_id: '8501',
        name_ja: 'Mueang Ranong',
        name_th: 'อ.เมืองระนอง',
        name_en: 'Mueang Ranong',
        url_safe: 'mueang-ranong',
        province_original_id: 'ranong'
    )

    District.create(
        original_id: '8502',
        name_ja: 'La-un',
        name_th: 'อ.ละอุ่น',
        name_en: 'La-un',
        url_safe: 'la-un',
        province_original_id: 'ranong'
    )

    District.create(
        original_id: '8503',
        name_ja: 'Papoe',
        name_th: 'อ.กะเปอร์',
        name_en: 'Papoe',
        url_safe: 'papoe',
        province_original_id: 'ranong'
    )

    District.create(
        original_id: '8504',
        name_ja: 'Kra Buri',
        name_th: 'อ.กระบุรี',
        name_en: 'Kra Buri',
        url_safe: 'kra-buri',
        province_original_id: 'ranong'
    )

    District.create(
        original_id: '8505',
        name_ja: 'Suk Samran',
        name_th: 'อ.สุขสำราญ',
        name_en: 'Suk Samran',
        url_safe: 'suk-samran',
        province_original_id: 'ranong'
    )

    District.create(
        original_id: '8601',
        name_ja: 'Mueang Chumphon',
        name_th: 'อ.เมืองชุมพร',
        name_en: 'Mueang Chumphon',
        url_safe: 'mueang-chumphon',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8602',
        name_ja: 'Tha Sae',
        name_th: 'อ.ท่าแซะ',
        name_en: 'Tha Sae',
        url_safe: 'tha-sae',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8603',
        name_ja: 'Pathio',
        name_th: 'อ.ปะทิว',
        name_en: 'Pathio',
        url_safe: 'pathio',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8604',
        name_ja: 'Lang Suan',
        name_th: 'อ.หลังสวน',
        name_en: 'Lang Suan',
        url_safe: 'lang-suan',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8605',
        name_ja: 'Lamae',
        name_th: 'อ.ละแม',
        name_en: 'Lamae',
        url_safe: 'lamae',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8606',
        name_ja: 'Phato',
        name_th: 'อ.พะโต๊ะ',
        name_en: 'Phato',
        url_safe: 'phato',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8607',
        name_ja: 'Sawi',
        name_th: 'อ.สวี',
        name_en: 'Sawi',
        url_safe: 'sawi',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '8608',
        name_ja: 'Thung Tako',
        name_th: 'อ.ทุ่งตะโก',
        name_en: 'Thung Tako',
        url_safe: 'thung-tako',
        province_original_id: 'chumphon'
    )

    District.create(
        original_id: '9001',
        name_ja: 'Muaeng Songkhla',
        name_th: 'อ.เมืองสงขลา',
        name_en: 'Muaeng Songkhla',
        url_safe: 'muaeng-songkhla',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9002',
        name_ja: 'Sathing Phra',
        name_th: 'อ.สทิงพระ',
        name_en: 'Sathing Phra',
        url_safe: 'sathing-phra',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9003',
        name_ja: 'Chana',
        name_th: 'อ.จะนะ',
        name_en: 'Chana',
        url_safe: 'chana',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9004',
        name_ja: 'Na Thawi',
        name_th: 'อ.นาทวี',
        name_en: 'Na Thawi',
        url_safe: 'na-thawi',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9005',
        name_ja: 'Thepha',
        name_th: 'อ.เทพา',
        name_en: 'Thepha',
        url_safe: 'thepha',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9006',
        name_ja: 'Saba Yoi',
        name_th: 'อ.สะบ้าย้อย',
        name_en: 'Saba Yoi',
        url_safe: 'saba-yoi',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9007',
        name_ja: 'Ranot',
        name_th: 'อ.ระโนด',
        name_en: 'Ranot',
        url_safe: 'ranot',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9008',
        name_ja: 'Krasae Sin',
        name_th: 'อ.กระแสสินธุ์',
        name_en: 'Krasae Sin',
        url_safe: 'krasae-sin',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9009',
        name_ja: 'Rattaphum',
        name_th: 'อ.รัตภูมิ',
        name_en: 'Rattaphum',
        url_safe: 'rattaphum',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9010',
        name_ja: 'Sadao',
        name_th: 'อ.สะเดา',
        name_en: 'Sadao',
        url_safe: 'sadao',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9011',
        name_ja: 'Hat Yai',
        name_th: 'อ.หาดใหญ่',
        name_en: 'Hat Yai',
        url_safe: 'hat-yai',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9012',
        name_ja: 'Na Mom',
        name_th: 'อ.นาหม่อม',
        name_en: 'Na Mom',
        url_safe: 'na-mom',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9013',
        name_ja: 'Khuan Niang',
        name_th: 'อ.ควนเนียง',
        name_en: 'Khuan Niang',
        url_safe: 'khuan-niang',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9014',
        name_ja: 'Bang Klam',
        name_th: 'อ.บางกล่ำ',
        name_en: 'Bang Klam',
        url_safe: 'bang-klam',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9015',
        name_ja: 'Singhanakhon',
        name_th: 'อ.สิงหนคร',
        name_en: 'Singhanakhon',
        url_safe: 'singhanakhon',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9016',
        name_ja: 'Khlong Hoi Khong',
        name_th: 'อ.คลองหอยโข่ง',
        name_en: 'Khlong Hoi Khong',
        url_safe: 'khlong-hoi-khong',
        province_original_id: 'songkhla'
    )

    District.create(
        original_id: '9101',
        name_ja: 'Mueang Satun',
        name_th: 'อ.เมืองสตูล',
        name_en: 'Mueang Satun',
        url_safe: 'mueang-satun',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9102',
        name_ja: 'Khuan Don',
        name_th: 'อ.ควนโดน',
        name_en: 'Khuan Don',
        url_safe: 'khuan-don',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9103',
        name_ja: 'Khuan Kalong',
        name_th: 'อ.ควนกาหลง',
        name_en: 'Khuan Kalong',
        url_safe: 'khuan-kalong',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9104',
        name_ja: 'Tha Phae',
        name_th: 'อ.ท่าแพ',
        name_en: 'Tha Phae',
        url_safe: 'tha-phae',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9105',
        name_ja: 'La-ngu',
        name_th: 'อ.ละงู',
        name_en: 'La-ngu',
        url_safe: 'la-ngu',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9106',
        name_ja: 'Thung Wa',
        name_th: 'อ.ทุ่งหว้า',
        name_en: 'Thung Wa',
        url_safe: 'thung-wa',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9107',
        name_ja: 'Manang',
        name_th: 'อ.มะนัง',
        name_en: 'Manang',
        url_safe: 'manang',
        province_original_id: 'satun'
    )

    District.create(
        original_id: '9201',
        name_ja: 'Mueang Trang',
        name_th: 'อ.เมืองตรัง',
        name_en: 'Mueang Trang',
        url_safe: 'mueang-trang',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9202',
        name_ja: 'Kantang',
        name_th: 'อ.กันตัง',
        name_en: 'Kantang',
        url_safe: 'kantang',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9203',
        name_ja: 'Yan Ta Khao',
        name_th: 'อ.ย่านตาขาว',
        name_en: 'Yan Ta Khao',
        url_safe: 'yan-ta-khao',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9204',
        name_ja: 'Palian',
        name_th: 'อ.ปะเหลียน',
        name_en: 'Palian',
        url_safe: 'palian',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9205',
        name_ja: 'Sikao',
        name_th: 'อ.สิเกา',
        name_en: 'Sikao',
        url_safe: 'sikao',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9206',
        name_ja: 'Huai Yot',
        name_th: 'อ.ห้วยยอด',
        name_en: 'Huai Yot',
        url_safe: 'huai-yot',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9207',
        name_ja: 'Wang Wiset',
        name_th: 'อ.วังวิเศษ',
        name_en: 'Wang Wiset',
        url_safe: 'wang-wiset',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9208',
        name_ja: 'Na Yong',
        name_th: 'อ.นาโยง',
        name_en: 'Na Yong',
        url_safe: 'na-yong',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9209',
        name_ja: 'Ratsada',
        name_th: 'อ.รัษฎา',
        name_en: 'Ratsada',
        url_safe: 'ratsada',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9210',
        name_ja: 'Hat Samran',
        name_th: 'อ.หาดสำราญ',
        name_en: 'Hat Samran',
        url_safe: 'hat-samran',
        province_original_id: 'trang'
    )

    District.create(
        original_id: '9301',
        name_ja: 'Mueang Phatthalung',
        name_th: 'อ.เมืองพัทลุง',
        name_en: 'Mueang Phatthalung',
        url_safe: 'mueang-phatthalung',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9302',
        name_ja: 'Kong Ra',
        name_th: 'อ.กงหรา',
        name_en: 'Kong Ra',
        url_safe: 'kong-ra',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9303',
        name_ja: 'Khao Chaison',
        name_th: 'อ.เขาชัยสน',
        name_en: 'Khao Chaison',
        url_safe: 'khao-chaison',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9304',
        name_ja: 'Tamot',
        name_th: 'อ.ตะโหมด',
        name_en: 'Tamot',
        url_safe: 'tamot',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9305',
        name_ja: 'Khuan Khanun',
        name_th: 'อ.ควนขนุน',
        name_en: 'Khuan Khanun',
        url_safe: 'khuan-khanun',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9306',
        name_ja: 'Pak Phayun',
        name_th: 'อ.ปากพะยูน',
        name_en: 'Pak Phayun',
        url_safe: 'pak-phayun',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9307',
        name_ja: 'Si Banphot',
        name_th: 'อ.ศรีบรรพต',
        name_en: 'Si Banphot',
        url_safe: 'si-banphot',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9308',
        name_ja: 'Pa Bon',
        name_th: 'อ.ป่าบอน',
        name_en: 'Pa Bon',
        url_safe: 'pa-bon',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9309',
        name_ja: 'Bang Kaeo',
        name_th: 'อ.บางแก้ว',
        name_en: 'Bang Kaeo',
        url_safe: 'bang-kaeo',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9310',
        name_ja: 'Pa Phayom',
        name_th: 'อ.ป่าพยอม',
        name_en: 'Pa Phayom',
        url_safe: 'pa-phayom',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9311',
        name_ja: 'Srinagarindra',
        name_th: 'อ.ศรีนครินทร์',
        name_en: 'Srinagarindra',
        url_safe: 'srinagarindra',
        province_original_id: 'phatthalung'
    )

    District.create(
        original_id: '9401',
        name_ja: 'Mueang Pattani',
        name_th: 'อ.เมืองปัตตานี',
        name_en: 'Mueang Pattani',
        url_safe: 'mueang-pattani',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9402',
        name_ja: 'Khok Pho',
        name_th: 'อ.โคกโพธิ์',
        name_en: 'Khok Pho',
        url_safe: 'khok-pho',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9403',
        name_ja: 'Nong Chik',
        name_th: 'อ.หนองจิก',
        name_en: 'Nong Chik',
        url_safe: 'nong-chik',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9404',
        name_ja: 'Panare',
        name_th: 'อ.ปะนาเระ',
        name_en: 'Panare',
        url_safe: 'panare',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9405',
        name_ja: 'Mayo',
        name_th: 'อ.มายอ',
        name_en: 'Mayo',
        url_safe: 'mayo',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9609',
        name_ja: 'Sukhirin',
        name_th: 'อ.สุคิริน',
        name_en: 'Sukhirin',
        url_safe: 'sukhirin',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9608',
        name_ja: 'Waeng',
        name_th: 'อ.แว้ง',
        name_en: 'Waeng',
        url_safe: 'waeng',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9607',
        name_ja: 'Si Sakhon',
        name_th: 'อ.ศรีสาคร',
        name_en: 'Si Sakhon',
        url_safe: 'si-sakhon',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9606',
        name_ja: 'Rueso',
        name_th: 'อ.รือเสาะ',
        name_en: 'Rueso',
        url_safe: 'rueso',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9605',
        name_ja: 'Ra-ngae',
        name_th: 'อ.ระแงะ',
        name_en: 'Ra-ngae',
        url_safe: 'ra-ngae',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9604',
        name_ja: 'Yi-ngo',
        name_th: 'อ.ยี่งอ',
        name_en: 'Yi-ngo',
        url_safe: 'yi-ngo',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9603',
        name_ja: 'Tak Bai',
        name_th: 'อ.บาเจาะ',
        name_en: 'Tak Bai',
        url_safe: 'tak-bai',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9602',
        name_ja: 'Tak Bai',
        name_th: 'อ.ตากใบ',
        name_en: 'Tak Bai',
        url_safe: 'tak-bai',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9601',
        name_ja: 'Mueang Narathiwat',
        name_th: 'อ.เมืองนราธิวาส',
        name_en: 'Mueang Narathiwat',
        url_safe: 'mueang-narathiwat',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9508',
        name_ja: 'Krong Pinang',
        name_th: 'อ.กรงปีนัง',
        name_en: 'Krong Pinang',
        url_safe: 'krong-pinang',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9507',
        name_ja: 'Kabang',
        name_th: 'อ.กาบัง',
        name_en: 'Kabang',
        url_safe: 'kabang',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9506',
        name_ja: 'Raman',
        name_th: 'อ.รามัน',
        name_en: 'Raman',
        url_safe: 'raman',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9505',
        name_ja: 'Yaha',
        name_th: 'อ.ยะหา',
        name_en: 'Yaha',
        url_safe: 'yaha',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9504',
        name_ja: 'Than To',
        name_th: 'อ.ธารโต',
        name_en: 'Than To',
        url_safe: 'than-to',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9503',
        name_ja: 'Bannang Sata',
        name_th: 'อ.บันนังสตา',
        name_en: 'Bannang Sata',
        url_safe: 'bannang-sata',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9502',
        name_ja: 'Betong',
        name_th: 'อ.เบตง',
        name_en: 'Betong',
        url_safe: 'betong',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9501',
        name_ja: 'Mueang Yala',
        name_th: 'อ.เมืองยะลา',
        name_en: 'Mueang Yala',
        url_safe: 'mueang-yala',
        province_original_id: 'yala'
    )

    District.create(
        original_id: '9412',
        name_ja: 'Mae Lan',
        name_th: 'อ.แม่ลาน',
        name_en: 'Mae Lan',
        url_safe: 'mae-lan',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9411',
        name_ja: 'Kapho',
        name_th: 'อ.กะพ้อ',
        name_en: 'Kapho',
        url_safe: 'kapho',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9410',
        name_ja: 'Yarang',
        name_th: 'อ.ยะรัง',
        name_en: 'Yarang',
        url_safe: 'yarang',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9409',
        name_ja: 'Yaring',
        name_th: 'อ.ยะหริ่ง',
        name_en: 'Yaring',
        url_safe: 'yaring',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9408',
        name_ja: 'Mai Kaen',
        name_th: 'อ.ไม้แก่น',
        name_en: 'Mai Kaen',
        url_safe: 'mai-kaen',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9407',
        name_ja: 'Sai Buri',
        name_th: 'อ.สายบุรี',
        name_en: 'Sai Buri',
        url_safe: 'sai-buri',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9406',
        name_ja: 'Thung Yang Daeng',
        name_th: 'อ.ทุ่งยางแดง',
        name_en: 'Thung Yang Daeng',
        url_safe: 'thung-yang-daeng',
        province_original_id: 'pattani'
    )

    District.create(
        original_id: '9610',
        name_ja: 'Su-ngai Kolok',
        name_th: 'อ.สุไหงโก-ลก',
        name_en: 'Su-ngai Kolok',
        url_safe: 'su-ngai-kolok',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9611',
        name_ja: 'Su-ngai Padi',
        name_th: 'อ.สุไหงปาดี',
        name_en: 'Su-ngai Padi',
        url_safe: 'su-ngai-padi',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9612',
        name_ja: 'Chanae',
        name_th: 'อ.จะแนะ',
        name_en: 'Chanae',
        url_safe: 'chanae',
        province_original_id: 'narathiwat'
    )

    District.create(
        original_id: '9613',
        name_ja: 'Cho-airong',
        name_th: 'อ.เจาะไอร้อง',
        name_en: 'Cho-airong',
        url_safe: 'cho-airong',
        province_original_id: 'narathiwat'
    )

    to_string(false)
  end
end

