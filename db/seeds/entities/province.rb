class ProvinceSeeds
  attr_accessor :name

  include Printable

  def initialize
    @name = "Province"
    Province.destroy_all
  end

  def exec
    to_string

    Province.create(
        original_id: 'bangkok',
        name_ja: 'Bangkok',
        name_th: 'กรุงเทพมหานคร',
        name_en: 'Bangkok',
        url_safe: 'bangkok',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'samut-prakarn',
        name_ja: 'Samut Prakarn',
        name_th: 'สมุทรปราการ',
        name_en: 'Samut Prakarn',
        url_safe: 'samut-prakarn',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nonthaburi',
        name_ja: 'Nonthaburi',
        name_th: 'นนทบุรี',
        name_en: 'Nonthaburi',
        url_safe: 'nonthaburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'pathum-thani',
        name_ja: 'Pathum Thani',
        name_th: 'ปทุมธานี',
        name_en: 'Pathum Thani',
        url_safe: 'pathum-thani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phra-nakhon-si-ayutthaya',
        name_ja: 'Phra Nakhon Si Ayutthaya',
        name_th: 'พระนครศรีอยุธยา',
        name_en: 'Phra Nakhon Si Ayutthaya',
        url_safe: 'phra-nakhon-si-ayutthaya',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'ang-thong',
        name_ja: 'Ang Thong',
        name_th: 'อ่างทอง',
        name_en: 'Ang Thong',
        url_safe: 'ang-thong',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'lop-buri',
        name_ja: 'Lop Buri',
        name_th: 'ลพบุรี',
        name_en: 'Lop Buri',
        url_safe: 'lop-buri',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'sing-buri',
        name_ja: 'Sing Buri',
        name_th: 'สิงห์บุรี',
        name_en: 'Sing Buri',
        url_safe: 'sing-buri',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chai-nat',
        name_ja: 'Chai Nat',
        name_th: 'ชัยนาท',
        name_en: 'Chai Nat',
        url_safe: 'chai-nat',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'saraburi',
        name_ja: 'Saraburi',
        name_th: 'สระบุรี',
        name_en: 'Saraburi',
        url_safe: 'saraburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'rayong',
        name_ja: 'Rayong',
        name_th: 'ระยอง',
        name_en: 'Rayong',
        url_safe: 'rayong',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chanthaburi',
        name_ja: 'Chanthaburi',
        name_th: 'จันทบุรี',
        name_en: 'Chanthaburi',
        url_safe: 'chanthaburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chon-buri',
        name_ja: 'Chon Buri',
        name_th: 'ชลบุรี',
        name_en: 'Chon Buri',
        url_safe: 'chon-buri',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'trat',
        name_ja: 'Trat',
        name_th: 'ตราด',
        name_en: 'Trat',
        url_safe: 'trat',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chachoengsao',
        name_ja: 'Chachoengsao',
        name_th: 'ฉะเชิงเทรา',
        name_en: 'Chachoengsao',
        url_safe: 'chachoengsao',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'prachin-buri',
        name_ja: 'Prachin Buri',
        name_th: 'ปราจีนบุรี',
        name_en: 'Prachin Buri',
        url_safe: 'prachin-buri',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-nayok',
        name_ja: 'Nakhon Nayok',
        name_th: 'นครนายก',
        name_en: 'Nakhon Nayok',
        url_safe: 'nakhon-nayok',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'sa-kaeo',
        name_ja: 'Sa kaeo',
        name_th: 'สระแก้ว',
        name_en: 'Sa kaeo',
        url_safe: 'sa-kaeo',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-ratchasima',
        name_ja: 'Nakhon Ratchasima',
        name_th: 'นครราชสีมา',
        name_en: 'Nakhon Ratchasima',
        url_safe: 'nakhon-ratchasima',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'buri-ram',
        name_ja: 'Buri Ram',
        name_th: 'บุรีรัมย์',
        name_en: 'Buri Ram',
        url_safe: 'buri-ram',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'surin',
        name_ja: 'Surin',
        name_th: 'สุรินทร์',
        name_en: 'Surin',
        url_safe: 'surin',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'si-sa-ket',
        name_ja: 'Si Sa Ket',
        name_th: 'ศรีสะเกษ',
        name_en: 'Si Sa Ket',
        url_safe: 'si-sa-ket',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'ubon-ratchathani',
        name_ja: 'Ubon Ratchathani',
        name_th: 'อุบลราชธานี',
        name_en: 'Ubon Ratchathani',
        url_safe: 'ubon-ratchathani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'yasothon',
        name_ja: 'Yasothon',
        name_th: 'ยโสธร',
        name_en: 'Yasothon',
        url_safe: 'yasothon',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chaiyaphum',
        name_ja: 'Chaiyaphum',
        name_th: 'ชัยภูมิ',
        name_en: 'Chaiyaphum',
        url_safe: 'chaiyaphum',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'amnat-charoen',
        name_ja: 'Amnat Charoen',
        name_th: 'อำนาจเจริญ',
        name_en: 'Amnat Charoen',
        url_safe: 'amnat-charoen',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'bueng-kan',
        name_ja: 'Bueng Kan',
        name_th: 'บึงกาฬ',
        name_en: 'Bueng Kan',
        url_safe: 'bueng-kan',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nong-bua-lam-phu',
        name_ja: 'Nong Bua Lam Phu',
        name_th: 'หนองบัวลำภู',
        name_en: 'Nong Bua Lam Phu',
        url_safe: 'nong-bua-lam-phu',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'khon-kaen',
        name_ja: 'Khon Kaen',
        name_th: 'ขอนแก่น',
        name_en: 'Khon Kaen',
        url_safe: 'khon-kaen',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'udon-thani',
        name_ja: 'Udon Thani',
        name_th: 'อุดรธานี',
        name_en: 'Udon Thani',
        url_safe: 'udon-thani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'loei',
        name_ja: 'Loei',
        name_th: 'เลย',
        name_en: 'Loei',
        url_safe: 'loei',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nong-khai',
        name_ja: 'Nong Khai',
        name_th: 'หนองคาย',
        name_en: 'Nong Khai',
        url_safe: 'nong-khai',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'maha-sarakham',
        name_ja: 'Maha Sarakham',
        name_th: 'มหาสารคาม',
        name_en: 'Maha Sarakham',
        url_safe: 'maha-sarakham',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'roi-et',
        name_ja: 'Roi Et',
        name_th: 'ร้อยเอ็ด',
        name_en: 'Roi Et',
        url_safe: 'roi-et',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'kalasin',
        name_ja: 'Kalasin',
        name_th: 'กาฬสินธุ์',
        name_en: 'Kalasin',
        url_safe: 'kalasin',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'sakon-nakhon',
        name_ja: 'Sakon Nakhon',
        name_th: 'สกลนคร',
        name_en: 'Sakon Nakhon',
        url_safe: 'sakon-nakhon',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-phanom',
        name_ja: 'Nakhon Phanom',
        name_th: 'นครพนม',
        name_en: 'Nakhon Phanom',
        url_safe: 'nakhon-phanom',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'mukdahan',
        name_ja: 'Mukdahan',
        name_th: 'มุกดาหาร',
        name_en: 'Mukdahan',
        url_safe: 'mukdahan',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chiang-mai',
        name_ja: 'Chiang Mai',
        name_th: 'เชียงใหม่',
        name_en: 'Chiang Mai',
        url_safe: 'chiang-mai',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'lamphun',
        name_ja: 'Lamphun',
        name_th: 'ลำพูน',
        name_en: 'Lamphun',
        url_safe: 'lamphun',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'lampang',
        name_ja: 'Lampang',
        name_th: 'ลำปาง',
        name_en: 'Lampang',
        url_safe: 'lampang',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'uttaradit',
        name_ja: 'Uttaradit',
        name_th: 'อุตรดิตถ์',
        name_en: 'Uttaradit',
        url_safe: 'uttaradit',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phrae',
        name_ja: 'Phrae',
        name_th: 'แพร่',
        name_en: 'Phrae',
        url_safe: 'phrae',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nan',
        name_ja: 'Nan',
        name_th: 'น่าน',
        name_en: 'Nan',
        url_safe: 'nan',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phayao',
        name_ja: 'Phayao',
        name_th: 'พะเยา',
        name_en: 'Phayao',
        url_safe: 'phayao',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chiang-rai',
        name_ja: 'Chiang Rai',
        name_th: 'เชียงราย',
        name_en: 'Chiang Rai',
        url_safe: 'chiang-rai',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'mae-hong-son',
        name_ja: 'Mae Hong Son',
        name_th: 'แม่ฮ่องสอน',
        name_en: 'Mae Hong Son',
        url_safe: 'mae-hong-son',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-sawan',
        name_ja: 'Nakhon Sawan',
        name_th: 'นครสวรรค์',
        name_en: 'Nakhon Sawan',
        url_safe: 'nakhon-sawan',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'uthai-thani',
        name_ja: 'Uthai Thani',
        name_th: 'อุทัยธานี',
        name_en: 'Uthai Thani',
        url_safe: 'uthai-thani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'kamphaeng-phet',
        name_ja: 'Kamphaeng Phet',
        name_th: 'กำแพงเพชร',
        name_en: 'Kamphaeng Phet',
        url_safe: 'kamphaeng-phet',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'tak',
        name_ja: 'Tak',
        name_th: 'ตาก',
        name_en: 'Tak',
        url_safe: 'tak',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'sukhothai',
        name_ja: 'Sukhothai',
        name_th: 'สุโขทัย',
        name_en: 'Sukhothai',
        url_safe: 'sukhothai',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phitsanulok',
        name_ja: 'Phitsanulok',
        name_th: 'พิษณุโลก',
        name_en: 'Phitsanulok',
        url_safe: 'phitsanulok',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phichit',
        name_ja: 'Phichit',
        name_th: 'พิจิตร',
        name_en: 'Phichit',
        url_safe: 'phichit',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phetchabun',
        name_ja: 'Phetchabun',
        name_th: 'เพชรบูรณ์',
        name_en: 'Phetchabun',
        url_safe: 'phetchabun',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'ratchaburi',
        name_ja: 'Ratchaburi',
        name_th: 'ราชบุรี',
        name_en: 'Ratchaburi',
        url_safe: 'ratchaburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'kanchanaburi',
        name_ja: 'Kanchanaburi',
        name_th: 'กาญจนบุรี',
        name_en: 'Kanchanaburi',
        url_safe: 'kanchanaburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'suphan-buri',
        name_ja: 'Suphan Buri',
        name_th: 'สุพรรณบุรี',
        name_en: 'Suphan Buri',
        url_safe: 'suphan-buri',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-pathom',
        name_ja: 'Nakhon Pathom',
        name_th: 'นครปฐม',
        name_en: 'Nakhon Pathom',
        url_safe: 'nakhon-pathom',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'samut-sakhon',
        name_ja: 'Samut Sakhon',
        name_th: 'สมุทรสาคร',
        name_en: 'Samut Sakhon',
        url_safe: 'samut-sakhon',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'samut-songkhram',
        name_ja: 'Samut Songkhram',
        name_th: 'สมุทรสงคราม',
        name_en: 'Samut Songkhram',
        url_safe: 'samut-songkhram',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phetchaburi',
        name_ja: 'Phetchaburi',
        name_th: 'เพชรบุรี',
        name_en: 'Phetchaburi',
        url_safe: 'phetchaburi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'prachuap-khiri-khan',
        name_ja: 'Prachuap Khiri Khan',
        name_th: 'ประจวบคีรีขันธ์',
        name_en: 'Prachuap Khiri Khan',
        url_safe: 'prachuap-khiri-khan',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'nakhon-si-thammarat',
        name_ja: 'Nakhon Si Thammarat',
        name_th: 'นครศรีธรรมราช',
        name_en: 'Nakhon Si Thammarat',
        url_safe: 'nakhon-si-thammarat',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'krabi',
        name_ja: 'Krabi',
        name_th: 'กระบี่',
        name_en: 'Krabi',
        url_safe: 'krabi',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phang-nga',
        name_ja: 'Phang-nga',
        name_th: 'พังงา',
        name_en: 'Phang-nga',
        url_safe: 'phang-nga',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phuket',
        name_ja: 'Phuket',
        name_th: 'ภูเก็ต',
        name_en: 'Phuket',
        url_safe: 'phuket',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'surat-thani',
        name_ja: 'Surat Thani',
        name_th: 'สุราษฎร์ธานี',
        name_en: 'Surat Thani',
        url_safe: 'surat-thani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'ranong',
        name_ja: 'Ranong',
        name_th: 'ระนอง',
        name_en: 'Ranong',
        url_safe: 'ranong',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'chumphon',
        name_ja: 'Chumphon',
        name_th: 'ชุมพร',
        name_en: 'Chumphon',
        url_safe: 'chumphon',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'songkhla',
        name_ja: 'Songkhla',
        name_th: 'สงขลา',
        name_en: 'Songkhla',
        url_safe: 'songkhla',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'satun',
        name_ja: 'Satun',
        name_th: 'สตูล',
        name_en: 'Satun',
        url_safe: 'satun',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'trang',
        name_ja: 'Trang',
        name_th: 'ตรัง',
        name_en: 'Trang',
        url_safe: 'trang',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'phatthalung',
        name_ja: 'Phatthalung',
        name_th: 'พัทลุง',
        name_en: 'Phatthalung',
        url_safe: 'phatthalung',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'pattani',
        name_ja: 'Pattani',
        name_th: 'ปัตตานี',
        name_en: 'Pattani',
        url_safe: 'pattani',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'narathiwat',
        name_ja: 'Narathiwat',
        name_th: 'นราธิวาส',
        name_en: 'Narathiwat',
        url_safe: 'narathiwat',
        country_original_id: 'th'
    )

    Province.create(
        original_id: 'yala',
        name_ja: 'Yala',
        name_th: 'ยะลา',
        name_en: 'Yala',
        url_safe: 'yala',
        country_original_id: 'th'
    )

    to_string(false)
  end
end

