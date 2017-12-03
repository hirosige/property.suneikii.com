class SubDistrictV2Seeds
  attr_accessor :delete_list
  attr_accessor :name

  include Printable

  def initialize
    @name = "Subdistrict V2"
    @delete_list = Array.new

    # list of no jp/en name of subdistrict contained
    # delete and insert new data for un-named districts
    @delete_list.push(
        17,   18,   19,   20,   21,   22,   23,   24,   25,
        26,   27,   28,   29,   30,   31,   32,   33,   34,
        35,   36,   37,   38,   39,   40,   41,   42,   43,
        44,   45,   46,   47,   48,   49,   50,   51,   52,
        53,   54,   55,   56,   57,   58,   61,   59,   60,
        62,   63,   64,   65,   66,   67,   68,   69,   70,
        71,   72,   73,   74,   75,   76,   77,   78,   79,
        80,   81,   82,   83,   84,   85,   86,   87,   88,
        89,   91,   92,   93,   94,   95,   96,   97,   98,
        99,   100,  101,  102,  103,  104,  105,  106,  107,
        109,  108,  110,  111,  112,  113,  114,  115,  116,
        117,  118,  119,  120,  121,  122,  123,  124,  125,
        126,  127,  128,  129,  130,  131,  132,  133,  134,
        135,  136,  137,  138,  139,  140,  141,  142,  143,
        144,  145,  146,  147,  148,  149,  150,  151,  152,
        153,  154,  155,  156,  157,  166,  167,  158,  159,
        160,  161,  162,  164,  168,  169,  170,  171,  172,
        173,  174,  175,  176,  177,  178,  179,  180,  181,
        90,   954,  965,  999,  1385, 1431, 2004, 2338, 2527,
        2817, 2818, 2819, 2820, 2821, 2822, 2823, 2824, 2825,
        2826, 2827, 2828, 2829, 2830, 2831, 2832, 2833, 2834,
        2835, 2836, 2837, 2838, 2839, 2840, 2841, 2842, 2843,
        2844, 2845, 2846, 2847, 2848, 2849, 2850, 2851, 2852,
        2853, 2854, 2855, 2856, 2857, 2858, 2859, 2860, 2861,
        2862, 2863, 2864, 2865, 2866, 2867, 2868, 2869, 3127,
        3128, 3129, 3140, 3446, 3500, 3530, 3653, 3748, 3752,
        3753, 3758, 3761, 4150, 4177, 4420, 4860, 5275, 5338,
        5516, 5517, 5518, 5519, 5520, 5521, 5522, 5523, 5524,
        5525, 5526, 5527, 5528, 5529, 5530, 5669, 6355, 6520,
        6709, 6710, 6711, 6878, 6884, 7372, 7373, 7393, 7511, 7512, 7514, 7636
    )

    @delete_list.each do |id|
      Subdistrict.find_by(:original_id => id).destroy unless Subdistrict.find_by(:original_id => id).nil?
    end
  end

  def exec
    to_string

    Subdistrict.create(
        original_id: '17',
        name_ja: 'Nakhon Chaisri',
        name_th: 'แขวงถนนนครไชยศรี',
        name_en: 'Nakhon Chaisri',
        url_safe: 'nakhon-chaisri',
        district_original_id: '1002'
    )

    Subdistrict.create(
        original_id: '18',
        name_ja: 'Krathum Rai',
        name_th: 'แขวงกระทุ่มราย',
        name_en: 'Krathum Rai',
        url_safe: 'krathum-rai',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '19',
        name_ja: 'Nong Chok',
        name_th: 'แขวงหนองจอก',
        name_en: 'Nong Chok',
        url_safe: 'nong-chok',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '20',
        name_ja: 'Khlong Sip',
        name_th: 'แขวงคลองสิบ',
        name_en: 'Khlong Sip',
        url_safe: 'khlong-sip',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '21',
        name_ja: 'Khlong Sip Song',
        name_th: 'แขวงคลองสิบสอง',
        name_en: 'Khlong Sip Song',
        url_safe: 'khlong-sip-song',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '22',
        name_ja: 'Khok Faet',
        name_th: 'แขวงโคกแฝด',
        name_en: 'Khok Faet',
        url_safe: 'khok-faet',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '23',
        name_ja: 'Khu Fang Nuea',
        name_th: 'แขวงคู้ฝั่งเหนือ',
        name_en: 'Khu Fang Nuea',
        url_safe: 'khu-fang-nuea',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '24',
        name_ja: 'Lam Phak Chi',
        name_th: 'แขวงลำผักชี',
        name_en: 'Lam Phak Chi',
        url_safe: 'lam-phak-chi',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '25',
        name_ja: 'Lam Toiting',
        name_th: 'แขวงลำต้อยติ่ง',
        name_en: 'Lam Toiting',
        url_safe: 'lam-toiting',
        district_original_id: '1003'
    )

    Subdistrict.create(
        original_id: '26',
        name_ja: 'Maha Phruettharam',
        name_th: 'แขวงมหาพฤฒาราม',
        name_en: 'Maha Phruettharam',
        url_safe: 'maha-phruettharam',
        district_original_id: '1004'
    )

    Subdistrict.create(
        original_id: '27',
        name_ja: 'Si Lom',
        name_th: 'แขวงสีลม',
        name_en: 'Si Lom',
        url_safe: 'si-lom',
        district_original_id: '1004'
    )

    Subdistrict.create(
        original_id: '28',
        name_ja: 'Suriyawong',
        name_th: 'แขวงสุริยวงศ์',
        name_en: 'Suriyawong',
        url_safe: 'suriyawong',
        district_original_id: '1004'
    )

    Subdistrict.create(
        original_id: '29',
        name_ja: 'Bang Rak',
        name_th: 'แขวงบางรัก',
        name_en: 'Bang Rak',
        url_safe: 'bang-rak',
        district_original_id: '1004'
    )

    Subdistrict.create(
        original_id: '30',
        name_ja: 'Si Phraya',
        name_th: 'แขวงสี่พระยา',
        name_en: 'Si Phraya',
        url_safe: 'si-phraya',
        district_original_id: '1004'
    )

    Subdistrict.create(
        original_id: '31',
        name_ja: 'Anusawari',
        name_th: 'แขวงอนุสาวรีย์',
        name_en: 'Anusawari',
        url_safe: 'anusawari',
        district_original_id: '1005'
    )

    Subdistrict.create(
        original_id: '32',
        name_ja: 'Tha Raeng',
        name_th: 'แขวงท่าแร้ง',
        name_en: 'Tha Raeng',
        url_safe: 'tha-raeng',
        district_original_id: '1005'
    )

    Subdistrict.create(
        original_id: '33',
        name_ja: 'Khlong Chan',
        name_th: 'แขวงคลองจั่น',
        name_en: 'Khlong Chan',
        url_safe: 'khlong-chan',
        district_original_id: '1006'
    )

    Subdistrict.create(
        original_id: '34',
        name_ja: 'Hua Mak',
        name_th: 'แขวงหัวหมาก',
        name_en: 'Hua Mak',
        url_safe: 'hua-mak',
        district_original_id: '1006'
    )

    Subdistrict.create(
        original_id: '35',
        name_ja: 'Rong Mueang',
        name_th: 'แขวงรองเมือง',
        name_en: 'Rong Mueang',
        url_safe: 'rong-mueang',
        district_original_id: '1007'
    )

    Subdistrict.create(
        original_id: '36',
        name_ja: 'Wang Mai',
        name_th: 'แขวงวังใหม่',
        name_en: 'Wang Mai',
        url_safe: 'wang-mai',
        district_original_id: '1007'
    )

    Subdistrict.create(
        original_id: '37',
        name_ja: 'Pathum Wan',
        name_th: 'แขวงปทุมวัน',
        name_en: 'Pathum Wan',
        url_safe: 'pathum-wan',
        district_original_id: '1007'
    )

    Subdistrict.create(
        original_id: '38',
        name_ja: 'Lumphini',
        name_th: 'แขวงลุมพินี',
        name_en: 'Lumphini',
        url_safe: 'lumphini',
        district_original_id: '1007'
    )

    Subdistrict.create(
        original_id: '39',
        name_ja: 'Pom Prap',
        name_th: 'แขวงป้อมปราบ',
        name_en: 'Pom Prap',
        url_safe: 'pom-prap',
        district_original_id: '1008'
    )

    Subdistrict.create(
        original_id: '40',
        name_ja: 'Wat Thep Sirin',
        name_th: 'แขวงวัดเทพศิรินทร์',
        name_en: 'Wat Thep Sirin',
        url_safe: 'wat-thep-sirin',
        district_original_id: '1008'
    )

    Subdistrict.create(
        original_id: '41',
        name_ja: 'Khlong Maha Nak',
        name_th: 'แขวงคลองมหานาค',
        name_en: 'Khlong Maha Nak',
        url_safe: 'khlong-maha-nak',
        district_original_id: '1008'
    )

    Subdistrict.create(
        original_id: '42',
        name_ja: 'Ban Bat',
        name_th: 'แขวงบ้านบาตร',
        name_en: 'Ban Bat',
        url_safe: 'ban-bat',
        district_original_id: '1008'
    )

    Subdistrict.create(
        original_id: '43',
        name_ja: 'Wat Sommanat',
        name_th: 'แขวงวัดโสมนัส',
        name_en: 'Wat Sommanat',
        url_safe: 'wat-sommanat',
        district_original_id: '1008'
    )

    Subdistrict.create(
        original_id: '44',
        name_ja: 'Bang Chak',
        name_th: 'แขวงบางจาก',
        name_en: 'Bang Chak',
        url_safe: 'bang-chak',
        district_original_id: '1009'
    )

    Subdistrict.create(
        original_id: '45',
        name_ja: 'Min Buri',
        name_th: 'แขวงมีนบุรี',
        name_en: 'Min Buri',
        url_safe: 'min-buri',
        district_original_id: '1010'
    )

    Subdistrict.create(
        original_id: '46',
        name_ja: 'Saen Saep',
        name_th: 'แขวงแสนแสบ',
        name_en: 'Saen Saep',
        url_safe: 'saen-saep',
        district_original_id: '1010'
    )

    Subdistrict.create(
        original_id: '47',
        name_ja: 'Lat Krabang',
        name_th: 'แขวงลาดกระบัง',
        name_en: 'Lat Krabang',
        url_safe: 'lat-krabang',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '48',
        name_ja: 'Khlong Song Ton Nun',
        name_th: 'แขวงคลองสองต้นนุ่น',
        name_en: 'Khlong Song Ton Nun',
        url_safe: 'khlong-song-ton-nun',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '49',
        name_ja: 'Khlong Sam Prawet',
        name_th: 'แขวงคลองสามประเวศ',
        name_en: 'Khlong Sam Prawet',
        url_safe: 'khlong-sam-prawet',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '50',
        name_ja: 'Lam Pla Thio',
        name_th: 'แขวงลำปลาทิว',
        name_en: 'Lam Pla Thio',
        url_safe: 'lam-pla-thio',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '51',
        name_ja: 'Thap Yao',
        name_th: 'แขวงทับยาว',
        name_en: 'Thap Yao',
        url_safe: 'thap-yao',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '52',
        name_ja: 'Khum Thong',
        name_th: 'แขวงขุมทอง',
        name_en: 'Khum Thong',
        url_safe: 'khum-thong',
        district_original_id: '1011'
    )

    Subdistrict.create(
        original_id: '53',
        name_ja: 'Chong Nonsi',
        name_th: 'แขวงช่องนนทรี',
        name_en: 'Chong Nonsi',
        url_safe: 'chong-nonsi',
        district_original_id: '1012'
    )

    Subdistrict.create(
        original_id: '54',
        name_ja: 'Bang Phongphang',
        name_th: 'แขวงบางโพงพาง',
        name_en: 'Bang Phongphang',
        url_safe: 'bang-phongphang',
        district_original_id: '1012'
    )

    Subdistrict.create(
        original_id: '55',
        name_ja: 'Chakkrawat',
        name_th: 'แขวงจักรวรรดิ',
        name_en: 'Chakkrawat',
        url_safe: 'chakkrawat',
        district_original_id: '1013'
    )

    Subdistrict.create(
        original_id: '56',
        name_ja: 'Samphanthawong',
        name_th: 'แขวงสัมพันธวงศ์',
        name_en: 'Samphanthawong',
        url_safe: 'samphanthawong',
        district_original_id: '1013'
    )

    Subdistrict.create(
        original_id: '57',
        name_ja: 'Talat Noi',
        name_th: 'แขวงตลาดน้อย',
        name_en: 'Talat Noi',
        url_safe: 'talat-noi',
        district_original_id: '1013'
    )

    Subdistrict.create(
        original_id: '58',
        name_ja: 'Sam Sen Nai',
        name_th: 'แขวงสามเสนใน',
        name_en: 'Sam Sen Nai',
        url_safe: 'sam-sen-nai',
        district_original_id: '1014'
    )

    Subdistrict.create(
        original_id: '61',
        name_ja: 'Bang Yi Ruea',
        name_th: 'แขวงบางยี่เรือ',
        name_en: 'Bang Yi Ruea',
        url_safe: 'bang-yi-ruea',
        district_original_id: '1015'
    )

    Subdistrict.create(
        original_id: '59',
        name_ja: 'Wat Kanlaya',
        name_th: 'แขวงวัดกัลยาณ์',
        name_en: 'Wat Kanlaya',
        url_safe: 'wat-kanlaya',
        district_original_id: '1015'
    )

    Subdistrict.create(
        original_id: '60',
        name_ja: 'Hiran Ruchi',
        name_th: 'แขวงหิรัญรูจี',
        name_en: 'Hiran Ruchi',
        url_safe: 'hiran-ruchi',
        district_original_id: '1015'
    )

    Subdistrict.create(
        original_id: '62',
        name_ja: 'Bukkhalo',
        name_th: 'แขวงบุคคโล',
        name_en: 'Bukkhalo',
        url_safe: 'bukkhalo',
        district_original_id: '1015'
    )

    Subdistrict.create(
        original_id: '63',
        name_ja: 'Talat Phlu',
        name_th: 'แขวงตลาดพลู',
        name_en: 'Talat Phlu',
        url_safe: 'talat-phlu',
        district_original_id: '1015'
    )

    Subdistrict.create(
        original_id: '64',
        name_ja: 'Wat Arun',
        name_th: 'แขวงวัดอรุณ',
        name_en: 'Wat Arun',
        url_safe: 'wat-arun',
        district_original_id: '1016'
    )

    Subdistrict.create(
        original_id: '65',
        name_ja: 'Wat Tha Phra',
        name_th: 'แขวงวัดท่าพระ',
        name_en: 'Wat Tha Phra',
        url_safe: 'wat-tha-phra',
        district_original_id: '1016'
    )

    Subdistrict.create(
        original_id: '66',
        name_ja: 'Huai Khwang',
        name_th: 'แขวงห้วยขวาง',
        name_en: 'Huai Khwang',
        url_safe: 'huai-khwang',
        district_original_id: '1017'
    )

    Subdistrict.create(
        original_id: '67',
        name_ja: 'Bang Kapi',
        name_th: 'แขวงบางกะปิ',
        name_en: 'Bang Kapi',
        url_safe: 'bang-kapi',
        district_original_id: '1017'
    )

    Subdistrict.create(
        original_id: '68',
        name_ja: 'Sam Sen Nok',
        name_th: 'แขวงสามเสนนอก',
        name_en: 'Sam Sen Nok',
        url_safe: 'sam-sen-nok',
        district_original_id: '1017'
    )

    Subdistrict.create(
        original_id: '69',
        name_ja: 'Somdet Chao Phraya',
        name_th: 'แขวงสมเด็จเจ้าพระยา',
        name_en: 'Somdet Chao Phraya',
        url_safe: 'somdet-chao-phraya',
        district_original_id: '1018'
    )

    Subdistrict.create(
        original_id: '70',
        name_ja: 'Khlong San',
        name_th: 'แขวงคลองสาน',
        name_en: 'Khlong San',
        url_safe: 'khlong-san',
        district_original_id: '1018'
    )

    Subdistrict.create(
        original_id: '71',
        name_ja: 'Bang Lamphu Lang',
        name_th: 'แขวงบางลำภูล่าง',
        name_en: 'Bang Lamphu Lang',
        url_safe: 'bang-lamphu-lang',
        district_original_id: '1018'
    )

    Subdistrict.create(
        original_id: '72',
        name_ja: 'Khlong Ton Sai',
        name_th: 'แขวงคลองต้นไทร',
        name_en: 'Khlong Ton Sai',
        url_safe: 'khlong-ton-sai',
        district_original_id: '1018'
    )

    Subdistrict.create(
        original_id: '73',
        name_ja: 'Khlong Chak Phra',
        name_th: 'แขวงคลองชักพระ',
        name_en: 'Khlong Chak Phra',
        url_safe: 'khlong-chak-phra',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '74',
        name_ja: 'Taling Chan',
        name_th: 'แขวงตลิ่งชัน',
        name_en: 'Taling Chan',
        url_safe: 'taling-chan',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '75',
        name_ja: 'Chimphli',
        name_th: 'แขวงฉิมพลี',
        name_en: 'Chimphli',
        url_safe: 'chimphli',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '76',
        name_ja: 'Bang Phrom',
        name_th: 'แขวงบางพรม',
        name_en: 'Bang Phrom',
        url_safe: 'bang-phrom',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '77',
        name_ja: 'Bang Ramat',
        name_th: 'แขวงบางระมาด',
        name_en: 'Bang Ramat',
        url_safe: 'bang-ramat',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '78',
        name_ja: 'Bang Chueak Nang',
        name_th: 'แขวงบางเชือกหนัง',
        name_en: 'Bang Chueak Nang',
        url_safe: 'bang-chueak-nang',
        district_original_id: '1019'
    )

    Subdistrict.create(
        original_id: '79',
        name_ja: 'Siri Rat',
        name_th: 'แขวงศิริราช',
        name_en: 'Siri Rat',
        url_safe: 'siri-rat',
        district_original_id: '1020'
    )

    Subdistrict.create(
        original_id: '80',
        name_ja: 'Ban Chang Lo',
        name_th: 'แขวงบ้านช่างหล่อ',
        name_en: 'Ban Chang Lo',
        url_safe: 'ban-chang-lo',
        district_original_id: '1020'
    )

    Subdistrict.create(
        original_id: '81',
        name_ja: 'Bang Khun Non',
        name_th: 'แขวงบางขุนนนท์',
        name_en: 'Bang Khun Non',
        url_safe: 'bang-khun-non',
        district_original_id: '1020'
    )

    Subdistrict.create(
        original_id: '82',
        name_ja: 'Bang Khun Si',
        name_th: 'แขวงบางขุนศรี',
        name_en: 'Bang Khun Si',
        url_safe: 'bang-khun-si',
        district_original_id: '1020'
    )

    Subdistrict.create(
        original_id: '83',
        name_ja: 'Arun Ammarin',
        name_th: 'แขวงอรุณอมรินทร์',
        name_en: 'Arun Ammarin',
        url_safe: 'arun-ammarin',
        district_original_id: '1020'
    )

    Subdistrict.create(
        original_id: '84',
        name_ja: 'Tha Kham',
        name_th: 'แขวงท่าข้าม',
        name_en: 'Tha Kham',
        url_safe: 'tha-kham',
        district_original_id: '1021'
    )

    Subdistrict.create(
        original_id: '85',
        name_ja: 'Samae Dam',
        name_th: 'แขวงแสมดำ',
        name_en: 'Samae Dam',
        url_safe: 'samae-dam',
        district_original_id: '1021'
    )

    Subdistrict.create(
        original_id: '86',
        name_ja: 'Bang Wa',
        name_th: 'แขวงบางหว้า',
        name_en: 'Bang Wa',
        url_safe: 'bang-wa',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '87',
        name_ja: 'Bang Duan',
        name_th: 'แขวงบางด้วน',
        name_en: 'Bang Duan',
        url_safe: 'bang-duan',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '88',
        name_ja: 'Bang Chak',
        name_th: 'แขวงบางจาก',
        name_en: 'Bang Chak',
        url_safe: 'bang-chak',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '89',
        name_ja: 'Bang Waek',
        name_th: 'แขวงบางแวก',
        name_en: 'Bang Waek',
        url_safe: 'bang-waek',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '91',
        name_ja: 'Pak Khlong Phasi Charoen',
        name_th: 'แขวงปากคลองภาษีเจริญ',
        name_en: 'Pak Khlong Phasi Charoen',
        url_safe: 'pak-khlong-phasi-charoen',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '92',
        name_ja: 'Khuha Sawan',
        name_th: 'แขวงคูหาสวรรค์',
        name_en: 'Khuha Sawan',
        url_safe: 'khuha-sawan',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '93',
        name_ja: 'Nong Khaem',
        name_th: 'แขวงหนองแขม',
        name_en: 'Nong Khaem',
        url_safe: 'nong-khaem',
        district_original_id: '1023'
    )

    Subdistrict.create(
        original_id: '94',
        name_ja: 'Nong Khang Phlu',
        name_th: 'แขวงหนองค้างพลู',
        name_en: 'Nong Khang Phlu',
        url_safe: 'nong-khang-phlu',
        district_original_id: '1023'
    )

    Subdistrict.create(
        original_id: '95',
        name_ja: 'Rat Burana',
        name_th: 'แขวงราษฎร์บูรณะ',
        name_en: 'Rat Burana',
        url_safe: 'rat-burana',
        district_original_id: '1024'
    )

    Subdistrict.create(
        original_id: '96',
        name_ja: 'Bang Pakok',
        name_th: 'แขวงบางปะกอก',
        name_en: 'Bang Pakok',
        url_safe: 'bang-pakok',
        district_original_id: '1024'
    )

    Subdistrict.create(
        original_id: '97',
        name_ja: 'Bang Phlat',
        name_th: 'แขวงบางพลัด',
        name_en: 'Bang Phlat',
        url_safe: 'bang-phlat',
        district_original_id: '1025'
    )

    Subdistrict.create(
        original_id: '98',
        name_ja: 'Bang O',
        name_th: 'แขวงบางอ้อ',
        name_en: 'Bang O',
        url_safe: 'bang-o',
        district_original_id: '1025'
    )

    Subdistrict.create(
        original_id: '99',
        name_ja: 'Bang Bamru',
        name_th: 'แขวงบางบำหรุ',
        name_en: 'Bang Bamru',
        url_safe: 'bang-bamru',
        district_original_id: '1025'
    )

    Subdistrict.create(
        original_id: '100',
        name_ja: 'Bang Yi Khan',
        name_th: 'แขวงบางยี่ขัน',
        name_en: 'Bang Yi Khan',
        url_safe: 'bang-yi-khan',
        district_original_id: '1025'
    )

    Subdistrict.create(
        original_id: '101',
        name_ja: 'Din Daeng',
        name_th: 'แขวงดินแดง',
        name_en: 'Din Daeng',
        url_safe: 'din-daeng',
        district_original_id: '1026'
    )

    Subdistrict.create(
        original_id: '102',
        name_ja: 'Khlong Kum',
        name_th: 'แขวงคลองกุ่ม',
        name_en: 'Khlong Kum',
        url_safe: 'khlong-kum',
        district_original_id: '1027'
    )

    Subdistrict.create(
        original_id: '103',
        name_ja: 'Thung Wat Don',
        name_th: 'แขวงทุ่งวัดดอน',
        name_en: 'Thung Wat Don',
        url_safe: 'thung-wat-don',
        district_original_id: '1028'
    )

    Subdistrict.create(
        original_id: '104',
        name_ja: 'Yan Nawa',
        name_th: 'แขวงยานนาวา',
        name_en: 'Yan Nawa',
        url_safe: 'yan-nawa',
        district_original_id: '1028'
    )

    Subdistrict.create(
        original_id: '105',
        name_ja: 'Thung Maha Mek',
        name_th: 'แขวงทุ่งมหาเมฆ',
        name_en: 'Thung Maha Mek',
        url_safe: 'thung-maha-mek',
        district_original_id: '1028'
    )

    Subdistrict.create(
        original_id: '106',
        name_ja: 'Thung Maha Mek',
        name_th: 'แขวงบางซื่อ',
        name_en: 'Thung Maha Mek',
        url_safe: 'thung-maha-mek',
        district_original_id: '1029'
    )

    Subdistrict.create(
        original_id: '107',
        name_ja: 'Lat Yao',
        name_th: 'แขวงลาดยาว',
        name_en: 'Lat Yao',
        url_safe: 'lat-yao',
        district_original_id: '1030'
    )

    Subdistrict.create(
        original_id: '109',
        name_ja: 'Wat Phraya Krai',
        name_th: 'แขวงวัดพระยาไกร',
        name_en: 'Wat Phraya Krai',
        url_safe: 'wat-phraya-krai',
        district_original_id: '1031'
    )

    Subdistrict.create(
        original_id: '108',
        name_ja: 'Bang Kho Laem',
        name_th: 'แขวงบางคอแหลม',
        name_en: 'Bang Kho Laem',
        url_safe: 'bang-kho-laem',
        district_original_id: '1031'
    )

    Subdistrict.create(
        original_id: '110',
        name_ja: 'Bang Khlo',
        name_th: 'แขวงบางโคล่',
        name_en: 'Bang Khlo',
        url_safe: 'bang-khlo',
        district_original_id: '1031'
    )

    Subdistrict.create(
        original_id: '111',
        name_ja: 'Prawet',
        name_th: 'แขวงประเวศ',
        name_en: 'Prawet',
        url_safe: 'prawet',
        district_original_id: '1032'
    )

    Subdistrict.create(
        original_id: '112',
        name_ja: 'Nong Bon',
        name_th: 'แขวงหนองบอน',
        name_en: 'Nong Bon',
        url_safe: 'nong-bon',
        district_original_id: '1032'
    )

    Subdistrict.create(
        original_id: '113',
        name_ja: 'Dokmai',
        name_th: 'แขวงดอกไม้',
        name_en: 'Dokmai',
        url_safe: 'dokmai',
        district_original_id: '1032'
    )

    Subdistrict.create(
        original_id: '114',
        name_ja: 'Khlong Toei',
        name_th: 'แขวงคลองเตย',
        name_en: 'Khlong Toei',
        url_safe: 'khlong-toei',
        district_original_id: '1033'
    )

    Subdistrict.create(
        original_id: '115',
        name_ja: 'Khlong Tan',
        name_th: 'แขวงคลองตัน',
        name_en: 'Khlong Tan',
        url_safe: 'khlong-tan',
        district_original_id: '1033'
    )

    Subdistrict.create(
        original_id: '116',
        name_ja: 'Phra Khanong',
        name_th: 'แขวงพระโขนง',
        name_en: 'Phra Khanong',
        url_safe: 'phra-khanong',
        district_original_id: '1033'
    )

    Subdistrict.create(
        original_id: '117',
        name_ja: 'Suan Luang',
        name_th: 'แขวงสวนหลวง',
        name_en: 'Suan Luang',
        url_safe: 'suan-luang',
        district_original_id: '1034'
    )

    Subdistrict.create(
        original_id: '118',
        name_ja: 'Bang Khun Thian',
        name_th: 'แขวงบางขุนเทียน',
        name_en: 'Bang Khun Thian',
        url_safe: 'bang-khun-thian',
        district_original_id: '1035'
    )

    Subdistrict.create(
        original_id: '119',
        name_ja: 'Bang Kho',
        name_th: 'แขวงบางค้อ',
        name_en: 'Bang Kho',
        url_safe: 'bang-kho',
        district_original_id: '1035'
    )

    Subdistrict.create(
        original_id: '120',
        name_ja: 'Bang Mot',
        name_th: 'แขวงบางมด',
        name_en: 'Bang Mot',
        url_safe: 'bang-mot',
        district_original_id: '1035'
    )

    Subdistrict.create(
        original_id: '121',
        name_ja: 'Chom Thong',
        name_th: 'แขวงจอมทอง',
        name_en: 'Chom Thong',
        url_safe: 'chom-thong',
        district_original_id: '1035'
    )

    Subdistrict.create(
        original_id: '122',
        name_ja: 'Si Kan',
        name_th: 'แขวงสีกัน',
        name_en: 'Si Kan',
        url_safe: 'si-kan',
        district_original_id: '1036'
    )

    Subdistrict.create(
        original_id: '123',
        name_ja: 'Thung Phaya Thai',
        name_th: 'แขวงทุ่งพญาไท',
        name_en: 'Thung Phaya Thai',
        url_safe: 'thung-phaya-thai',
        district_original_id: '1037'
    )

    Subdistrict.create(
        original_id: '124',
        name_ja: 'Thanon Phaya Thai',
        name_th: 'แขวงถนนพญาไท',
        name_en: 'Thanon Phaya Thai',
        url_safe: 'thanon-phaya-thai',
        district_original_id: '1037'
    )

    Subdistrict.create(
        original_id: '125',
        name_ja: 'Thanon Phetchaburi',
        name_th: 'แขวงถนนเพชรบุรี',
        name_en: 'Thanon Phetchaburi',
        url_safe: 'thanon-phetchaburi',
        district_original_id: '1037'
    )

    Subdistrict.create(
        original_id: '126',
        name_ja: 'Makkasan',
        name_th: 'แขวงมักกะสัน',
        name_en: 'Makkasan',
        url_safe: 'makkasan',
        district_original_id: '1037'
    )

    Subdistrict.create(
        original_id: '127',
        name_ja: 'Lat Phrao',
        name_th: 'แขวงลาดพร้าว',
        name_en: 'Lat Phrao',
        url_safe: 'lat-phrao',
        district_original_id: '1038'
    )

    Subdistrict.create(
        original_id: '128',
        name_ja: 'Chorakhe Bua',
        name_th: 'แขวงจรเข้บัว',
        name_en: 'Chorakhe Bua',
        url_safe: 'chorakhe-bua',
        district_original_id: '1038'
    )

    Subdistrict.create(
        original_id: '129',
        name_ja: 'Khlong Toei Nuea',
        name_th: 'แขวงคลองเตยเหนือ',
        name_en: 'Khlong Toei Nuea',
        url_safe: 'khlong-toei-nuea',
        district_original_id: '1039'
    )

    Subdistrict.create(
        original_id: '130',
        name_ja: 'Khlong Tan Nuea',
        name_th: 'แขวงคลองตันเหนือ',
        name_en: 'Khlong Tan Nuea',
        url_safe: 'khlong-tan-nuea',
        district_original_id: '1039'
    )

    Subdistrict.create(
        original_id: '131',
        name_ja: 'Phra Khanong Nuea',
        name_th: 'แขวงพระโขนงเหนือ',
        name_en: 'Phra Khanong Nuea',
        url_safe: 'phra-khanong-nuea',
        district_original_id: '1039'
    )

    Subdistrict.create(
        original_id: '132',
        name_ja: 'Bang Khae',
        name_th: 'แขวงบางแค',
        name_en: 'Bang Khae',
        url_safe: 'bang-khae',
        district_original_id: '1040'
    )

    Subdistrict.create(
        original_id: '133',
        name_ja: 'Bang Khae Nuea',
        name_th: 'แขวงบางแคเหนือ',
        name_en: 'Bang Khae Nuea',
        url_safe: 'bang-khae-nuea',
        district_original_id: '1040'
    )

    Subdistrict.create(
        original_id: '134',
        name_ja: 'Bang Phai',
        name_th: 'แขวงบางไผ่',
        name_en: 'Bang Phai',
        url_safe: 'bang-phai',
        district_original_id: '1040'
    )

    Subdistrict.create(
        original_id: '135',
        name_ja: 'Lak Song',
        name_th: 'แขวงหลักสอง',
        name_en: 'Lak Song',
        url_safe: 'lak-song',
        district_original_id: '1040'
    )

    Subdistrict.create(
        original_id: '136',
        name_ja: 'Thung Song Hong',
        name_th: 'แขวงทุ่งสองห้อง',
        name_en: 'Thung Song Hong',
        url_safe: 'thung-song-hong',
        district_original_id: '1041'
    )

    Subdistrict.create(
        original_id: '137',
        name_ja: 'Talat Bang Khen',
        name_th: 'แขวงตลาดบางเขน',
        name_en: 'Talat Bang Khen',
        url_safe: 'talat-bang-khen',
        district_original_id: '1041'
    )

    Subdistrict.create(
        original_id: '138',
        name_ja: 'Sai Mai',
        name_th: 'แขวงสายไหม',
        name_en: 'Sai Mai',
        url_safe: 'sai-mai',
        district_original_id: '1042'
    )

    Subdistrict.create(
        original_id: '139',
        name_ja: 'O Ngoen',
        name_th: 'แขวงออเงิน',
        name_en: 'O Ngoen',
        url_safe: 'o-ngoen',
        district_original_id: '1042'
    )

    Subdistrict.create(
        original_id: '140',
        name_ja: 'Khlong Thanon',
        name_th: 'แขวงคลองถนน',
        name_en: 'Khlong Thanon',
        url_safe: 'khlong-thanon',
        district_original_id: '1042'
    )

    Subdistrict.create(
        original_id: '141',
        name_ja: 'Khan Na Yao',
        name_th: 'แขวงคันนายาว',
        name_en: 'Khan Na Yao',
        url_safe: 'khan-na-yao',
        district_original_id: '1043'
    )

    Subdistrict.create(
        original_id: '142',
        name_ja: 'Saphan Sung',
        name_th: 'แขวงสะพานสูง',
        name_en: 'Saphan Sung',
        url_safe: 'saphan-sung',
        district_original_id: '1044'
    )

    Subdistrict.create(
        original_id: '143',
        name_ja: 'Wang Thonglang',
        name_th: 'แขวงวังทองหลาง',
        name_en: 'Wang Thonglang',
        url_safe: 'wang-thonglang',
        district_original_id: '1045'
    )

    Subdistrict.create(
        original_id: '144',
        name_ja: 'Sam Wa Tawan Tok',
        name_th: 'แขวงสามวาตะวันตก',
        name_en: 'Sam Wa Tawan Tok',
        url_safe: 'sam-wa-tawan-tok',
        district_original_id: '1046'
    )

    Subdistrict.create(
        original_id: '145',
        name_ja: 'Sam Wa Tawan Ok',
        name_th: 'แขวงสามวาตะวันออก',
        name_en: 'Sam Wa Tawan Ok',
        url_safe: 'sam-wa-tawan-ok',
        district_original_id: '1046'
    )

    Subdistrict.create(
        original_id: '146',
        name_ja: 'Bang Chan',
        name_th: 'แขวงบางชัน',
        name_en: 'Bang Chan',
        url_safe: 'bang-chan',
        district_original_id: '1046'
    )

    Subdistrict.create(
        original_id: '147',
        name_ja: 'Sai Kong Din',
        name_th: 'แขวงทรายกองดิน',
        name_en: 'Sai Kong Din',
        url_safe: 'sai-kong-din',
        district_original_id: '1046'
    )

    Subdistrict.create(
        original_id: '148',
        name_ja: 'Sai Kong Din Tai',
        name_th: 'แขวงทรายกองดินใต้',
        name_en: 'Sai Kong Din Tai',
        url_safe: 'sai-kong-din-tai',
        district_original_id: '1046'
    )

    Subdistrict.create(
        original_id: '149',
        name_ja: 'Bang Na',
        name_th: 'แขวงบางนา',
        name_en: 'Bang Na',
        url_safe: 'bang-na',
        district_original_id: '1047'
    )

    Subdistrict.create(
        original_id: '150',
        name_ja: 'Thawi Watthana',
        name_th: 'แขวงทวีวัฒนา',
        name_en: 'Thawi Watthana',
        url_safe: 'thawi-watthana',
        district_original_id: '1048'
    )

    Subdistrict.create(
        original_id: '151',
        name_ja: 'Sala Thammasop',
        name_th: 'แขวงศาลาธรรมสพน์',
        name_en: 'Sala Thammasop',
        url_safe: 'sala-thammasop',
        district_original_id: '1048'
    )

    Subdistrict.create(
        original_id: '152',
        name_ja: 'Bang Mot',
        name_th: 'แขวงบางมด',
        name_en: 'Bang Mot',
        url_safe: 'bang-mot',
        district_original_id: '1049'
    )

    Subdistrict.create(
        original_id: '153',
        name_ja: 'Thung Khru',
        name_th: 'แขวงทุ่งครุ',
        name_en: 'Thung Khru',
        url_safe: 'thung-khru',
        district_original_id: '1049'
    )

    Subdistrict.create(
        original_id: '154',
        name_ja: 'Bang Bon',
        name_th: 'แขวงบางบอน',
        name_en: 'Bang Bon',
        url_safe: 'bang-bon',
        district_original_id: '1050'
    )

    Subdistrict.create(
        original_id: '155',
        name_ja: 'Thessaban Nakhon Samut Prakan',
        name_th: 'ต.เทศบาลนครสมุทรปราการ',
        name_en: 'Thessaban Nakhon Samut Prakan',
        url_safe: 'thessaban-nakhon-samut-prakan',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '156',
        name_ja: 'Samrong Nuea',
        name_th: 'ต.สำโรงเหนือ',
        name_en: 'Samrong Nuea',
        url_safe: 'samrong-nuea',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '157',
        name_ja: 'Bang Mueang',
        name_th: 'ต.บางเมือง',
        name_en: 'Bang Mueang',
        url_safe: 'bang-mueang',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '166',
        name_ja: 'Thepharak',
        name_th: 'ต.เทพารักษ์',
        name_en: 'Thepharak',
        url_safe: 'thepharak',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '167',
        name_ja: 'Phraek Sa Mai',
        name_th: 'ต.แพรกษาใหม่',
        name_en: 'Phraek Sa Mai',
        url_safe: 'phraek-sa-mai',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '158',
        name_ja: 'Thai Ban',
        name_th: 'ต.ท้ายบ้าน',
        name_en: 'Thai Ban',
        url_safe: 'thai-ban',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '159',
        name_ja: 'Thai Ban Mai',
        name_th: 'ต.ท้ายบ้านใหม่',
        name_en: 'Thai Ban Mai',
        url_safe: 'thai-ban-mai',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '160',
        name_ja: 'Bang Pu Mai',
        name_th: 'ต.บางปูใหม่',
        name_en: 'Bang Pu Mai',
        url_safe: 'bang-pu-mai',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '161',
        name_ja: 'Phraek Sa',
        name_th: 'ต.แพรกษา',
        name_en: 'Phraek Sa',
        url_safe: 'phraek-sa',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '162',
        name_ja: 'Bang Prong',
        name_th: 'ต.บางโปรง',
        name_en: 'Bang Prong',
        url_safe: 'bang-prong',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '164',
        name_ja: 'Bang Duan',
        name_th: 'ต.บางด้วน',
        name_en: 'Bang Duan',
        url_safe: 'bang-duan',
        district_original_id: '1101'
    )

    Subdistrict.create(
        original_id: '168',
        name_ja: 'Bang Bo',
        name_th: 'ต.บางบ่อ',
        name_en: 'Bang Bo',
        url_safe: 'bang-bo',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '169',
        name_ja: 'Ban Rakat',
        name_th: 'ต.บ้านระกาศ',
        name_en: 'Ban Rakat',
        url_safe: 'ban-rakat',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '170',
        name_ja: 'Bang Phli Noi',
        name_th: 'ต.บางพลีน้อย',
        name_en: 'Bang Phli Noi',
        url_safe: 'bang-phli-noi',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '171',
        name_ja: 'Bang Phriang',
        name_th: 'ต.บางเพรียง',
        name_en: 'Bang Phriang',
        url_safe: 'bang-phriang',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '172',
        name_ja: 'Khlong Dan',
        name_th: 'ต.คลองด่าน',
        name_en: 'Khlong Dan',
        url_safe: 'khlong-dan',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '173',
        name_ja: 'Khlong Suan',
        name_th: 'ต.คลองสวน',
        name_en: 'Khlong Suan',
        url_safe: 'khlong-suan',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '174',
        name_ja: 'Preng',
        name_th: 'ต.เปร็ง',
        name_en: 'Preng',
        url_safe: 'preng',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '175',
        name_ja: 'Khlong Niyom Yattra',
        name_th: 'ต.คลองนิยมยาตรา',
        name_en: 'Khlong Niyom Yattra',
        url_safe: 'khlong-niyom-yattra',
        district_original_id: '1102'
    )

    Subdistrict.create(
        original_id: '176',
        name_ja: 'Bang Phli Yai',
        name_th: 'ต.บางพลีใหญ่',
        name_en: 'Bang Phli Yai',
        url_safe: 'bang-phli-yai',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '177',
        name_ja: 'Bang Kaeo',
        name_th: 'ต.บางแก้ว',
        name_en: 'Bang Kaeo',
        url_safe: 'bang-kaeo',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '178',
        name_ja: 'Bang Pla',
        name_th: 'ต.บางปลา',
        name_en: 'Bang Pla',
        url_safe: 'bang-pla',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '179',
        name_ja: 'Bang Chalong',
        name_th: 'ต.บางโฉลง',
        name_en: 'Bang Chalong',
        url_safe: 'bang-chalong',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '180',
        name_ja: 'Racha Thewa',
        name_th: 'ต.ราชาเทวะ',
        name_en: 'Racha Thewa',
        url_safe: 'racha-thewa',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '181',
        name_ja: 'Nong Prue',
        name_th: 'ต.หนองปรือ',
        name_en: 'Nong Prue',
        url_safe: 'nong-prue',
        district_original_id: '1103'
    )

    Subdistrict.create(
        original_id: '90',
        name_ja: 'Khlong Khwang',
        name_th: 'แขวงคลองขวาง',
        name_en: 'Khlong Khwang',
        url_safe: 'khlong-khwang',
        district_original_id: '1022'
    )

    Subdistrict.create(
        original_id: '954',
        name_ja: 'Bang Lamung',
        name_th: 'ต.บางละมุง',
        name_en: 'Bang Lamung',
        url_safe: 'bang-lamung',
        district_original_id: '2004'
    )

    Subdistrict.create(
        original_id: '965',
        name_ja: 'Khetkan PokKrong Pisad Pattaya',
        name_th: 'ต.เขตการปกคองพิเศษพัทยา',
        name_en: 'Khetkan PokKrong Pisad Pattaya',
        url_safe: 'khetkan-pokkrong-pisad-pattaya',
        district_original_id: '2004'
    )

    Subdistrict.create(
        original_id: '999',
        name_ja: 'Thung Sukhla',
        name_th: 'ต.ทุ่งสุขลา',
        name_en: 'Thung Sukhla',
        url_safe: 'thung-sukhla',
        district_original_id: '2007'
    )

    Subdistrict.create(
        original_id: '1385',
        name_ja: 'Pho Ngam',
        name_th: 'ต.โพธิ์งาม',
        name_en: 'Pho Ngam',
        url_safe: 'pho-ngam',
        district_original_id: '2507'
    )

    Subdistrict.create(
        original_id: '1431',
        name_ja: 'Phra Achan',
        name_th: 'ต.พระอาจารย์',
        name_en: 'Phra Achan',
        url_safe: 'phra-achan',
        district_original_id: '2604'
    )

    Subdistrict.create(
        original_id: '2004',
        name_ja: 'Nong Ruea',
        name_th: 'ต.หนองเรือ',
        name_en: 'Nong Ruea',
        url_safe: 'nong-ruea',
        district_original_id: '3202'
    )

    Subdistrict.create(
        original_id: '2338',
        name_ja: 'Nai Mueang',
        name_th: 'ต.ในเมือง',
        name_en: 'Nai Mueang',
        url_safe: 'nai-mueang',
        district_original_id: '3401'
    )

    Subdistrict.create(
        original_id: '2527',
        name_ja: 'Kham Hai Yai',
        name_th: 'ต.คำไฮใหญ่',
        name_en: 'Kham Hai Yai',
        url_safe: 'kham-hai-yai',
        district_original_id: '3424'
    )

    Subdistrict.create(
        original_id: '2817',
        name_ja: 'Bueng Kan',
        name_th: 'ต.บึงกาฬ',
        name_en: 'Bueng Kan',
        url_safe: 'bueng-kan',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2818',
        name_ja: 'Non Sombun',
        name_th: 'ต.โนนสมบูรณ์',
        name_en: 'Non Sombun',
        url_safe: 'non-sombun',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2819',
        name_ja: 'Nong Kheng',
        name_th: 'ต.หนองเข็ง',
        name_en: 'Nong Kheng',
        url_safe: 'nong-kheng',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2820',
        name_ja: 'Hor Kum',
        name_th: 'ต.หอคำ',
        name_en: 'Hor Kum',
        url_safe: 'hor-kum',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2821',
        name_ja: 'Nong Loeng',
        name_th: 'ต.หนองเลิง',
        name_en: 'Nong Loeng',
        url_safe: 'nong-loeng',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2822',
        name_ja: 'Khok Kong',
        name_th: 'ต.โคกก่อง',
        name_en: 'Khok Kong',
        url_safe: 'khok-kong',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2823',
        name_ja: 'Na Sawan',
        name_th: 'ต.นาสวรรค์',
        name_en: 'Na Sawan',
        url_safe: 'na-sawan',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2824',
        name_ja: 'Khai Si',
        name_th: 'ต.ไคสี',
        name_en: 'Khai Si',
        url_safe: 'khai-si',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2825',
        name_ja: 'Chaiyaphon',
        name_th: 'ต.ชัยพร',
        name_en: 'Chaiyaphon',
        url_safe: 'chaiyaphon',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2826',
        name_ja: 'Wisit',
        name_th: 'ต.วิศิษฐ์',
        name_en: 'Wisit',
        url_safe: 'wisit',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2827',
        name_ja: 'Kham Na Di',
        name_th: 'ต.คำนาดี',
        name_en: 'Kham Na Di',
        url_safe: 'kham-na-di',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2828',
        name_ja: 'Pong Pueai',
        name_th: 'ต.โป่งเปือย',
        name_en: 'Pong Pueai',
        url_safe: 'pong-pueai',
        district_original_id: '3801'
    )

    Subdistrict.create(
        original_id: '2829',
        name_ja: 'Si Chomphu',
        name_th: 'ต.ศรีชมภู',
        name_en: 'Si Chomphu',
        url_safe: 'si-chomphu',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2830',
        name_ja: 'Don Ya Nang',
        name_th: 'ต.ดอนหญ้านาง',
        name_en: 'Don Ya Nang',
        url_safe: 'don-ya-nang',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2831',
        name_ja: 'Phon Charoen',
        name_th: 'ต.พรเจริญ',
        name_en: 'Phon Charoen',
        url_safe: 'phon-charoen',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2832',
        name_ja: 'Nong Hua Chang',
        name_th: 'ต.หนองหัวช้าง',
        name_en: 'Nong Hua Chang',
        url_safe: 'nong-hua-chang',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2833',
        name_ja: 'Wang Chomphu',
        name_th: 'ต.วังชมภู',
        name_en: 'Wang Chomphu',
        url_safe: 'wang-chomphu',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2834',
        name_ja: 'Pa Faek',
        name_th: 'ต.ป่าแฝก',
        name_en: 'Pa Faek',
        url_safe: 'pa-faek',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2835',
        name_ja: 'Si Samran',
        name_th: 'ต.ศรีสำราญ',
        name_en: 'Si Samran',
        url_safe: 'si-samran',
        district_original_id: '3802'
    )

    Subdistrict.create(
        original_id: '2836',
        name_ja: 'So',
        name_th: 'ต.โซ่',
        name_en: 'So',
        url_safe: 'so',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2837',
        name_ja: 'Nong Phan Tha',
        name_th: 'ต.หนองพันทา',
        name_en: 'Nong Phan Tha',
        url_safe: 'nong-phan-tha',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2838',
        name_ja: 'Si Chomphu',
        name_th: 'ต.ศรีชมภู',
        name_en: 'Si Chomphu',
        url_safe: 'si-chomphu',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2839',
        name_ja: 'Kham Kaeo',
        name_th: 'ต.คำแก้ว',
        name_en: 'Kham Kaeo',
        url_safe: 'kham-kaeo',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2840',
        name_ja: 'Bua Tum',
        name_th: 'ต.บัวตูม',
        name_en: 'Bua Tum',
        url_safe: 'bua-tum',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2841',
        name_ja: 'Tham Charoen',
        name_th: 'ต.ถ้ำเจริญ',
        name_en: 'Tham Charoen',
        url_safe: 'tham-charoen',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2842',
        name_ja: 'Lao Thong',
        name_th: 'ต.เหล่าทอง',
        name_en: 'Lao Thong',
        url_safe: 'lao-thong',
        district_original_id: '3803'
    )

    Subdistrict.create(
        original_id: '2843',
        name_ja: 'Seka',
        name_th: 'ต.เซกา',
        name_en: 'Seka',
        url_safe: 'seka',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2844',
        name_ja: 'Sang',
        name_th: 'ต.ซาง',
        name_en: 'Sang',
        url_safe: 'sang',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2845',
        name_ja: 'Tha Kok Daeng',
        name_th: 'ต.ท่ากกแดง',
        name_en: 'Tha Kok Daeng',
        url_safe: 'tha-kok-daeng',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2846',
        name_ja: 'Ban Tong',
        name_th: 'ต.บ้านต้อง',
        name_en: 'Ban Tong',
        url_safe: 'ban-tong',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2847',
        name_ja: 'Pong Hai',
        name_th: 'ต.ป่งไฮ',
        name_en: 'Pong Hai',
        url_safe: 'pong-hai',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2848',
        name_ja: 'Nam Chan',
        name_th: 'ต.น้ำจั้น',
        name_en: 'Nam Chan',
        url_safe: 'nam-chan',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2849',
        name_ja: 'Tha Sa-at',
        name_th: 'ต.ท่าสะอาด',
        name_en: 'Tha Sa-at',
        url_safe: 'tha-sa-at',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2850',
        name_ja: 'Nong Thum',
        name_th: 'ต.หนองทุ่ม',
        name_en: 'Nong Thum',
        url_safe: 'nong-thum',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2851',
        name_ja: 'Sok Kam',
        name_th: 'ต.โสกก่าม',
        name_en: 'Sok Kam',
        url_safe: 'sok-kam',
        district_original_id: '3804'
    )

    Subdistrict.create(
        original_id: '2852',
        name_ja: 'Pak Khat',
        name_th: 'ต.ปากคาด',
        name_en: 'Pak Khat',
        url_safe: 'pak-khat',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2853',
        name_ja: 'Nong Yong',
        name_th: 'ต.หนองยอง',
        name_en: 'Nong Yong',
        url_safe: 'nong-yong',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2854',
        name_ja: 'Na Kang',
        name_th: 'ต.นากั้ง',
        name_en: 'Na Kang',
        url_safe: 'na-kang',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2855',
        name_ja: 'Non Sila',
        name_th: 'ต.โนนศิลา',
        name_en: 'Non Sila',
        url_safe: 'non-sila',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2856',
        name_ja: 'Som Sanuk',
        name_th: 'ต.สมสนุก',
        name_en: 'Som Sanuk',
        url_safe: 'som-sanuk',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2857',
        name_ja: 'Na Dong',
        name_th: 'ต.นาดง',
        name_en: 'Na Dong',
        url_safe: 'na-dong',
        district_original_id: '3805'
    )

    Subdistrict.create(
        original_id: '2858',
        name_ja: 'Bueng Khong Long',
        name_th: 'ต.บึงโขงหลง',
        name_en: 'Bueng Khong Long',
        url_safe: 'bueng-khong-long',
        district_original_id: '3806'
    )

    Subdistrict.create(
        original_id: '2859',
        name_ja: 'Pho Mak Khaeng',
        name_th: 'ต.โพธิ์หมากแข้ง',
        name_en: 'Pho Mak Khaeng',
        url_safe: 'pho-mak-khaeng',
        district_original_id: '3806'
    )

    Subdistrict.create(
        original_id: '2860',
        name_ja: 'Dong Bang',
        name_th: 'ต.ดงบัง',
        name_en: 'Dong Bang',
        url_safe: 'dong-bang',
        district_original_id: '3806'
    )

    Subdistrict.create(
        original_id: '2861',
        name_ja: 'Tha Dok Kham',
        name_th: 'ต.ท่าดอกคำ',
        name_en: 'Tha Dok Kham',
        url_safe: 'tha-dok-kham',
        district_original_id: '3806'
    )

    Subdistrict.create(
        original_id: '2862',
        name_ja: 'Si Wilai',
        name_th: 'ต.ศรีวิไล',
        name_en: 'Si Wilai',
        url_safe: 'si-wilai',
        district_original_id: '3807'
    )

    Subdistrict.create(
        original_id: '2863',
        name_ja: 'Chumphu Phon',
        name_th: 'ต.ชุมภูพร',
        name_en: 'Chumphu Phon',
        url_safe: 'chumphu-phon',
        district_original_id: '3807'
    )

    Subdistrict.create(
        original_id: '2864',
        name_ja: 'Na Saeng',
        name_th: 'ต.นาแสง',
        name_en: 'Na Saeng',
        url_safe: 'na-saeng',
        district_original_id: '3807'
    )

    Subdistrict.create(
        original_id: '2865',
        name_ja: 'Na Sabaeng',
        name_th: 'ต.นาสะแบง',
        name_en: 'Na Sabaeng',
        url_safe: 'na-sabaeng',
        district_original_id: '3807'
    )

    Subdistrict.create(
        original_id: '2866',
        name_ja: 'Na Sing',
        name_th: 'ต.นาสิงห์',
        name_en: 'Na Sing',
        url_safe: 'na-sing',
        district_original_id: '3807'
    )

    Subdistrict.create(
        original_id: '2867',
        name_ja: 'Bung Khla',
        name_th: 'ต.บุ่งคล้า',
        name_en: 'Bung Khla',
        url_safe: 'bung-khla',
        district_original_id: '3808'
    )

    Subdistrict.create(
        original_id: '2868',
        name_ja: 'Nong Doen',
        name_th: 'ต.หนองเดิ่น',
        name_en: 'Nong Doen',
        url_safe: 'nong-doen',
        district_original_id: '3808'
    )

    Subdistrict.create(
        original_id: '2869',
        name_ja: 'Khok Kwang',
        name_th: 'ต.โคกกว้าง',
        name_en: 'Khok Kwang',
        url_safe: 'khok-kwang',
        district_original_id: '3808'
    )

    Subdistrict.create(
        original_id: '3127',
        name_ja: 'Nai Mueang',
        name_th: 'ต.ในเมือง',
        name_en: 'Nai Mueang',
        url_safe: 'nai-mueang',
        district_original_id: '4026'
    )

    Subdistrict.create(
        original_id: '3128',
        name_ja: 'Khao Noi',
        name_th: 'ต.เขาน้อย',
        name_en: 'Khao Noi',
        url_safe: 'khao-noi',
        district_original_id: '4026'
    )

    Subdistrict.create(
        original_id: '3129',
        name_ja: 'Mueang Kao Phatthana',
        name_th: 'ต.เมืองเก่าพัฒนา',
        name_en: 'Mueang Kao Phatthana',
        url_safe: 'mueang-kao-phatthana',
        district_original_id: '4026'
    )

    Subdistrict.create(
        original_id: '3140',
        name_ja: 'Na Kha',
        name_th: 'ต.นาข่า',
        name_en: 'Na Kha',
        url_safe: 'na-kha',
        district_original_id: '4101'
    )

    Subdistrict.create(
        original_id: '3446',
        name_ja: 'Tha Song Khon',
        name_th: 'ต.ท่าสองคอน',
        name_en: 'Tha Song Khon',
        url_safe: 'tha-song-khon',
        district_original_id: '4401'
    )

    Subdistrict.create(
        original_id: '3500',
        name_ja: 'Bua Mat',
        name_th: 'ต.บัวมาศ',
        name_en: 'Bua Mat',
        url_safe: 'bua-mat',
        district_original_id: '4406'
    )

    Subdistrict.create(
        original_id: '3530',
        name_ja: 'Nong Bua',
        name_th: 'ต.หนองบัว',
        name_en: 'Nong Bua',
        url_safe: 'nong-bua',
        district_original_id: '4408'
    )

    Subdistrict.create(
        original_id: '3653',
        name_ja: 'Kham Na Di',
        name_th: 'ต.คำนาดี',
        name_en: 'Kham Na Di',
        url_safe: 'kham-na-di',
        district_original_id: '4507'
    )

    Subdistrict.create(
        original_id: '3748',
        name_ja: 'Chiang Khwan',
        name_th: 'ต.เชียงขวัญ',
        name_en: 'Chiang Khwan',
        url_safe: 'chiang-khwan',
        district_original_id: '4518'
    )

    Subdistrict.create(
        original_id: '3752',
        name_ja: 'Mu Mon',
        name_th: 'ต.หมูม้น',
        name_en: 'Mu Mon',
        url_safe: 'mu-mon',
        district_original_id: '4518'
    )

    Subdistrict.create(
        original_id: '3753',
        name_ja: 'Ban Khueang',
        name_th: 'ต.บ้านเขือง',
        name_en: 'Ban Khueang',
        url_safe: 'ban-khueang',
        district_original_id: '4518'
    )

    Subdistrict.create(
        original_id: '3758',
        name_ja: 'Thung Khao Luang',
        name_th: 'ต.ทุ่งเขาหลวง',
        name_en: 'Thung Khao Luang',
        url_safe: 'thung-khao-luang',
        district_original_id: '4520'
    )

    Subdistrict.create(
        original_id: '3761',
        name_ja: 'Maba',
        name_th: 'ต.มะบ้า',
        name_en: 'Maba',
        url_safe: 'maba',
        district_original_id: '4520'
    )

    Subdistrict.create(
        original_id: '4150',
        name_ja: 'Ban Song',
        name_th: 'ต.บ้านช่ง',
        name_en: 'Ban Song',
        url_safe: 'ban-song',
        district_original_id: '4905'
    )

    Subdistrict.create(
        original_id: '4177',
        name_ja: 'Suthep',
        name_th: 'ต.สุเทพ',
        name_en: 'Suthep',
        url_safe: 'suthep',
        district_original_id: '5001'
    )

    Subdistrict.create(
        original_id: '4420',
        name_ja: 'Wiang Nuea Suan Dok Sop Tui',
        name_th: 'ต.เวียงเหนือสวนดอกสบตุ๋ยอยู่นอก1ตำบลคือหัวเ*',
        name_en: 'Wiang Nuea Suan Dok Sop Tui',
        url_safe: 'wiang-nuea-suan-dok-sop-tui',
        district_original_id: '5201'
    )

    Subdistrict.create(
        original_id: '4860',
        name_ja: 'Mae Loi',
        name_th: 'ต.แม่ลอย',
        name_en: 'Mae Loi',
        url_safe: 'mae-loi',
        district_original_id: '5704'
    )

    Subdistrict.create(
        original_id: '5275',
        name_ja: 'Rahaeng',
        name_th: 'ต.ระแหง',
        name_en: 'Rahaeng',
        url_safe: 'rahaeng',
        district_original_id: '6301'
    )

    Subdistrict.create(
        original_id: '5338',
        name_ja: 'Pak Khwae',
        name_th: 'ต.ปากแคว',
        name_en: 'Pak Khwae',
        url_safe: 'pak-khwae',
        district_original_id: '6401'
    )

    Subdistrict.create(
        original_id: '5516',
        name_ja: 'Phai Khwang',
        name_th: 'ต.ไผ่ขวาง',
        name_en: 'Phai Khwang',
        url_safe: 'phai-khwang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5517',
        name_ja: 'Yan Yao',
        name_th: 'ต.ย่านยาว',
        name_en: 'Yan Yao',
        url_safe: 'yan-yao',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5518',
        name_ja: 'Tha Lo',
        name_th: 'ต.ท่าฬอ',
        name_en: 'Tha Lo',
        url_safe: 'tha-lo',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5519',
        name_ja: 'Pak Thang',
        name_th: 'ต.ปากทาง',
        name_en: 'Pak Thang',
        url_safe: 'pak-thang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5520',
        name_ja: 'Khlong Khachen',
        name_th: 'ต.คลองคะเชนทร์',
        name_en: 'Khlong Khachen',
        url_safe: 'khlong-khachen',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5521',
        name_ja: 'Rong Chang',
        name_th: 'ต.โรงช้าง',
        name_en: 'Rong Chang',
        url_safe: 'rong-chang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5522',
        name_ja: 'Mueang Kao',
        name_th: 'ต.เมืองเก่า',
        name_en: 'Mueang Kao',
        url_safe: 'mueang-kao',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5523',
        name_ja: 'Tha Luang',
        name_th: 'ต.ท่าหลวง',
        name_en: 'Tha Luang',
        url_safe: 'tha-luang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5524',
        name_ja: 'Ban Bung',
        name_th: 'ต.บ้านบุ่ง',
        name_en: 'Ban Bung',
        url_safe: 'ban-bung',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5525',
        name_ja: 'Khamang',
        name_th: 'ต.ฆะมัง',
        name_en: 'Khamang',
        url_safe: 'khamang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5526',
        name_ja: 'Dong Pa Kham',
        name_th: 'ต.ดงป่าคำ',
        name_en: 'Dong Pa Kham',
        url_safe: 'dong-pa-kham',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5527',
        name_ja: 'Hua Dong',
        name_th: 'ต.หัวดง',
        name_en: 'Hua Dong',
        url_safe: 'hua-dong',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5528',
        name_ja: 'Pa Makhap',
        name_th: 'ต.ป่ามะคาบ',
        name_en: 'Pa Makhap',
        url_safe: 'pa-makhap',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5529',
        name_ja: 'Sai Kham Ho',
        name_th: 'ต.สายคำโห้',
        name_en: 'Sai Kham Ho',
        url_safe: 'sai-kham-ho',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5530',
        name_ja: 'Dong Klang',
        name_th: 'ต.ดงกลาง',
        name_en: 'Dong Klang',
        url_safe: 'dong-klang',
        district_original_id: '6601'
    )

    Subdistrict.create(
        original_id: '5669',
        name_ja: 'Phu Nam Yot',
        name_th: 'ต.ภูน้ำหยด',
        name_en: 'Phu Nam Yot',
        url_safe: 'phu-nam-yot',
        district_original_id: '6705'
    )

    Subdistrict.create(
        original_id: '6355',
        name_ja: 'Na Sai',
        name_th: 'ต.นาทราย',
        name_en: 'Na Sai',
        url_safe: 'na-sai',
        district_original_id: '7706'
    )

    Subdistrict.create(
        original_id: '6520',
        name_ja: 'Pak Nam',
        name_th: 'ต.ปากน้ำ',
        name_en: 'Pak Nam',
        url_safe: 'pak-nam',
        district_original_id: '8101'
    )

    Subdistrict.create(
        original_id: '6709',
        name_ja: 'Ratsada',
        name_th: 'ต.รัษฎา',
        name_en: 'Ratsada',
        url_safe: 'ratsada',
        district_original_id: '8301'
    )

    Subdistrict.create(
        original_id: '6710',
        name_ja: 'Ratsada',
        name_th: 'ต.รัษฎา',
        name_en: 'Ratsada',
        url_safe: 'ratsada',
        district_original_id: '8301'
    )

    Subdistrict.create(
        original_id: '6711',
        name_ja: 'Ratsada',
        name_th: 'ต.รัษฎา',
        name_en: 'Ratsada',
        url_safe: 'ratsada',
        district_original_id: '8301'
    )

    Subdistrict.create(
        original_id: '6878',
        name_ja: 'Na San',
        name_th: 'ต.นาสาร',
        name_en: 'Na San',
        url_safe: 'na-san',
        district_original_id: '8412'
    )

    Subdistrict.create(
        original_id: '6884',
        name_ja: 'Khuan Suban',
        name_th: 'ต.ควนสุบรรณ',
        name_en: 'Khuan Suban',
        url_safe: 'khuan-suban',
        district_original_id: '8412'
    )

    Subdistrict.create(
        original_id: '7372',
        name_ja: 'Ko Luk Mai',
        name_th: 'ต.เกาะลูกไม้',
        name_en: 'Ko Luk Mai',
        url_safe: 'ko-luk-mai',
        district_original_id: '9202'
    )

    Subdistrict.create(
        original_id: '7373',
        name_ja: 'Ko Nok',
        name_th: 'ต.เกาะนก',
        name_en: 'Ko Nok',
        url_safe: 'ko-nok',
        district_original_id: '9202'
    )

    Subdistrict.create(
        original_id: '7393',
        name_ja: 'Ko Khang Khaw',
        name_th: 'ต.เกาะค้างคาว',
        name_en: 'Ko Khang Khaw',
        url_safe: 'ko-khang-khaw',
        district_original_id: '9204'
    )

    Subdistrict.create(
        original_id: '7511',
        name_ja: 'Pa Phayom',
        name_th: 'ต.ป่าพะยอม',
        name_en: 'Pa Phayom',
        url_safe: 'pa-phayom',
        district_original_id: '9310'
    )

    Subdistrict.create(
        original_id: '7512',
        name_ja: 'Lan Khoi',
        name_th: 'ต.ลานข่อย',
        name_en: 'Lan Khoi',
        url_safe: 'lan-khoi',
        district_original_id: '9310'
    )

    Subdistrict.create(
        original_id: '7514',
        name_ja: 'Ban Phrao',
        name_th: 'ต.บ้านพร้าว',
        name_en: 'Ban Phrao',
        url_safe: 'ban-phrao',
        district_original_id: '9310'
    )

    Subdistrict.create(
        original_id: '7636',
        name_ja: 'Yupo',
        name_th: 'ต.ยุโป',
        name_en: 'Yupo',
        url_safe: 'yupo',
        district_original_id: '9501'
    )

    to_string(false)
  end
end