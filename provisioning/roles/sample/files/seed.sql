--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: code; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO code VALUES ('00016', '001', '所属', 10);
INSERT INTO code VALUES ('00016', '002', 'ユーザーID', 20);
INSERT INTO code VALUES ('00016', '003', 'ユーザー名', 30);
INSERT INTO code VALUES ('00016', '004', '権限', 40);
INSERT INTO code VALUES ('10006', 'd002', 'ハードウェア調達', 10);
INSERT INTO code VALUES ('00019', '001', 'かつ', 10);
INSERT INTO code VALUES ('00019', '002', 'または', 20);
INSERT INTO code VALUES ('00017', '001', '親所属', 10);
INSERT INTO code VALUES ('00017', '002', '所属', 20);
INSERT INTO code VALUES ('00017', '003', '有効', 30);
INSERT INTO code VALUES ('00018', '001', 'を含む', 10);
INSERT INTO code VALUES ('00018', '002', 'と等しい', 20);
INSERT INTO code VALUES ('00018', '003', '以上（以降）', 30);
INSERT INTO code VALUES ('00018', '004', '以下（以前）', 40);
INSERT INTO code VALUES ('00018', '005', 'を含まない', 50);
INSERT INTO code VALUES ('00028', '002', 'KB[0-9][0-9][0-9][0-9][0-9][0-9]', 20);
INSERT INTO code VALUES ('00028', '003', 'Q[0-9][0-9][0-9][0-9][0-9][0-9]', 30);
INSERT INTO code VALUES ('00020', '003', '入手形態', 30);
INSERT INTO code VALUES ('10006', 'd701', 'ハードウェア移管', 20);
INSERT INTO code VALUES ('10006', 'd702', 'ハードウェア廃棄', 30);
INSERT INTO code VALUES ('10032', '003', '部', 40);
INSERT INTO code VALUES ('10032', '004', '課', 50);
INSERT INTO code VALUES ('10032', '005', '係', 60);
INSERT INTO code VALUES ('10031', '003', '所属コード', 40);
INSERT INTO code VALUES ('10006', 'd004', 'ライセンス調達', 40);
INSERT INTO code VALUES ('10031', '004', '所属名称', 50);
INSERT INTO code VALUES ('10006', 'd703', 'ライセンス移管', 50);
INSERT INTO code VALUES ('10006', 'd704', 'ライセンス廃棄', 60);
INSERT INTO code VALUES ('10006', 'd705', 'ハードウェア情報変更', 70);
INSERT INTO code VALUES ('10006', 'd006', 'ライセンス媒体複製', 80);
INSERT INTO code VALUES ('00015', '002', '申請者所属', 20);
INSERT INTO code VALUES ('00015', '003', '申請者', 30);
INSERT INTO code VALUES ('00015', '004', '申請日', 40);
INSERT INTO code VALUES ('00015', '005', '承認区分', 50);
INSERT INTO code VALUES ('00015', '006', '承認・却下者', 60);
INSERT INTO code VALUES ('00015', '007', '承認・却下日', 70);
INSERT INTO code VALUES ('00020', '001', 'ライセンス管理番号', 10);
INSERT INTO code VALUES ('00020', '002', 'ソフトウェア名', 20);
INSERT INTO code VALUES ('10040', 'd035', 'ハードウェア種別', 350);
INSERT INTO code VALUES ('10006', 'd005', 'ソフトウェア一括導入・一括削除', 110);
INSERT INTO code VALUES ('00020', '006', '特筆すべき使用許諾条件', 60);
INSERT INTO code VALUES ('10040', 'd036', '情報システム', 360);
INSERT INTO code VALUES ('10037', 'd001', 'ハードウェア種別', 10);
INSERT INTO code VALUES ('10037', 'd002', 'ハードウェア管理番号', 20);
INSERT INTO code VALUES ('00014', '012', 'メーカー名', 120);
INSERT INTO code VALUES ('10037', 'd003', '機器種別', 30);
INSERT INTO code VALUES ('10035', 'd001', '4', 10);
INSERT INTO code VALUES ('10037', 'd004', '用途区分', 40);
INSERT INTO code VALUES ('10037', 'd005', '所有権', 50);
INSERT INTO code VALUES ('10024', 'd005', 'K：事務処理用パソコン', 50);
INSERT INTO code VALUES ('00024', '001', 'ハードウェア管理番号', 10);
INSERT INTO code VALUES ('10037', 'd006', '管理所属', 60);
INSERT INTO code VALUES ('00028', '001', '\\(KB\\) [0-9][0-9][0-9][0-9][0-9][0-9]', 10);
INSERT INTO code VALUES ('00008', 'd001', '承認', 10);
INSERT INTO code VALUES ('00008', 'd002', '却下', 20);
INSERT INTO code VALUES ('00008', 'd003', '取下', 30);
INSERT INTO code VALUES ('00002', 'd001', '使用中', 10);
INSERT INTO code VALUES ('00002', 'd002', '保管中', 20);
INSERT INTO code VALUES ('00002', 'd004', '廃棄済み', 30);
INSERT INTO code VALUES ('00003', 'd001', '自所属', 10);
INSERT INTO code VALUES ('00003', 'd002', '自所属配下', 20);
INSERT INTO code VALUES ('00004', 'd001', '該当', 10);
INSERT INTO code VALUES ('00006', 'd001', '必要', 10);
INSERT INTO code VALUES ('00006', 'd002', '不必要', 20);
INSERT INTO code VALUES ('00007', 'd001', '有効', 10);
INSERT INTO code VALUES ('00007', 'd002', '無効', 20);
INSERT INTO code VALUES ('10037', 'd007', '専用の管理番号', 70);
INSERT INTO code VALUES ('10037', 'd008', '設置場所', 80);
INSERT INTO code VALUES ('10037', 'd009', '設置場所（任意）', 90);
INSERT INTO code VALUES ('10037', 'd010', '情報システム', 100);
INSERT INTO code VALUES ('00016', '005', 'メールアドレス', 50);
INSERT INTO code VALUES ('10037', 'd011', 'MACアドレス', 110);
INSERT INTO code VALUES ('00017', '004', '上位所属コード', 40);
INSERT INTO code VALUES ('10041', 'd001', '導入', 10);
INSERT INTO code VALUES ('10037', 'd012', 'CPU及びコア数', 120);
INSERT INTO code VALUES ('10037', 'd013', '仮想環境説明文', 130);
INSERT INTO code VALUES ('10037', 'd014', '備考', 140);
INSERT INTO code VALUES ('00017', '005', '自所属コード', 50);
INSERT INTO code VALUES ('10037', 'd015', '会計種別', 150);
INSERT INTO code VALUES ('10037', 'd016', '支出命令番号', 160);
INSERT INTO code VALUES ('10037', 'd017', 'リース期限', 170);
INSERT INTO code VALUES ('10037', 'd018', '調達日', 180);
INSERT INTO code VALUES ('10037', 'd019', '廃棄日', 190);
INSERT INTO code VALUES ('10013', 'd002', '入手形態', 20);
INSERT INTO code VALUES ('10041', 'd002', '削除', 20);
INSERT INTO code VALUES ('10001', 'd001', '許可', 10);
INSERT INTO code VALUES ('10003', 'd001', '原本', 10);
INSERT INTO code VALUES ('10003', 'd002', '複製', 20);
INSERT INTO code VALUES ('10005', 'd001', '所属名称', 10);
INSERT INTO code VALUES ('10005', 'd002', '台帳齟齬', 20);
INSERT INTO code VALUES ('10005', 'd003', 'インベントリ齟齬', 30);
INSERT INTO code VALUES ('10005', 'd004', '所属総計', 40);
INSERT INTO code VALUES ('10005', 'd005', '計', 50);
INSERT INTO code VALUES ('10005', 'd006', '齟齬内容', 60);
INSERT INTO code VALUES ('00015', '001', '申請種類', 10);
INSERT INTO code VALUES ('10005', 'd007', '区分', 70);
INSERT INTO code VALUES ('10001', 'd002', '登録不要', 20);
INSERT INTO code VALUES ('10007', 'd001', '申請', 10);
INSERT INTO code VALUES ('10007', 'd002', '確認中', 20);
INSERT INTO code VALUES ('10007', 'd003', '未確認', 30);
INSERT INTO code VALUES ('10007', 'd004', '取下', 40);
INSERT INTO code VALUES ('10007', 'd005', '却下', 50);
INSERT INTO code VALUES ('10007', 'd006', '承認', 60);
INSERT INTO code VALUES ('10008', 'd001', '0601', 10);
INSERT INTO code VALUES ('10008', 'd002', '0602', 20);
INSERT INTO code VALUES ('10009', 'd001', '購入', 10);
INSERT INTO code VALUES ('10009', 'd002', '賃借', 20);
INSERT INTO code VALUES ('10009', 'd003', 'その他', 30);
INSERT INTO code VALUES ('10010', 'd001', 'ノート', 10);
INSERT INTO code VALUES ('10010', 'd002', 'デスクトップ', 20);
INSERT INTO code VALUES ('10010', 'd003', 'その他', 30);
INSERT INTO code VALUES ('10011', 'd001', 'WindowsXP', 10);
INSERT INTO code VALUES ('10011', 'd002', 'WindowsVista', 20);
INSERT INTO code VALUES ('10011', 'd003', 'Windows7', 30);
INSERT INTO code VALUES ('10011', 'd004', 'その他', 40);
INSERT INTO code VALUES ('10018', 'd001', 'ライセンス管理番号', 10);
INSERT INTO code VALUES ('10018', 'd002', 'ソフトウェア名(辞)', 20);
INSERT INTO code VALUES ('10018', 'd003', '入手形態(辞)', 30);
INSERT INTO code VALUES ('10018', 'd004', 'プログラムの追加と削除での表示(辞)', 40);
INSERT INTO code VALUES ('10018', 'd006', '付随する媒体（メディア数）', 60);
INSERT INTO code VALUES ('10018', 'd007', '複製元媒体管理番号', 70);
INSERT INTO code VALUES ('10018', 'd008', '媒体保管場所', 80);
INSERT INTO code VALUES ('10015', 'd001', '持込年月日', 10);
INSERT INTO code VALUES ('10015', 'd002', '持ち込み目的', 20);
INSERT INTO code VALUES ('10015', 'd003', 'メーカー', 30);
INSERT INTO code VALUES ('10015', 'd004', '型番', 40);
INSERT INTO code VALUES ('10015', 'd005', '形状区分', 50);
INSERT INTO code VALUES ('10015', 'd006', 'OS情報', 60);
INSERT INTO code VALUES ('10015', 'd007', '所有者', 70);
INSERT INTO code VALUES ('10015', 'd008', '申請時備考', 80);
INSERT INTO code VALUES ('10019', 'd001', '電話番号', 10);
INSERT INTO code VALUES ('10019', 'd002', '棚卸基準日', 20);
INSERT INTO code VALUES ('10019', 'd003', '実施日', 30);
INSERT INTO code VALUES ('10019', 'd004', '実施結果', 40);
INSERT INTO code VALUES ('10019', 'd005', '是正内容', 50);
INSERT INTO code VALUES ('10013', 'd001', 'ソフトウェア名', 10);
INSERT INTO code VALUES ('10013', 'd003', 'メーカー', 30);
INSERT INTO code VALUES ('10013', 'd004', 'PC固定', 40);
INSERT INTO code VALUES ('10013', 'd005', 'アップグレード版', 50);
INSERT INTO code VALUES ('10020', 'd001', '追加', 10);
INSERT INTO code VALUES ('10020', 'd002', '複製', 20);
INSERT INTO code VALUES ('00004', 'd002', '-', 20);
INSERT INTO code VALUES ('10014', 'd001', 'ハードウェア種別', 10);
INSERT INTO code VALUES ('10014', 'd002', '機器種別', 20);
INSERT INTO code VALUES ('10014', 'd003', '数量', 30);
INSERT INTO code VALUES ('10014', 'd004', '所有権', 40);
INSERT INTO code VALUES ('10014', 'd005', '管理所属', 50);
INSERT INTO code VALUES ('10014', 'd006', '専用の管理番号', 60);
INSERT INTO code VALUES ('10014', 'd007', '設置場所', 70);
INSERT INTO code VALUES ('10014', 'd008', '設置場所（任意）', 80);
INSERT INTO code VALUES ('10004', 'd001', '申請書No', 10);
INSERT INTO code VALUES ('10004', 'd002', '申請種類', 20);
INSERT INTO code VALUES ('10004', 'd003', '申請者所属', 30);
INSERT INTO code VALUES ('10004', 'd004', '申請者', 40);
INSERT INTO code VALUES ('10004', 'd005', '申請日', 50);
INSERT INTO code VALUES ('10004', 'd006', '申請状況', 60);
INSERT INTO code VALUES ('10004', 'd007', '承認・却下日', 70);
INSERT INTO code VALUES ('00023', 'd004', 'システム管理', 40);
INSERT INTO code VALUES ('10018', 'd010', '複製する数', 100);
INSERT INTO code VALUES ('10018', 'd011', '複製許諾条件の確認', 110);
INSERT INTO code VALUES ('10018', 'd012', '必要とする理由', 120);
INSERT INTO code VALUES ('10018', 'd013', '申請時備考', 130);
INSERT INTO code VALUES ('10018', 'd009', '区分', 90);
INSERT INTO code VALUES ('10006', 'd706', 'PC配布', 90);
INSERT INTO code VALUES ('10006', 'd707', 'PC返却', 100);
INSERT INTO code VALUES ('10026', 'd001', '一般会計', 10);
INSERT INTO code VALUES ('10026', 'd002', '公債費', 20);
INSERT INTO code VALUES ('10026', 'd003', '勤労者福祉共済事業費', 30);
INSERT INTO code VALUES ('10026', 'd004', '市場事業費', 40);
INSERT INTO code VALUES ('10026', 'd005', '食肉センター事業費', 50);
INSERT INTO code VALUES ('10026', 'd006', '農業共済事業費', 60);
INSERT INTO code VALUES ('10026', 'd007', '農業集落排水事業費', 70);
INSERT INTO code VALUES ('10021', 'd001', '禁止ソフトウェア名', 10);
INSERT INTO code VALUES ('10021', 'd002', '使用特例承認所属', 20);
INSERT INTO code VALUES ('10026', 'd008', '海岸環境整備事業費', 80);
INSERT INTO code VALUES ('10026', 'd009', '国民健康保険事業費', 90);
INSERT INTO code VALUES ('10026', 'd010', '母子寡婦福祉資金貸付事業費', 100);
INSERT INTO code VALUES ('10026', 'd011', '介護保険事業費', 110);
INSERT INTO code VALUES ('10026', 'd012', '老人保健医療事業費', 120);
INSERT INTO code VALUES ('10026', 'd013', '病院事業会計', 130);
INSERT INTO code VALUES ('10026', 'd014', '土地先行取得事業費', 140);
INSERT INTO code VALUES ('10013', 'd006', '特筆すべき使用許諾条件', 60);
INSERT INTO code VALUES ('10013', 'd007', '必要とする詳細な理由', 70);
INSERT INTO code VALUES ('10013', 'd008', 'バンドル製品名', 80);
INSERT INTO code VALUES ('10014', 'd009', '情報システム', 90);
INSERT INTO code VALUES ('00027', '001', 'test.local', 10);
INSERT INTO code VALUES ('00027', '2', 'rakusol.com', 20);
INSERT INTO code VALUES ('00027', '10', 'arista-sol.com', 30);
INSERT INTO code VALUES ('00027', '20', 'mailnesia.com', 40);
INSERT INTO code VALUES ('00030', '001', '所属', 10);
INSERT INTO code VALUES ('00030', '002', '発生日', 20);
INSERT INTO code VALUES ('00030', '003', 'エラーコード', 30);
INSERT INTO code VALUES ('00030', '004', '収集情報', 40);
INSERT INTO code VALUES ('00030', '005', 'ハードウェア台帳', 50);
INSERT INTO code VALUES ('00030', '009', 'メッセージ', 90);
INSERT INTO code VALUES ('00030', '010', '対応', 100);
INSERT INTO code VALUES ('10014', 'd010', '会計種別', 100);
INSERT INTO code VALUES ('10014', 'd011', 'リース期限', 110);
INSERT INTO code VALUES ('10014', 'd012', '申請時備考', 120);
INSERT INTO code VALUES ('10014', 'd013', '支出命令番号', 130);
INSERT INTO code VALUES ('10014', 'd014', 'CPU及びコア数', 140);
INSERT INTO code VALUES ('10014', 'd015', '仮想環境説明文', 150);
INSERT INTO code VALUES ('10014', 'd016', '備考', 160);
INSERT INTO code VALUES ('10014', 'd017', '調達日', 170);
INSERT INTO code VALUES ('10038', 'd001', 'ハードウェア種別', 10);
INSERT INTO code VALUES ('10038', 'd002', 'ハードウェア管理番号', 20);
INSERT INTO code VALUES ('10038', 'd003', '機器種別', 30);
INSERT INTO code VALUES ('10038', 'd004', '用途区分', 40);
INSERT INTO code VALUES ('10038', 'd005', '所有権', 50);
INSERT INTO code VALUES ('10038', 'd006', '管理所属', 60);
INSERT INTO code VALUES ('00015', '008', '申請書No', 5);
INSERT INTO code VALUES ('10022', '1', 'パッケージ版または プリインストール版1', 10);
INSERT INTO code VALUES ('10022', '2', 'ボリュームライセンス版2', 20);
INSERT INTO code VALUES ('10022', '3', 'ボリュームライセンス版3', 30);
INSERT INTO code VALUES ('10022', '4', 'パッケージ版', 40);
INSERT INTO code VALUES ('10022', '5', '試用版5', 50);
INSERT INTO code VALUES ('10022', '6', 'プリインストール版6', 60);
INSERT INTO code VALUES ('00015', '009', '承認・却下の理由', 80);
INSERT INTO code VALUES ('00023', 'd001', '閲覧', 10);
INSERT INTO code VALUES ('00023', 'd002', '申請', 20);
INSERT INTO code VALUES ('00023', 'd003', '承認却下', 30);
INSERT INTO code VALUES ('00014', '001', '所属', 10);
INSERT INTO code VALUES ('00014', '002', '状態', 20);
INSERT INTO code VALUES ('00014', '003', 'ハードウェア種別', 30);
INSERT INTO code VALUES ('00014', '004', '台帳比較', 40);
INSERT INTO code VALUES ('00014', '005', '収集情報ソース', 50);
INSERT INTO code VALUES ('00014', '006', '収集情報更新日時', 60);
INSERT INTO code VALUES ('10038', 'd007', '専用の管理番号', 70);
INSERT INTO code VALUES ('10038', 'd008', '設置場所', 80);
INSERT INTO code VALUES ('10038', 'd009', '設置場所（任意）', 90);
INSERT INTO code VALUES ('10038', 'd010', '情報システム', 100);
INSERT INTO code VALUES ('00014', '008', 'コンピュータ名', 80);
INSERT INTO code VALUES ('00014', '009', 'IPアドレス', 90);
INSERT INTO code VALUES ('00014', '010', 'ユーザ名', 100);
INSERT INTO code VALUES ('00014', '011', 'ログオンユーザ表示名', 110);
INSERT INTO code VALUES ('00014', '013', '機種名', 130);
INSERT INTO code VALUES ('10038', 'd011', 'MACアドレス', 110);
INSERT INTO code VALUES ('00014', '014', 'MACアドレス', 140);
INSERT INTO code VALUES ('00014', '015', 'OS', 150);
INSERT INTO code VALUES ('00014', '016', 'プログラムの追加と削除での表示', 160);
INSERT INTO code VALUES ('00014', '018', 'Microsoft ライセンス種別OK', 170);
INSERT INTO code VALUES ('00014', '017', 'Microsoft ライセンス種別', 180);
INSERT INTO code VALUES ('10023', 'd001', 'tera pad', 10);
INSERT INTO code VALUES ('10038', 'd012', 'CPU及びコア数', 120);
INSERT INTO code VALUES ('00024', '002', '使用者名', 20);
INSERT INTO code VALUES ('00024', '003', '調達日', 30);
INSERT INTO code VALUES ('10038', 'd013', '仮想環境説明文', 130);
INSERT INTO code VALUES ('10038', 'd014', '備考', 140);
INSERT INTO code VALUES ('10038', 'd015', '会計種別', 150);
INSERT INTO code VALUES ('00001', 'd001', 'コンピュータ', 10);
INSERT INTO code VALUES ('10038', 'd016', '支出命令番号', 160);
INSERT INTO code VALUES ('10038', 'd017', 'リース期限', 170);
INSERT INTO code VALUES ('00014', '007', 'ハードウェア管理番号', 70);
INSERT INTO code VALUES ('10038', 'd018', '調達日', 180);
INSERT INTO code VALUES ('00020', '004', '保有数（導入可能数）', 40);
INSERT INTO code VALUES ('10038', 'd019', '廃棄日', 190);
INSERT INTO code VALUES ('10017', 'd001', '管理所属', 10);
INSERT INTO code VALUES ('10017', 'd002', '導入または削除の選択', 20);
INSERT INTO code VALUES ('10017', 'd003', '導入または削除の理由', 30);
INSERT INTO code VALUES ('10017', 'd004', '導入または削除の内容', 40);
INSERT INTO code VALUES ('00027', '30', 'grv.jpn.com', 50);
INSERT INTO code VALUES ('00001', 'd002', 'その他ネットワーク接続機器', 20);
INSERT INTO code VALUES ('00009', 'd001', 'ハードウェア台帳', 10);
INSERT INTO code VALUES ('00009', 'd011', 'ライセンス媒体', 50);
INSERT INTO code VALUES ('00009', 'd006', 'プログラムの追加と削除での表示テーブル', 90);
INSERT INTO code VALUES ('00009', 'd007', '収集情報', 100);
INSERT INTO code VALUES ('00009', 'd008', 'ユーザー情報', 110);
INSERT INTO code VALUES ('00009', 'd009', '組織情報', 120);
INSERT INTO code VALUES ('00009', 'd020', 'ライセンス台帳（使用所属）', 40);
INSERT INTO code VALUES ('10027', 'd001', 'ノート', 10);
INSERT INTO code VALUES ('10027', 'd002', 'デスクトップ', 20);
INSERT INTO code VALUES ('10027', 'd003', 'タブレット', 30);
INSERT INTO code VALUES ('10027', 'd004', 'サーバ', 40);
INSERT INTO code VALUES ('10027', 'd005', '仮想サーバ', 50);
INSERT INTO code VALUES ('10028', 'd001', '調達', 10);
INSERT INTO code VALUES ('10028', 'd002', 'リース', 20);
INSERT INTO code VALUES ('00001', 'd003', '未選択', 30);
INSERT INTO code VALUES ('00030', '006', 'ソフトウェア台帳', 60);
INSERT INTO code VALUES ('00009', 'd003', 'ライセンス台帳', 30);
INSERT INTO code VALUES ('00030', '007', 'ライセンス台帳', 70);
INSERT INTO code VALUES ('10026', 'd015', '駐車場事業費', 150);
INSERT INTO code VALUES ('10026', 'd016', '下水道事業会計', 160);
INSERT INTO code VALUES ('10026', 'd017', '市街地再開発事業費', 170);
INSERT INTO code VALUES ('10026', 'd018', '市営住宅事業費', 180);
INSERT INTO code VALUES ('10026', 'd019', '空港整備事業費', 190);
INSERT INTO code VALUES ('10026', 'd020', '港湾事業会計', 200);
INSERT INTO code VALUES ('10026', 'd021', '新都市整備事業会計', 210);
INSERT INTO code VALUES ('10026', 'd022', '水道事業会計', 220);
INSERT INTO code VALUES ('10026', 'd023', '自動車・高速事業会計', 230);
INSERT INTO code VALUES ('10026', 'd025', '工業用水道事業会計', 240);
INSERT INTO code VALUES ('10026', 'd026', '後期高齢者医療事業費', 250);
INSERT INTO code VALUES ('10026', 'd024', 'その他', 260);
INSERT INTO code VALUES ('00020', '005', '消費数', 50);
INSERT INTO code VALUES ('10029', 'd001', '組織', 10);
INSERT INTO code VALUES ('10029', 'd002', '他団体', 20);
INSERT INTO code VALUES ('10031', '002', '情報システム名称', 30);
INSERT INTO code VALUES ('10031', '001', '情報システムコード', 20);
INSERT INTO code VALUES ('10032', '001', '設置場所コード', 20);
INSERT INTO code VALUES ('10032', '002', '局', 30);
INSERT INTO code VALUES ('10034', 'd001', 'デバイス', 10);
INSERT INTO code VALUES ('10034', 'd002', 'ユーザ', 20);
INSERT INTO code VALUES ('10034', 'd003', 'CPU', 30);
INSERT INTO code VALUES ('10034', 'd004', '同時アクセス', 40);
INSERT INTO code VALUES ('10034', 'd005', 'サイトライセンス', 50);
INSERT INTO code VALUES ('10040', 'd001', '管理所属', 10);
INSERT INTO code VALUES ('10040', 'd002', '機器種別', 20);
INSERT INTO code VALUES ('10040', 'd003', '数量', 30);
INSERT INTO code VALUES ('10040', 'd004', '設置場所', 40);
INSERT INTO code VALUES ('10039', 'd025', '管理所属', 10);
INSERT INTO code VALUES ('10039', 'd002', 'ライセンス管理番号', 20);
INSERT INTO code VALUES ('10039', 'd023', '辞書コード(辞)', 30);
INSERT INTO code VALUES ('10039', 'd003', 'ソフトウェア名(辞)', 40);
INSERT INTO code VALUES ('00009', 'd002', 'ソフトウェア台帳', 20);
INSERT INTO code VALUES ('10039', 'd004', '入手形態(辞)', 50);
INSERT INTO code VALUES ('10039', 'd009', '固定先ハードウェア管理番号', 60);
INSERT INTO code VALUES ('10039', 'd010', 'アップグレード版(辞)', 70);
INSERT INTO code VALUES ('10039', 'd011', 'アップグレード元ライセンス管理番号', 80);
INSERT INTO code VALUES ('10039', 'd005', 'メーカー(辞)', 90);
INSERT INTO code VALUES ('10039', 'd006', '保有数（導入可能数）', 100);
INSERT INTO code VALUES ('10039', 'd029', '使用数', 110);
INSERT INTO code VALUES ('10039', 'd007', '消費数(イ)', 120);
INSERT INTO code VALUES ('10039', 'd018', '保管場所', 130);
INSERT INTO code VALUES ('10039', 'd022', '廃棄日', 140);
INSERT INTO code VALUES ('10039', 'd039', '廃棄予定日', 140);
INSERT INTO code VALUES ('10039', 'd028', '管理所属フラグ', 150);
INSERT INTO code VALUES ('10039', 'd032', 'ライセンス使用期限', 160);
INSERT INTO code VALUES ('10039', 'd030', '承認日', 170);
INSERT INTO code VALUES ('10039', 'd001', '使用所属', 180);
INSERT INTO code VALUES ('10039', 'd008', 'PC固定(辞)', 190);
INSERT INTO code VALUES ('10039', 'd012', '証書番号', 200);
INSERT INTO code VALUES ('10039', 'd013', '調達情報', 210);
INSERT INTO code VALUES ('10039', 'd015', '特筆すべき使用許諾条件(辞)', 220);
INSERT INTO code VALUES ('10039', 'd016', 'ライセンス保有証明に必要な部材(辞)', 230);
INSERT INTO code VALUES ('10039', 'd017', '現在保有する部材', 240);
INSERT INTO code VALUES ('10039', 'd019', 'プログラムの追加と削除での表示(辞)', 250);
INSERT INTO code VALUES ('10039', 'd024', 'ダウングレード使用時のプログラムの追加と削除での表示(辞)', 260);
INSERT INTO code VALUES ('10039', 'd020', '備考', 270);
INSERT INTO code VALUES ('10039', 'd021', '調達日', 280);
INSERT INTO code VALUES ('10039', 'd031', '保有数（補足）', 290);
INSERT INTO code VALUES ('10039', 'd033', '調達区分', 300);
INSERT INTO code VALUES ('10039', 'd034', '支出命令番号', 310);
INSERT INTO code VALUES ('10039', 'd035', '所有権', 320);
INSERT INTO code VALUES ('10039', 'd036', '使用者名', 330);
INSERT INTO code VALUES ('10039', 'd037', 'アップグレード可能期限', 340);
INSERT INTO code VALUES ('10039', 'd038', '使用許諾条件(辞)', 350);
INSERT INTO code VALUES ('10039', 'd027', '導入可能残数', 360);
INSERT INTO code VALUES ('10039', 'd040', '申請時備考', 370);
INSERT INTO code VALUES ('10040', 'd005', '設置場所（任意）', 50);
INSERT INTO code VALUES ('10040', 'd006', '会計種別', 60);
INSERT INTO code VALUES ('10040', 'd007', '増設理由書', 70);
INSERT INTO code VALUES ('10040', 'd008', '納品先受取担当者名', 80);
INSERT INTO code VALUES ('10040', 'd009', '納品先住所（○階まで）', 90);
INSERT INTO code VALUES ('10040', 'd010', '納品先Tel', 100);
INSERT INTO code VALUES ('10040', 'd011', '配布申請理由', 110);
INSERT INTO code VALUES ('10040', 'd012', '返却予定日（希望日）', 120);
INSERT INTO code VALUES ('10040', 'd013', 'ハードウェア管理番号', 130);
INSERT INTO code VALUES ('10040', 'd014', '用途区分', 140);
INSERT INTO code VALUES ('10040', 'd015', '所有権', 150);
INSERT INTO code VALUES ('10040', 'd016', '専用の管理番号', 160);
INSERT INTO code VALUES ('10040', 'd017', 'MACアドレス', 170);
INSERT INTO code VALUES ('10040', 'd018', 'CPU及びコア数', 180);
INSERT INTO code VALUES ('10040', 'd019', '仮想環境説明文', 190);
INSERT INTO code VALUES ('10040', 'd020', '備考', 200);
INSERT INTO code VALUES ('10040', 'd021', '支出命令番号', 210);
INSERT INTO code VALUES ('10012', 'd001', '申請書No', 10);
INSERT INTO code VALUES ('10012', 'd002', '申請先', 20);
INSERT INTO code VALUES ('10012', 'd003', '申請日', 30);
INSERT INTO code VALUES ('10012', 'd004', '申請者', 40);
INSERT INTO code VALUES ('10012', 'd005', '申請者メールアドレス', 50);
INSERT INTO code VALUES ('10012', 'd006', '決裁', 60);
INSERT INTO code VALUES ('10012', 'd007', 'ユーザ名', 70);
INSERT INTO code VALUES ('10012', 'd008', '承認・却下日', 80);
INSERT INTO code VALUES ('10012', 'd009', '承認・却下者', 90);
INSERT INTO code VALUES ('10012', 'd010', 'コメント', 100);
INSERT INTO code VALUES ('10012', 'd011', '登録ユーザ', 110);
INSERT INTO code VALUES ('10012', 'd012', '登録日時', 120);
INSERT INTO code VALUES ('10012', 'd013', '更新ユーザ', 130);
INSERT INTO code VALUES ('10012', 'd014', '更新日時', 140);
INSERT INTO code VALUES ('10012', 'd015', '申請状況', 150);
INSERT INTO code VALUES ('10012', 'd016', '申請時備考', 160);
INSERT INTO code VALUES ('10040', 'd022', 'リース期限', 220);
INSERT INTO code VALUES ('10040', 'd023', '調達日', 230);
INSERT INTO code VALUES ('10040', 'd024', '配布するPC', 240);
INSERT INTO code VALUES ('10040', 'd025', 'ライセンス管理番号', 250);
INSERT INTO code VALUES ('10040', 'd026', 'ソフトウェア名（辞）', 260);
INSERT INTO code VALUES ('10040', 'd027', '媒体管理番号', 270);
INSERT INTO code VALUES ('10040', 'd028', '区分', 280);
INSERT INTO code VALUES ('10040', 'd029', '付随する媒体（メディア数）', 290);
INSERT INTO code VALUES ('10040', 'd030', '保管場所', 300);
INSERT INTO code VALUES ('10040', 'd031', '入手形態（辞）', 310);
INSERT INTO code VALUES ('10040', 'd032', 'ダウンロード使用', 320);
INSERT INTO code VALUES ('10040', 'd033', '導入日', 330);
INSERT INTO code VALUES ('10040', 'd034', '削除予定日', 340);
INSERT INTO code VALUES ('10037', 'd020', 'ライセンス管理番号', 200);
INSERT INTO code VALUES ('10037', 'd021', 'ソフトウェア名(辞)', 210);
INSERT INTO code VALUES ('10037', 'd022', '媒体管理番号', 220);
INSERT INTO code VALUES ('10037', 'd023', '区分', 230);
INSERT INTO code VALUES ('10037', 'd024', '付随する媒体（メディア数）', 240);
INSERT INTO code VALUES ('10037', 'd025', '保管場所', 250);
INSERT INTO code VALUES ('10033', '1', 'd008', 10);
INSERT INTO code VALUES ('10033', '2', 'd009', 20);
INSERT INTO code VALUES ('10033', '3', 'd010', 30);
INSERT INTO code VALUES ('10033', '4', 'd902', 40);
INSERT INTO code VALUES ('10033', '5', 'd904', 50);
INSERT INTO code VALUES ('10033', '6', 'd905', 60);
INSERT INTO code VALUES ('10033', '7', 'd906', 70);
INSERT INTO code VALUES ('10033', '8', 'd907', 80);
INSERT INTO code VALUES ('10033', '9', 'd012', 90);
INSERT INTO code VALUES ('10033', '10', 'd804', 100);
INSERT INTO code VALUES ('10033', '11', 'd020', 110);
INSERT INTO code VALUES ('10037', 'd026', '入手形態(辞)', 260);
INSERT INTO code VALUES ('10037', 'd027', 'ダウングレード使用', 270);
INSERT INTO code VALUES ('10037', 'd028', 'インストール日', 280);
INSERT INTO code VALUES ('10037', 'd029', 'アンインストール日', 290);
INSERT INTO code VALUES ('10016', 'd007', '保管場所', 70);
INSERT INTO code VALUES ('10016', 'd008', '一括登録数(ライセンス管理番号の必要数)', 80);
INSERT INTO code VALUES ('10016', 'd017', '保有数（補足）', 150);
INSERT INTO code VALUES ('10016', 'd018', 'PC固定（辞）', 160);
INSERT INTO code VALUES ('10016', 'd019', '固定先ハードウェア管理番号', 170);
INSERT INTO code VALUES ('10016', 'd020', 'アップグレード版（辞）', 180);
INSERT INTO code VALUES ('10016', 'd025', '現在保有する部材', 230);
INSERT INTO code VALUES ('10016', 'd026', 'ライセンス使用期限', 240);
INSERT INTO code VALUES ('10016', 'd030', '証書番号', 280);
INSERT INTO code VALUES ('10016', 'd004', '入手形態(辞)', 40);
INSERT INTO code VALUES ('10016', 'd005', 'メーカー(辞)', 50);
INSERT INTO code VALUES ('10016', 'd006', '保有数（導入可能数）', 60);
INSERT INTO code VALUES ('10016', 'd009', '媒体管理番号の必要数', 90);
INSERT INTO code VALUES ('10016', 'd011', 'プログラムの追加と削除での表示(辞)', 100);
INSERT INTO code VALUES ('10016', 'd012', 'ダウングレード使用時のプログラムの追加と削除での表示(辞)', 110);
INSERT INTO code VALUES ('10016', 'd013', '調達区分', 120);
INSERT INTO code VALUES ('10016', 'd016', '使用許諾条件（辞）', 140);
INSERT INTO code VALUES ('10016', 'd021', 'アップグレード元ライセンス管理番号', 190);
INSERT INTO code VALUES ('10016', 'd024', '支出命令番号', 220);
INSERT INTO code VALUES ('10016', 'd027', 'アップグレード可能期限', 250);
INSERT INTO code VALUES ('00030', '008', 'ライセンス辞書', 80);
INSERT INTO code VALUES ('10031', '005', '情報システム内部管理番号', 10);
INSERT INTO code VALUES ('10031', '006', '使用するネットワーク', 60);
INSERT INTO code VALUES ('10031', '007', '開発業者', 70);
INSERT INTO code VALUES ('10031', '008', '備考', 80);
INSERT INTO code VALUES ('10031', '009', 'データ更新日', 90);
INSERT INTO code VALUES ('10031', '010', '取り込みデータ生成日', 100);
INSERT INTO code VALUES ('10031', '011', '取り込みデータ更新日', 110);
INSERT INTO code VALUES ('10032', '006', '更新日', 70);
INSERT INTO code VALUES ('10032', '007', '回線種別', 80);
INSERT INTO code VALUES ('10032', '008', '住所', 90);
INSERT INTO code VALUES ('10032', '010', '所属名称', 110);
INSERT INTO code VALUES ('10032', '011', '備考', 120);
INSERT INTO code VALUES ('10032', '009', '所属コード', 100);
INSERT INTO code VALUES ('10016', 'd001', 'ソフトウェア辞書から選択', 10);
INSERT INTO code VALUES ('10016', 'd002', '管理所属', 20);
INSERT INTO code VALUES ('10016', 'd003', 'ソフトウェア名(辞)', 30);
INSERT INTO code VALUES ('10042', 'd001', '制御対象', 10);
INSERT INTO code VALUES ('10042', 'd002', '制御対象外', 20);
INSERT INTO code VALUES ('10043', 'd001', '持ち出し不可', 10);
INSERT INTO code VALUES ('10043', 'd002', '持ち出し可能', 20);
INSERT INTO code VALUES ('10016', 'd022', '所有権', 200);
INSERT INTO code VALUES ('10016', 'd028', '調達日', 260);
INSERT INTO code VALUES ('10030', 'd001', 'PC', 10);
INSERT INTO code VALUES ('10030', 'd002', '専用システムPC', 20);
INSERT INTO code VALUES ('10024', 'd001', 'E：専用システム用パソコン', 10);
INSERT INTO code VALUES ('10024', 'd002', 'V：サーバ', 20);
INSERT INTO code VALUES ('10024', 'd003', 'i：仮想環境サーバ', 30);
INSERT INTO code VALUES ('10024', 'd004', 'G：他団体パソコン', 40);
INSERT INTO code VALUES ('10036', 'd001', '9998', 10);
INSERT INTO code VALUES ('00027', '10000', 'office.city.kobe.lg.jp', 10);
INSERT INTO code VALUES ('10016', 'd015', '申請時備考', 130);
INSERT INTO code VALUES ('10016', 'd023', 'ライセンス保有証明に必要な部材（辞）', 210);
INSERT INTO code VALUES ('10016', 'd029', '調達情報', 270);
INSERT INTO code VALUES ('10025', 'd001', '組織:所属リース', 10);
INSERT INTO code VALUES ('10025', 'd002', '組織:所属買取', 20);
INSERT INTO code VALUES ('10025', 'd003', '組織:寄付', 30);
INSERT INTO code VALUES ('10025', 'd004', '他団体:関連団体', 40);
INSERT INTO code VALUES ('10025', 'd005', '他団体:委託業者', 50);
INSERT INTO code VALUES ('00009', 'd004', 'ライセンス辞書', 60);
INSERT INTO code VALUES ('00009', 'd005', 'ライセンス辞書プログラム表示', 70);
INSERT INTO code VALUES ('00009', 'd010', 'ライセンス辞書ダウングレード使用時のプログラム表示', 80);
INSERT INTO code VALUES ('10025', 'd006', '組織:一括リース', 60);
INSERT INTO code VALUES ('10037', 'd030', 'デバイス制御', 132);
INSERT INTO code VALUES ('10037', 'd031', '持ち出し', 134);
INSERT INTO code VALUES ('10037', 'd032', '持ち出し開始日', 136);
INSERT INTO code VALUES ('10037', 'd033', '持ち出し終了日', 138);
INSERT INTO code VALUES ('10038', 'd020', 'デバイス制御', 132);
INSERT INTO code VALUES ('10038', 'd021', '持ち出し', 134);
INSERT INTO code VALUES ('10038', 'd022', '持ち出し開始日', 136);
INSERT INTO code VALUES ('10038', 'd023', '持ち出し終了日', 138);
INSERT INTO code VALUES ('10040', 'd037', 'デバイス制御', 192);
INSERT INTO code VALUES ('10040', 'd038', '持ち出し', 194);
INSERT INTO code VALUES ('10040', 'd039', '持ち出し開始日', 196);
INSERT INTO code VALUES ('10040', 'd040', '持ち出し終了日', 198);
INSERT INTO code VALUES ('20001', 'd001', '部局調達', 10);
INSERT INTO code VALUES ('20001', 'd002', '一括調達', 20);
INSERT INTO code VALUES ('20002', 'd001', '購入', 10);
INSERT INTO code VALUES ('20002', 'd002', 'リース', 20);
INSERT INTO code VALUES ('20003', 'd001', '職員', 10);
INSERT INTO code VALUES ('20003', 'd002', '臨時職員・嘱託員', 20);
INSERT INTO code VALUES ('20003', 'd003', 'その他', 30);
INSERT INTO code VALUES ('20004', 'd001', '新規', 10);
INSERT INTO code VALUES ('20004', 'd002', '移動変更', 20);
INSERT INTO code VALUES ('20004', 'd003', '廃止', 30);
INSERT INTO code VALUES ('00022', 'd001', '可能', 10);
INSERT INTO code VALUES ('00022', 'd002', '施錠場所に設置のため不可能', 20);
INSERT INTO code VALUES ('00022', 'd003', '技術的制限のため不可能', 30);
INSERT INTO code VALUES ('00022', 'd004', '物理的制限のため不可能', 40);
INSERT INTO code VALUES ('00005', 'd002', 'ボリュームライセンス', 10);
INSERT INTO code VALUES ('00005', 'd004', 'パッケージ', 20);
INSERT INTO code VALUES ('00005', 'd005', 'プリインストール', 30);
INSERT INTO code VALUES ('00005', 'd006', 'バンドル', 40);
INSERT INTO code VALUES ('00005', 'd007', 'フリーウェア', 50);
INSERT INTO code VALUES ('00005', 'd008', 'ドライバ', 60);
INSERT INTO code VALUES ('00005', 'd009', 'ユーティリティ', 70);
INSERT INTO code VALUES ('00005', 'd010', 'セキュリティパッチ', 80);
INSERT INTO code VALUES ('00005', 'd012', 'CAL', 90);
INSERT INTO code VALUES ('00005', 'd020', '試用版', 95);
INSERT INTO code VALUES ('00005', 'd902', '【管理対象外】ボリュームライセンス', 100);
INSERT INTO code VALUES ('00005', 'd904', '【管理対象外】パッケージ', 110);
INSERT INTO code VALUES ('00005', 'd905', '【管理対象外】プリインストール', 120);
INSERT INTO code VALUES ('00005', 'd906', '【管理対象外】バンドル', 130);
INSERT INTO code VALUES ('00005', 'd907', '【管理対象外】フリーウェア', 140);
INSERT INTO code VALUES ('20009', '001', '所属', 10);
INSERT INTO code VALUES ('20009', '002', '設置地区', 20);
INSERT INTO code VALUES ('20009', '003', '設置場所', 30);
INSERT INTO code VALUES ('20009', '004', '設置階', 40);
INSERT INTO code VALUES ('20009', '005', '設置エリア', 50);
INSERT INTO code VALUES ('20009', '006', 'PC不足台数', 60);
INSERT INTO code VALUES ('20009', '007', 'PC不足理由', 70);
INSERT INTO code VALUES ('20009', '008', '使用形態', 80);
INSERT INTO code VALUES ('20010', '001', '所属', 10);
INSERT INTO code VALUES ('20010', '002', '設置地区', 20);
INSERT INTO code VALUES ('20010', '003', '設置場所', 30);
INSERT INTO code VALUES ('20010', '004', '設置階', 40);
INSERT INTO code VALUES ('20010', '005', '設置エリア', 50);
INSERT INTO code VALUES ('20010', '006', '調達形態区分', 60);
INSERT INTO code VALUES ('20010', '007', '購入／リース', 70);
INSERT INTO code VALUES ('20010', '008', 'ハードウェア管理番号', 80);
INSERT INTO code VALUES ('20010', '009', 'コンピュータ名（収）', 90);
INSERT INTO code VALUES ('20010', '010', 'IPアドレス（収）', 100);
INSERT INTO code VALUES ('20010', '011', '使用形態', 110);
INSERT INTO code VALUES ('20010', '012', 'IPアドレス', 120);
INSERT INTO code VALUES ('20010', '013', 'IPアドレス2', 130);
INSERT INTO code VALUES ('20010', '014', 'MACアドレス', 140);
INSERT INTO code VALUES ('20010', '015', 'MACアドレス2', 150);
INSERT INTO code VALUES ('20010', '016', 'ソフトウェア台帳インストール数（ソ）', 160);
INSERT INTO code VALUES ('20010', '017', 'PCベンダー（収）', 170);
INSERT INTO code VALUES ('20010', '018', 'PC機種（収）', 180);
INSERT INTO code VALUES ('20010', '019', '使用者によるソフトウェア追加導入・削除（シ）', 190);
INSERT INTO code VALUES ('20010', '020', '調達情報', 200);
INSERT INTO code VALUES ('20010', '021', 'ハードウェア備考', 210);
INSERT INTO code VALUES ('20010', '022', '貸出日', 220);
INSERT INTO code VALUES ('20010', '023', '返却予定日', 230);
INSERT INTO code VALUES ('20010', '024', '返却日', 240);
INSERT INTO code VALUES ('20010', '025', '調達日', 250);
INSERT INTO code VALUES ('20010', '026', '廃棄日', 260);
INSERT INTO code VALUES ('20011', '001', 'ハードウェア管理番号', 10);
INSERT INTO code VALUES ('20011', '002', '所属', 20);
INSERT INTO code VALUES ('20011', '003', '設置地区', 30);
INSERT INTO code VALUES ('20011', '004', '設置場所', 40);
INSERT INTO code VALUES ('20011', '005', '設置階', 50);
INSERT INTO code VALUES ('20011', '006', '設置エリア', 60);
INSERT INTO code VALUES ('20011', '007', '使用形態', 70);
INSERT INTO code VALUES ('20011', '008', '新設置地区', 80);
INSERT INTO code VALUES ('20011', '009', '新設置場所', 90);
INSERT INTO code VALUES ('20011', '010', '新設置階', 100);
INSERT INTO code VALUES ('20011', '011', '新設置エリア', 110);
INSERT INTO code VALUES ('20011', '012', '新使用形態', 120);
INSERT INTO code VALUES ('20011', '013', 'PC移動理由', 130);
INSERT INTO code VALUES ('20012', '001', '配布元ハードウェア管理番号', 10);
INSERT INTO code VALUES ('20012', '002', '旧設置地区', 20);
INSERT INTO code VALUES ('20012', '003', '旧設置場所', 30);
INSERT INTO code VALUES ('20012', '004', '旧設置階', 40);
INSERT INTO code VALUES ('20012', '005', '旧設置エリア', 50);
INSERT INTO code VALUES ('20012', '006', '配布元所属', 60);
INSERT INTO code VALUES ('20012', '007', 'IPアドレス', 70);
INSERT INTO code VALUES ('20012', '008', 'ＩPアドレス2', 80);
INSERT INTO code VALUES ('20013', '001', 'ハードウェア管理番号', 10);
INSERT INTO code VALUES ('20013', '002', '旧設置地区', 20);
INSERT INTO code VALUES ('20013', '003', '旧設置場所', 30);
INSERT INTO code VALUES ('20013', '004', '旧設置階', 40);
INSERT INTO code VALUES ('20013', '005', '旧設置エリア', 50);
INSERT INTO code VALUES ('20013', '006', '配布先所属', 60);
INSERT INTO code VALUES ('20014', '001', 'ハードウェア管理番号', 10);
INSERT INTO code VALUES ('20014', '002', '旧設置地区', 20);
INSERT INTO code VALUES ('20014', '003', '旧設置場所', 30);
INSERT INTO code VALUES ('20014', '004', '旧設置階', 40);
INSERT INTO code VALUES ('20014', '005', '旧設置エリア', 50);
INSERT INTO code VALUES ('20014', '006', '新設置地区', 60);
INSERT INTO code VALUES ('20014', '007', '新設置場所', 70);
INSERT INTO code VALUES ('20014', '008', '新設置階', 80);
INSERT INTO code VALUES ('20014', '009', '新設置エリア', 90);
INSERT INTO code VALUES ('20014', '010', '新IPアドレス', 100);
INSERT INTO code VALUES ('20014', '011', '新IPアドレス2', 110);
INSERT INTO code VALUES ('20015', '001', '配置希望所属', 10);
INSERT INTO code VALUES ('20015', '002', '配置元所属', 20);
INSERT INTO code VALUES ('20015', '003', '設置地区', 30);
INSERT INTO code VALUES ('20015', '004', '設置場所', 40);
INSERT INTO code VALUES ('20015', '005', '設置階', 50);
INSERT INTO code VALUES ('20015', '006', '設置エリア', 60);
INSERT INTO code VALUES ('20015', '007', '配布元ハードウェア管理番号', 70);
INSERT INTO code VALUES ('20015', '008', '希望数', 80);
INSERT INTO code VALUES ('20015', '009', '割当数', 90);
INSERT INTO code VALUES ('20015', '010', '希望残数', 100);
INSERT INTO code VALUES ('20015', '011', '振分状況', 110);
INSERT INTO code VALUES ('20015', '012', 'PC余剰数', 120);
INSERT INTO code VALUES ('20015', '013', 'PC余剰残数', 130);
INSERT INTO code VALUES ('20016', '001', '振分状況', 10);
INSERT INTO code VALUES ('20016', '002', 'ハードウェア管理番号', 20);
INSERT INTO code VALUES ('20016', '003', '旧所属', 30);
INSERT INTO code VALUES ('20016', '004', '旧設置地区', 40);
INSERT INTO code VALUES ('20016', '005', '旧設置場所', 50);
INSERT INTO code VALUES ('20016', '006', '旧設置階', 60);
INSERT INTO code VALUES ('20016', '007', '旧設置エリア', 70);
INSERT INTO code VALUES ('20016', '008', '旧IPアドレス', 80);
INSERT INTO code VALUES ('20016', '009', '旧IPアドレス2', 90);
INSERT INTO code VALUES ('20016', '010', '配置希望所属', 100);
INSERT INTO code VALUES ('20016', '011', '設置地区', 110);
INSERT INTO code VALUES ('20016', '012', '設置場所', 120);
INSERT INTO code VALUES ('20016', '013', '設置階', 130);
INSERT INTO code VALUES ('20016', '014', '設置エリア', 140);
INSERT INTO code VALUES ('20016', '015', 'IPアドレス', 150);
INSERT INTO code VALUES ('20016', '016', 'IPアドレス2', 160);
INSERT INTO code VALUES ('20017', '001', 'ハードウェア管理番号', 10);
INSERT INTO code VALUES ('20017', '002', '旧所属', 20);
INSERT INTO code VALUES ('20017', '003', '旧設置地区', 30);
INSERT INTO code VALUES ('20017', '004', '旧設置場所', 40);
INSERT INTO code VALUES ('20017', '005', '旧設置階', 50);
INSERT INTO code VALUES ('20017', '006', '旧設置エリア', 60);
INSERT INTO code VALUES ('20017', '007', '旧IPアドレス', 70);
INSERT INTO code VALUES ('20017', '008', '旧IPアドレス2', 80);
INSERT INTO code VALUES ('20017', '009', '配置希望所属', 90);
INSERT INTO code VALUES ('20017', '010', '配置地区', 100);
INSERT INTO code VALUES ('20017', '011', '配置場所', 110);
INSERT INTO code VALUES ('20017', '012', '配置階', 120);
INSERT INTO code VALUES ('20017', '013', '配置エリア', 130);
INSERT INTO code VALUES ('20018', '001', '振分状況', 10);
INSERT INTO code VALUES ('20018', '002', 'ハードウェア管理番号', 20);
INSERT INTO code VALUES ('20018', '003', '旧所属', 30);
INSERT INTO code VALUES ('20018', '004', '旧設置地区', 40);
INSERT INTO code VALUES ('20018', '005', '旧設置場所', 50);
INSERT INTO code VALUES ('20018', '006', '旧設置階', 60);
INSERT INTO code VALUES ('20018', '007', '旧設置エリア', 70);
INSERT INTO code VALUES ('20018', '008', '旧ＩPアドレス', 80);
INSERT INTO code VALUES ('20018', '009', '旧IPアドレス2', 90);
INSERT INTO code VALUES ('20018', '010', '配置希望所属', 100);
INSERT INTO code VALUES ('20018', '011', '設置地区', 110);
INSERT INTO code VALUES ('20018', '012', '設置場所', 120);
INSERT INTO code VALUES ('20018', '013', '設置階', 130);
INSERT INTO code VALUES ('20018', '014', '設置エリア', 140);
INSERT INTO code VALUES ('20018', '015', 'ＩPアドレス', 150);
INSERT INTO code VALUES ('20018', '016', 'ＩPアドレス2', 160);
INSERT INTO code VALUES ('00010', '001', '所属', 10);
INSERT INTO code VALUES ('00010', '002', '設置地区', 20);
INSERT INTO code VALUES ('00010', '003', '設置場所', 30);
INSERT INTO code VALUES ('00010', '004', '設置階', 40);
INSERT INTO code VALUES ('00010', '005', '設置エリア', 50);
INSERT INTO code VALUES ('00010', '006', '調達形態区分', 60);
INSERT INTO code VALUES ('00010', '007', '購入／リース', 70);
INSERT INTO code VALUES ('00010', '008', 'ハードウェア管理番号', 80);
INSERT INTO code VALUES ('00010', '009', 'コンピューター名（収）', 90);
INSERT INTO code VALUES ('00010', '010', 'IPアドレス（収）', 100);
INSERT INTO code VALUES ('00010', '011', '使用形態', 110);
INSERT INTO code VALUES ('00010', '012', 'IPアドレス', 120);
INSERT INTO code VALUES ('00010', '013', 'IPアドレス2', 130);
INSERT INTO code VALUES ('00010', '014', 'MACアドレス', 140);
INSERT INTO code VALUES ('00010', '015', 'MACアドレス2', 150);
INSERT INTO code VALUES ('00010', '016', 'ソフトウェア台帳インストール数（ソ）', 160);
INSERT INTO code VALUES ('00010', '017', 'PCベンダー（収）', 170);
INSERT INTO code VALUES ('00010', '018', 'PC機種（収）', 180);
INSERT INTO code VALUES ('00010', '019', '使用者によるソフトウェア追加導入削除（シ）', 190);
INSERT INTO code VALUES ('00010', '020', '調達情報', 200);
INSERT INTO code VALUES ('00010', '021', 'ハードウェア備考', 210);
INSERT INTO code VALUES ('00010', '022', '貸出日', 220);
INSERT INTO code VALUES ('00010', '023', '返却予定日', 230);
INSERT INTO code VALUES ('00010', '024', '返却日', 240);
INSERT INTO code VALUES ('00010', '025', '調達日', 250);
INSERT INTO code VALUES ('00010', '026', '廃棄日', 260);
INSERT INTO code VALUES ('00011', '001', '所属', 10);
INSERT INTO code VALUES ('00011', '002', 'ハードウェア管理番号（ハ）', 20);
INSERT INTO code VALUES ('00011', '003', '使用形態（ハ）', 30);
INSERT INTO code VALUES ('00011', '004', 'ライセンス管理番号（ラ）', 40);
INSERT INTO code VALUES ('00011', '005', 'ライセンス名（辞）', 50);
INSERT INTO code VALUES ('00011', '006', '種類（辞）', 60);
INSERT INTO code VALUES ('00011', '007', 'ハードウェア固定（辞）', 70);
INSERT INTO code VALUES ('00011', '008', '固定先ハードウェア管理番号（ラ）', 80);
INSERT INTO code VALUES ('00011', '009', 'アップグレード版（辞）', 90);
INSERT INTO code VALUES ('00011', '010', 'アップグレード元ライセンス管理番号（ラ）', 100);
INSERT INTO code VALUES ('00011', '011', 'プログラムと機能での表示（収）', 110);
INSERT INTO code VALUES ('00011', '012', 'ダウングレード使用', 120);
INSERT INTO code VALUES ('00011', '013', 'ソフトウェア備考', 130);
INSERT INTO code VALUES ('00011', '014', '導入日', 140);
INSERT INTO code VALUES ('00011', '015', '削除日', 150);
INSERT INTO code VALUES ('00012', '001', '管理所属', 10);
INSERT INTO code VALUES ('00012', '002', '所属', 20);
INSERT INTO code VALUES ('00012', '003', 'ライセンス管理番号', 30);
INSERT INTO code VALUES ('00012', '004', '辞書コード（辞）', 40);
INSERT INTO code VALUES ('00012', '005', 'ライセンス名（辞）', 50);
INSERT INTO code VALUES ('00012', '006', '種類（辞）', 60);
INSERT INTO code VALUES ('00012', '007', 'ハードウェア固定（辞）', 70);
INSERT INTO code VALUES ('00012', '008', '固定先ハードウェア管理番号', 80);
INSERT INTO code VALUES ('00012', '009', 'アップグレード版（辞）', 90);
INSERT INTO code VALUES ('00012', '010', 'アップグレード元ライセンス管理番号', 100);
INSERT INTO code VALUES ('00012', '011', 'プロダクトキーまたはライセンス証書番号', 110);
INSERT INTO code VALUES ('00012', '012', 'メーカー（辞）', 120);
INSERT INTO code VALUES ('00012', '013', '導入可能数', 130);
INSERT INTO code VALUES ('00012', '014', '使用数', 140);
INSERT INTO code VALUES ('00012', '015', '導入数（ソ）', 150);
INSERT INTO code VALUES ('00012', '016', '調達情報', 160);
INSERT INTO code VALUES ('00012', '017', '特筆すべき使用許諾条件（辞）', 170);
INSERT INTO code VALUES ('00012', '018', 'ライセンス保有証明部材（辞）', 180);
INSERT INTO code VALUES ('00012', '019', 'ライセンス保有部材', 190);
INSERT INTO code VALUES ('00012', '020', '添付ファイル', 200);
INSERT INTO code VALUES ('00012', '021', '保管場所', 210);
INSERT INTO code VALUES ('00012', '022', 'プログラムと機能での表示（辞）', 220);
INSERT INTO code VALUES ('00012', '023', 'ダウングレード使用時のプログラムと機能での表示（辞）', 230);
INSERT INTO code VALUES ('00012', '024', 'ライセンス備考', 240);
INSERT INTO code VALUES ('00012', '025', '調達日', 250);
INSERT INTO code VALUES ('00012', '026', 'ライセンス使用期限', 260);
INSERT INTO code VALUES ('00012', '027', '廃棄日', 270);
INSERT INTO code VALUES ('00012', '028', '管理所属フラグ', 280);
INSERT INTO code VALUES ('00015', '010', '管理番号', 15);
INSERT INTO code VALUES ('20005', '001', '所属', 10);
INSERT INTO code VALUES ('20005', '002', '協議内容', 20);
INSERT INTO code VALUES ('20005', '003', '申請理由', 30);
INSERT INTO code VALUES ('20005', '004', '電話番号', 40);
INSERT INTO code VALUES ('20005', '005', '設置地区', 50);
INSERT INTO code VALUES ('20005', '006', '設置場所', 60);
INSERT INTO code VALUES ('20005', '007', '設置階', 70);
INSERT INTO code VALUES ('20005', '008', '設置エリア', 80);
INSERT INTO code VALUES ('20005', '009', '調達形態区分', 90);
INSERT INTO code VALUES ('20005', '010', '購入／リース', 100);
INSERT INTO code VALUES ('20005', '011', 'ハードウェア管理番号', 110);
INSERT INTO code VALUES ('20005', '012', 'コンピューター名（収）', 120);
INSERT INTO code VALUES ('20005', '013', 'IPアドレス（収）', 130);
INSERT INTO code VALUES ('20005', '014', '使用形態', 140);
INSERT INTO code VALUES ('20005', '015', 'IPアドレス', 150);
INSERT INTO code VALUES ('20005', '016', 'IPアドレス2', 160);
INSERT INTO code VALUES ('20005', '017', 'MACアドレス', 170);
INSERT INTO code VALUES ('20005', '018', 'MACアドレス2', 180);
INSERT INTO code VALUES ('20005', '019', 'ソフトウェア台帳インストール数（ソ）', 190);
INSERT INTO code VALUES ('20005', '020', 'PCベンダー（収）', 200);
INSERT INTO code VALUES ('20005', '021', 'PC機種（収）', 210);
INSERT INTO code VALUES ('20005', '022', '使用者によるソフトウェア追加導入削除（シ）', 220);
INSERT INTO code VALUES ('20005', '023', '調達情報', 230);
INSERT INTO code VALUES ('20005', '024', 'ハードウェア備考', 240);
INSERT INTO code VALUES ('20005', '025', '貸出日', 250);
INSERT INTO code VALUES ('20005', '026', '返却日', 260);
INSERT INTO code VALUES ('20005', '027', '返却予定日', 270);
INSERT INTO code VALUES ('20005', '028', '調達日', 280);
INSERT INTO code VALUES ('20005', '029', '廃棄日', 290);
INSERT INTO code VALUES ('20005', '030', '申請時備考', 300);
INSERT INTO code VALUES ('20006', '001', '所属', 10);
INSERT INTO code VALUES ('20006', '002', '数量', 20);
INSERT INTO code VALUES ('20006', '003', '申請理由', 30);
INSERT INTO code VALUES ('20006', '004', '電話番号', 40);
INSERT INTO code VALUES ('20006', '005', '使用形態', 50);
INSERT INTO code VALUES ('20006', '006', '返却予定日', 60);
INSERT INTO code VALUES ('20006', '007', '申請時備考', 70);
INSERT INTO code VALUES ('20006', '008', '貸出ハードウェア選択', 80);
INSERT INTO code VALUES ('20007', '001', '所属', 10);
INSERT INTO code VALUES ('20007', '002', '設置地区', 20);
INSERT INTO code VALUES ('20007', '003', '設置場所', 30);
INSERT INTO code VALUES ('20007', '004', '設置階', 40);
INSERT INTO code VALUES ('20007', '005', '設置エリア', 50);
INSERT INTO code VALUES ('20007', '006', '調達形態区分', 60);
INSERT INTO code VALUES ('20007', '007', '購入／リース', 70);
INSERT INTO code VALUES ('20007', '008', 'ハードウェア管理番号', 80);
INSERT INTO code VALUES ('20007', '009', 'コンピュータ名（収）', 90);
INSERT INTO code VALUES ('20007', '010', 'IPアドレス（収）', 100);
INSERT INTO code VALUES ('20007', '011', '使用形態', 110);
INSERT INTO code VALUES ('20007', '012', 'IPアドレス', 120);
INSERT INTO code VALUES ('20007', '013', 'IPアドレス2', 130);
INSERT INTO code VALUES ('20007', '014', 'MACアドレス', 140);
INSERT INTO code VALUES ('20007', '015', 'MACアドレス2', 150);
INSERT INTO code VALUES ('20007', '016', 'ソフトウェア台帳インストール数（ソ）', 160);
INSERT INTO code VALUES ('20007', '017', 'PCベンダー（収）', 170);
INSERT INTO code VALUES ('20007', '018', 'PC機種（収）', 180);
INSERT INTO code VALUES ('20007', '019', '使用者によるソフトウェア追加導入・削除（シ）', 190);
INSERT INTO code VALUES ('20007', '020', '調達情報', 200);
INSERT INTO code VALUES ('20007', '021', 'ハードウェア備考', 210);
INSERT INTO code VALUES ('20007', '022', '貸出日', 220);
INSERT INTO code VALUES ('20007', '023', '返却予定日', 230);
INSERT INTO code VALUES ('20007', '024', '返却日', 240);
INSERT INTO code VALUES ('20007', '025', '調達日', 250);
INSERT INTO code VALUES ('20007', '026', '廃棄日', 260);
INSERT INTO code VALUES ('20007', '027', '申請時備考', 270);
INSERT INTO code VALUES ('20008', '001', '管理所属', 10);
INSERT INTO code VALUES ('20008', '002', '導入または削除の選択', 20);
INSERT INTO code VALUES ('20008', '003', '導入または削除の理由', 30);
INSERT INTO code VALUES ('20008', '004', '導入または削除の内容', 40);
INSERT INTO code VALUES ('20008', '005', '申請時備考', 50);
INSERT INTO code VALUES ('10002', '001', 'ライセンス媒体管理番号', 10);
INSERT INTO code VALUES ('10002', '002', 'インストールキー', 20);
INSERT INTO code VALUES ('10002', '003', '現管理者名', 30);
INSERT INTO code VALUES ('10002', '004', '区分', 40);
INSERT INTO code VALUES ('10002', '005', '複製元媒体管理番号', 50);
INSERT INTO code VALUES ('10002', '006', '保管場所', 60);
INSERT INTO code VALUES ('10002', '007', '補足情報', 70);
INSERT INTO code VALUES ('10002', '008', '貸出先所属課名', 80);
INSERT INTO code VALUES ('10002', '009', '貸出先担当者名', 90);
INSERT INTO code VALUES ('10002', '010', '連絡先番号', 100);
INSERT INTO code VALUES ('10002', '011', '貸与日', 110);
INSERT INTO code VALUES ('10002', '012', '返却予定日', 120);
INSERT INTO code VALUES ('10002', '013', '返却日', 130);
INSERT INTO code VALUES ('00025', '001', 'ライセンス管理番号', 10);
INSERT INTO code VALUES ('00025', '002', 'ライセンス名（辞）', 20);
INSERT INTO code VALUES ('00025', '003', '種類（辞）', 30);
INSERT INTO code VALUES ('00025', '004', '固定先ハードウェア管理番号', 40);
INSERT INTO code VALUES ('00025', '005', 'アップグレード元ライセンス管理番号', 50);
INSERT INTO code VALUES ('00025', '006', '使用数', 60);
INSERT INTO code VALUES ('00025', '007', '導入数（ソ）', 70);
INSERT INTO code VALUES ('00025', '008', '調達日', 80);
INSERT INTO code VALUES ('10002', '014', 'セット枚数', 140);
INSERT INTO code VALUES ('10002', '015', '貸出先所属課内部キー', 150);
INSERT INTO code VALUES ('10002', '016', '貸出理由', 160);
INSERT INTO code VALUES ('10002', '017', '廃棄日', 170);
INSERT INTO code VALUES ('00012', '029', '管理所属のライセンス保有数', 290);
INSERT INTO code VALUES ('00026', 'd001', 'ハードウェア台帳', 10);
INSERT INTO code VALUES ('00026', 'd002', 'ソフトウェア台帳', 20);
INSERT INTO code VALUES ('00026', 'd003', 'ライセンス台帳', 30);
INSERT INTO code VALUES ('00026', 'd004', 'ライセンス辞書', 40);
INSERT INTO code VALUES ('10006', 'd708', 'ライセンス辞書', 120);
INSERT INTO code VALUES ('10006', 'd709', 'LAN接続協議', 130);
INSERT INTO code VALUES ('10006', 'd710', 'ソフトウェア導入協議', 140);
INSERT INTO code VALUES ('10006', 'd711', 'ハードウェア貸出', 150);
INSERT INTO code VALUES ('10006', 'd712', 'ハードウェア返却', 160);
INSERT INTO code VALUES ('00021', '001', 'ライセンス名', 10);
INSERT INTO code VALUES ('00021', '002', '種類', 20);
INSERT INTO code VALUES ('00021', '003', 'メーカー', 30);
INSERT INTO code VALUES ('00021', '004', 'ハードウェア固定', 40);
INSERT INTO code VALUES ('00021', '005', 'アップグレード版', 50);
INSERT INTO code VALUES ('20020', '001', '共通基盤ユーザID', 10);
INSERT INTO code VALUES ('20020', '002', 'SARMSユーザID', 20);
INSERT INTO code VALUES ('20020', '003', '追加日時', 30);
INSERT INTO code VALUES ('00009', 'd041', '管理者設定', 150);
INSERT INTO code VALUES ('00009', 'd040', '設置場所', 140);
INSERT INTO code VALUES ('00013', '001', '辞書コード', 10);
INSERT INTO code VALUES ('00013', '002', 'ライセンス名', 20);
INSERT INTO code VALUES ('00013', '003', '種類', 30);
INSERT INTO code VALUES ('00013', '004', 'ハードウェア固定', 40);
INSERT INTO code VALUES ('00013', '005', 'アップグレード版', 50);
INSERT INTO code VALUES ('00013', '006', 'プログラムと機能での表示', 60);
INSERT INTO code VALUES ('00013', '007', 'ダウングレード使用時のプログラムと機能での表示', 70);
INSERT INTO code VALUES ('00013', '008', 'メーカー', 80);
INSERT INTO code VALUES ('00013', '009', '使用許諾条件の確認(シ）', 90);
INSERT INTO code VALUES ('00013', '010', '特筆すべき使用許諾条件', 100);
INSERT INTO code VALUES ('00013', '011', 'ライセンス保有証明部材', 110);
INSERT INTO code VALUES ('00013', '012', 'ライセンス辞書備考', 120);
INSERT INTO code VALUES ('00013', '013', '申請者所属', 130);
INSERT INTO code VALUES ('00013', '014', '申請者', 140);
INSERT INTO code VALUES ('00013', '015', '承認日', 150);
INSERT INTO code VALUES ('00013', '016', '有効（シ）', 160);
INSERT INTO code VALUES ('00013', '017', 'ライセンス台帳での表示', 170);
INSERT INTO code VALUES ('20019', '001', '設置場所コード', 10);
INSERT INTO code VALUES ('20019', '002', '地区', 20);
INSERT INTO code VALUES ('20019', '003', '拠点名', 30);
INSERT INTO code VALUES ('20019', '004', '設置階', 40);
INSERT INTO code VALUES ('20019', '005', '設置エリア', 50);
INSERT INTO code VALUES ('20019', '006', 'グループ番号', 60);
INSERT INTO code VALUES ('20019', '007', '拠点番号', 70);
INSERT INTO code VALUES ('20019', '008', '設置エリア番号', 80);
INSERT INTO code VALUES ('20019', '009', '各所属での表示コード', 90);
INSERT INTO code VALUES ('20019', '010', '各所属での表示', 100);
INSERT INTO code VALUES ('10041', 'd003', '修正', 30);


--
-- Data for Name: codebunrui; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO codebunrui VALUES ('00001', 'ハードウェア種別');
INSERT INTO codebunrui VALUES ('00002', '状態');
INSERT INTO codebunrui VALUES ('00003', '自所属区分');
INSERT INTO codebunrui VALUES ('00004', '該当区分');
INSERT INTO codebunrui VALUES ('00006', '要否区分');
INSERT INTO codebunrui VALUES ('00007', '有効区分');
INSERT INTO codebunrui VALUES ('00008', '承認区分');
INSERT INTO codebunrui VALUES ('00009', 'テーブル名');
INSERT INTO codebunrui VALUES ('00010', 'ハードウェア台帳');
INSERT INTO codebunrui VALUES ('00014', '収集情報');
INSERT INTO codebunrui VALUES ('00015', '未承認承認済');
INSERT INTO codebunrui VALUES ('00016', 'ユーザー情報');
INSERT INTO codebunrui VALUES ('00017', '組織情報');
INSERT INTO codebunrui VALUES ('00018', '演算子');
INSERT INTO codebunrui VALUES ('00019', '条件');
INSERT INTO codebunrui VALUES ('00020', 'ライセンス台帳選択');
INSERT INTO codebunrui VALUES ('10035', '年度開始月');
INSERT INTO codebunrui VALUES ('00023', '権限');
INSERT INTO codebunrui VALUES ('00024', 'ハードウェア情報選択');
INSERT INTO codebunrui VALUES ('00025', 'ライセンス情報選択');
INSERT INTO codebunrui VALUES ('00026', '台帳情報');
INSERT INTO codebunrui VALUES ('00027', '申請者メールアドレスドメイン');
INSERT INTO codebunrui VALUES ('00028', '収集情報排除キーワード');
INSERT INTO codebunrui VALUES ('10037', 'ハードウェア移管_廃棄');
INSERT INTO codebunrui VALUES ('10001', '許可区分');
INSERT INTO codebunrui VALUES ('10002', 'ライセンス媒体管理情報');
INSERT INTO codebunrui VALUES ('10038', 'ハードウェア情報変更');
INSERT INTO codebunrui VALUES ('10004', 'ワークフロー確認');
INSERT INTO codebunrui VALUES ('10005', '齟齬集計項目区分');
INSERT INTO codebunrui VALUES ('00030', '齟齬一覧');
INSERT INTO codebunrui VALUES ('10006', 'ワークフロー申請種類');
INSERT INTO codebunrui VALUES ('10007', 'ワークフロー申請状況');
INSERT INTO codebunrui VALUES ('10008', '齟齬エラー出力対象候補');
INSERT INTO codebunrui VALUES ('10009', '調達区分');
INSERT INTO codebunrui VALUES ('10010', '形状区分');
INSERT INTO codebunrui VALUES ('10011', 'OS情報');
INSERT INTO codebunrui VALUES ('10012', 'ワークフロー共通');
INSERT INTO codebunrui VALUES ('10014', 'ハードウェア調達');
INSERT INTO codebunrui VALUES ('10015', 'パソコン持込');
INSERT INTO codebunrui VALUES ('10019', '棚卸結果報告書');
INSERT INTO codebunrui VALUES ('10013', '全庁利用許可ソフトウェアリスト管理');
INSERT INTO codebunrui VALUES ('10020', '媒体調達区分');
INSERT INTO codebunrui VALUES ('10016', 'ライセンス調達');
INSERT INTO codebunrui VALUES ('10017', 'ソフトウェア一括導入・一括削除');
INSERT INTO codebunrui VALUES ('10021', '禁止ソフトウェア定義');
INSERT INTO codebunrui VALUES ('10018', 'ライセンス媒体追加購入・複製');
INSERT INTO codebunrui VALUES ('10022', 'ライセンス種別');
INSERT INTO codebunrui VALUES ('10023', 'Microsoft ライセンス種別齟齬チェック対象外');
INSERT INTO codebunrui VALUES ('10031', '情報システムコード');
INSERT INTO codebunrui VALUES ('00011', 'インストール管理台帳');
INSERT INTO codebunrui VALUES ('10030', '用途区分');
INSERT INTO codebunrui VALUES ('10032', '設置場所コード');
INSERT INTO codebunrui VALUES ('10033', '齟齬対象外ライセンス種別');
INSERT INTO codebunrui VALUES ('10034', '使用許諾条件');
INSERT INTO codebunrui VALUES ('00021', 'ソフトウェア辞書選択');
INSERT INTO codebunrui VALUES ('00013', 'ソフトウェア辞書');
INSERT INTO codebunrui VALUES ('10003', '区分');
INSERT INTO codebunrui VALUES ('00012', 'ライセンス台帳');
INSERT INTO codebunrui VALUES ('10036', '齟齬対象外所属コード');
INSERT INTO codebunrui VALUES ('10041', '導入または削除の選択');
INSERT INTO codebunrui VALUES ('10024', 'ハードウェア種別 (組織) ');
INSERT INTO codebunrui VALUES ('10025', '所有権(HW台帳)');
INSERT INTO codebunrui VALUES ('10026', '会計種別');
INSERT INTO codebunrui VALUES ('10027', '機器種別');
INSERT INTO codebunrui VALUES ('10028', '調達区分(組織)');
INSERT INTO codebunrui VALUES ('10029', '所有権(LC台帳)');
INSERT INTO codebunrui VALUES ('10040', 'PC配布返却');
INSERT INTO codebunrui VALUES ('10042', 'デバイス制御');
INSERT INTO codebunrui VALUES ('10043', '持ち出し');
INSERT INTO codebunrui VALUES ('20001', '調達形態区分');
INSERT INTO codebunrui VALUES ('20002', '購入／リース');
INSERT INTO codebunrui VALUES ('20003', '使用形態');
INSERT INTO codebunrui VALUES ('20004', '協議内容');
INSERT INTO codebunrui VALUES ('20005', 'LAN接続協議申請');
INSERT INTO codebunrui VALUES ('20006', 'ハードウェア貸出');
INSERT INTO codebunrui VALUES ('20007', 'ハードウェア返却');
INSERT INTO codebunrui VALUES ('20008', 'ソフトウェア導入協議申請');
INSERT INTO codebunrui VALUES ('20009', 'PC不足');
INSERT INTO codebunrui VALUES ('20010', 'PC余剰');
INSERT INTO codebunrui VALUES ('20011', 'PC移動');
INSERT INTO codebunrui VALUES ('20012', '不足状況確認');
INSERT INTO codebunrui VALUES ('20013', '余剰状況確認');
INSERT INTO codebunrui VALUES ('20014', '移動状況確認');
INSERT INTO codebunrui VALUES ('20015', '振分設定');
INSERT INTO codebunrui VALUES ('20016', '振分確認');
INSERT INTO codebunrui VALUES ('20017', '返却確認');
INSERT INTO codebunrui VALUES ('20018', '振分実施');
INSERT INTO codebunrui VALUES ('20019', '設置場所');
INSERT INTO codebunrui VALUES ('00005', '種類');
INSERT INTO codebunrui VALUES ('00022', '使用者によるソフトウェア追加導入・削除');
INSERT INTO codebunrui VALUES ('20020', '管理者設定画面');


--
-- Data for Name: control; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO control VALUES ('LAN_SEARCH_DAY', '不正接続検知指定日数１

', '15');
INSERT INTO control VALUES ('USE_COND_CHECK_DAY', '使用許諾条件の確認経過日数', '180');
INSERT INTO control VALUES ('DAICHO_COMP_DAY', '台帳比較経過日数', '15');
INSERT INTO control VALUES ('KOBAN_SEARCH_DAY', '不正接続検知指定日数２

', '15');
INSERT INTO control VALUES ('LIST_QTY', '一覧表の表示件数', '30');
INSERT INTO control VALUES ('SOGO_MAIL_SEND', '齟齬メール配信（1:有効,2:無効）', '1');
INSERT INTO control VALUES ('MAINTENANCE_MODE', '台帳保守機能（1:有効,2:無効）', '1');
INSERT INTO control VALUES ('AUTO_APPROVAL', '自動承認機能（1:有効,2:無効）', '2');
INSERT INTO control VALUES ('LAN_TOOL_DAY', 'インベントリツール指定日数', '365');
INSERT INTO control VALUES ('USB_TOOL_DAY', 'USBメモリツール指定日数

', '365');


--
-- Data for Name: errmsg; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO errmsg VALUES ('0004', '該当する情報はありません');
INSERT INTO errmsg VALUES ('0005', '半角英数字で入力してください');
INSERT INTO errmsg VALUES ('0006', '入力形式が間違っています。***@***の形式で入力してください');
INSERT INTO errmsg VALUES ('0007', '必須入力です。値を入力してください');
INSERT INTO errmsg VALUES ('0008', 'チェックがされていません。チェックをしてください');
INSERT INTO errmsg VALUES ('0009', '権限がありません');
INSERT INTO errmsg VALUES ('0010', '入力形式が間違っています。yyyy/mm/ddの形式で入力してください');
INSERT INTO errmsg VALUES ('0011', 'データが追加されていません。追加してください。');
INSERT INTO errmsg VALUES ('0001', 'ユーザー名を入力してください');
INSERT INTO errmsg VALUES ('0002', 'パスワードを入力してください');
INSERT INTO errmsg VALUES ('0003', 'ユーザー名またはパスワードが違います');
INSERT INTO errmsg VALUES ('0013', '必須選択です。正しく選択してください');
INSERT INTO errmsg VALUES ('0014', '自所属以下に指定しています。正しく選択してください');
INSERT INTO errmsg VALUES ('0015', 'ユーザーが存在しているため削除できません');
INSERT INTO errmsg VALUES ('0016', '既に登録されています');
INSERT INTO errmsg VALUES ('0239', '「ライセンス名」を記載してください。');
INSERT INTO errmsg VALUES ('0572', 'このハードウェアは廃棄済みとなっていますので、情報を変更することはできません。');
INSERT INTO errmsg VALUES ('0228', '「種類（辞）」が「パッケージ」であるにもかかわらず「インストール可能数」が「1」ではありません。多くのパッケージ製品は使用許諾条件において2台以上にはインストールしてはいけないこととなっています。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0242', '「アップグレード版」を選択してください。');
INSERT INTO errmsg VALUES ('0243', '「特筆すべき使用許諾条件」を記載してください。特筆すべき使用許諾条件が全くないライセンスの場合は「なし」と記載してください。');
INSERT INTO errmsg VALUES ('0550', 'ハードウェア種別を選択してください。');
INSERT INTO errmsg VALUES ('0551', '情報システムコードを選択してください。');
INSERT INTO errmsg VALUES ('0552', 'ハードウェア種別「他団体パソコン」の場合、情報システムコードは「99999」です。');
INSERT INTO errmsg VALUES ('0553', '所有権を選択してください。');
INSERT INTO errmsg VALUES ('0250', '「メーカー」が空欄のままです。どうしても分からない場合以外はこれらの欄を記載してください。');
INSERT INTO errmsg VALUES ('0251', '「使用許諾条件の確認」を選択してください。');
INSERT INTO errmsg VALUES ('0252', '「有効」を選択してください。');
INSERT INTO errmsg VALUES ('0202', '「申請日」を記載してください。');
INSERT INTO errmsg VALUES ('0554', '会計種別を選択してください。');
INSERT INTO errmsg VALUES ('0555', '設置場所コードを選択してください。');
INSERT INTO errmsg VALUES ('0205', '「ハードウェア種別」を選択してください。');
INSERT INTO errmsg VALUES ('0556', '機種種別を選択してください。');
INSERT INTO errmsg VALUES ('0207', '「使用者名」を記載してください。');
INSERT INTO errmsg VALUES ('0208', '「使用者によるソフトウェア追加導入・削除」を選択してください。');
INSERT INTO errmsg VALUES ('0240', '「種類（辞）」を記載してください。');
INSERT INTO errmsg VALUES ('0247', '導入できるハードウェアが指定されているライセンスは「種類（辞）」を「プリインストール」とし、「ハードウェア固定」を「該当」としてください。');
INSERT INTO errmsg VALUES ('0214', '「ライセンス管理番号」を記載してください。');
INSERT INTO errmsg VALUES ('0266', '管理所属の削除を行うと使用所属も削除されます。よろしいですか？');
INSERT INTO errmsg VALUES ('0502', '%s行目の「媒体管理番号」を記載してください。');
INSERT INTO errmsg VALUES ('0575', '固定先ハードウェア管理番号のアップロード件数が一括登録数(ライセンス管理番号の必要数)と一致しません。');
INSERT INTO errmsg VALUES ('0218', '「保管場所」を記載してください。');
INSERT INTO errmsg VALUES ('0529', '%s行目の「媒体管理番号」が%s行目と重複しています。媒体管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0530', '%s行目の「媒体管理番号」は既に登録されています。媒体管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0222', '「アップグレード」が「該当」となっているものは、アップグレード版など、アップグレード元ライセンスが別途必要なライセンスです。「アップグレード元ライセンス管理番号」を選択するまではこのライセンスを使用できません。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0223', '「アップグレード」が「非該当」ですので「アップグレード元ライセンス管理番号」は選択しないでください。');
INSERT INTO errmsg VALUES ('0225', 'アップグレード元として選択されたライセンスは廃棄済みであり指定できません。');
INSERT INTO errmsg VALUES ('0226', 'アップグレード元として選択されたライセンスはアップグレード版であり指定できません。');
INSERT INTO errmsg VALUES ('0227', '固定先として選択されたハードウェアは廃棄済みであり指定できません。');
INSERT INTO errmsg VALUES ('0564', 'ハードウェア管理番号に空きがありません。システム管理者に連絡してください。');
INSERT INTO errmsg VALUES ('0301', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが存在しません。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「固定先ハードウェア管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0506', '%s行目の「貸出先管理責任者名」を記載してください。');
INSERT INTO errmsg VALUES ('0248', '導入できるハードウェアが指定されているライセンスは「種類（辞）」を「プリインストール」とし、「ハードウェア固定」を「該当」としてください。');
INSERT INTO errmsg VALUES ('0267', 'ライセンスの振り分けを行った状態で「種類（辞）」がプリインストールに設定されております。このまま進めてもよろしいですか？');
INSERT INTO errmsg VALUES ('0576', '固定先ハードウェア管理番号がハードウェア台帳に登録されていません。');
INSERT INTO errmsg VALUES ('0590', '「廃棄日」が入力されていません。');
INSERT INTO errmsg VALUES ('0230', '記載された「ライセンス管理番号」は既に登録されています。ライセンス管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0577', 'アップグレード元ライセンス管理番号のアップロード件数が一括登録数(ライセンス管理番号の必要数)と一致しません。');
INSERT INTO errmsg VALUES ('0573', '「ハードウェア固定」が「該当」となっているものは、「使用所属」を追加する事はできません。');
INSERT INTO errmsg VALUES ('0232', 'ハードウェアが廃棄済みとなっていますので、ソフトウェアを追加することはできません。');
INSERT INTO errmsg VALUES ('0233', 'ライセンス管理番号「%s」のライセンスは廃棄済みであるため追加できません。');
INSERT INTO errmsg VALUES ('0237', 'ライセンス管理番号「%s」のライセンスは、導入できるハードウェアが固定されています（＝プリインストール版のライセンス）。このハードウェアへは追加できません。');
INSERT INTO errmsg VALUES ('0238', 'ライセンス管理番号「%s」のライセンスのインストール可能数を上回るのでソフトウェアを追加することはできません。');
INSERT INTO errmsg VALUES ('0018', 'CSVファイルが選択されておりません');
INSERT INTO errmsg VALUES ('0101', '「承認・却下者」を記載してください。');
INSERT INTO errmsg VALUES ('0102', '「承認・却下日」を記載してください。');
INSERT INTO errmsg VALUES ('0201', '「申請者」を記載してください。');
INSERT INTO errmsg VALUES ('0254', '申請者メールアドレスが許可されたドメインではありません。');
INSERT INTO errmsg VALUES ('0255', '導入ソフトウェアが選択されていません。');
INSERT INTO errmsg VALUES ('0578', 'アップグレード元ライセンス管理番号がライセンス台帳に登録されていません。');
INSERT INTO errmsg VALUES ('0318', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「所属」が選択されていません。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「所属」を選択する</a>');
INSERT INTO errmsg VALUES ('0319', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「状態」が選択されていません。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を選択する</a>');
INSERT INTO errmsg VALUES ('0320', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア種別」が選択されていません。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「ハードウェア種別」を選択する</a>');
INSERT INTO errmsg VALUES ('0221', '「ハードウェア固定」が「非該当」ですので「固定先ハードウェア管理番号」は選択しないでください。');
INSERT INTO errmsg VALUES ('0229', '「種類（辞）」が「ボリュームライセンス」「パッケージ」「プリインストール」「バンドル」であるにもかかわらず「インストール可能数」が「無制限」となっています。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0245', '「ライセンス名」、「種類（辞）」、「ハードウェア固定」、「アップグレード版」の組み合わせは既に登録されています。重複登録でないことを確認してください。');
INSERT INTO errmsg VALUES ('0324', 'コンピュータ名%s、IPアドレス%sの機器の「ハードウェア種別」は「その他ネットワーク機器」ではなく「コンピュータ」です。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「ハードウェア種別」を変更する</a>');
INSERT INTO errmsg VALUES ('0325', 'コンピュータ名%s、IPアドレス%sの機器は「コンピュータ」であるにもかかわらずインベントリ収集ツールが導入されていません。<br />&rarr;インベントリ収集ツールを導入する<br />プリンタ等、コンピュータではない場合&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「ハードウェア種別」を変更する</a><br />コンピュータだがインベントリ収集ツールを導入することが不可能な場合&rarr;USBツールで情報を収集する');
INSERT INTO errmsg VALUES ('0253', '「申請者所属」を選択してください。');
INSERT INTO errmsg VALUES ('0328', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。<br />現在使用していない場合&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を変更する</a><br />事務系ネットワーク&rarr;スクールネットに接続していたが、しばらく接続していなかった場合&rarr;情報取得とウイルス対策ソフトのパターン更新のため、ネットワークに接続した状態でコンピュータを起動してください<br />使用者がソフトウェア追加導入や削除を全くできないようにしている場合&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「使用者によるソフトウェア追加導入・削除を変更する</a>');
INSERT INTO errmsg VALUES ('0329', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。<br />&rarr;USBメモリツールを実行する<br />現在使用していない場合&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を変更する</a><br />使用者がソフトウェア追加導入や削除を全くできないようにしている場合&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「使用者によるソフトウェア追加導入・削除」を変更する</a>');
INSERT INTO errmsg VALUES ('0330', 'IPアドレス%sの機器の情報が%s日以上取得できていません。<br />&rarr;ネットワークに接続する<br />現用していない、またはネットワークに接続して使用していない場合&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を変更する</a>');
INSERT INTO errmsg VALUES ('0583', '%s行目の「ライセンス管理番号」は、「ハードウェア管理番号」に紐づくハードウェア台帳の管理所属と整合性がない為、処理ができません。');
INSERT INTO errmsg VALUES ('0215', '「導入可能数」を記載してください。');
INSERT INTO errmsg VALUES ('0535', '「使用数」の合計が「導入可能数」を超えています。');
INSERT INTO errmsg VALUES ('0512', '「種類（辞）」で「バンドル」を選択した場合、「バンドル製品名」を入力してください。');
INSERT INTO errmsg VALUES ('0591', '%s行目の「管理所属コード」は組織テーブルに存在しません。');
INSERT INTO errmsg VALUES ('0331', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。<br />&rarr;ネットワークに接続する<br />現用していない、またはネットワークに接続して使用していない場合&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を変更する</a>');
INSERT INTO errmsg VALUES ('0536', '「導入可能数」は１以上の数字を入力して下さい。');
INSERT INTO errmsg VALUES ('0544', 'ライセンス台帳のインポート時には、必ず管理所属の情報が台帳情報の先頭でないと、インポートできません。');
INSERT INTO errmsg VALUES ('0327', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。<br />&rarr;USBメモリツールを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO errmsg VALUES ('0586', '複製元媒体管理番号は必須です。ライセンス媒体から選択してください。');
INSERT INTO errmsg VALUES ('0532', '半角英数字と「 . (ドット)」、「 _ (アンダーバー)」「 - (ハイフン)」で入力してください');
INSERT INTO errmsg VALUES ('0513', '「バンドル製品名」を入力する場合は、「種類（辞）」で「バンドル」を選択してください。');
INSERT INTO errmsg VALUES ('0307', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとアップグレードライセンスの導入可能数が一致しません。これらは同数である必要があります。導入可能数のうちの一部のみアップグレードするときは、あらかじめアップグレード元ライセンスをアップグレード元とそうでないものに分割してください。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳でアップグレード元ライセンスの「導入可能数」を変更する</a><br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳でアップグレードライセンスの「導入可能数」を変更する</a>');
INSERT INTO errmsg VALUES ('0244', '「ライセンス保有証明に必要な部材」を記載してください。使用許諾条件を読み、導入及び使用について何の条件も付されていない（台数制限ももちろんない）ことが確認できた場合は「なし」と記載してください。');
INSERT INTO errmsg VALUES ('0545', '台帳への登録済件数とインポートデータ内での更新データの件数に差異があります。');
INSERT INTO errmsg VALUES ('0103', '承認前に他の申請及び承認が行われたため台帳を更新できません。この申請は却下し、必要であれば新たに申請し直してください。');
INSERT INTO errmsg VALUES ('0051', '承認前に他の申請及び承認が行われたため台帳を更新できません。必要であれば、再度一覧から操作をやり直してください。');
INSERT INTO errmsg VALUES ('0012', '%s件目の%s列目がエラーのためインポートに失敗しました。インポートをやり直してください。');
INSERT INTO errmsg VALUES ('0021', 'インポートの処理が混み合っているため、しばらく時間をおいてから再度実行してください。');
INSERT INTO errmsg VALUES ('0020', '1ユーザーが同時に複数のファイルをインポートすることは出来ません。1ファイルずつインポート完了を確認した後に次のファイルのインポートを行ってください。');
INSERT INTO errmsg VALUES ('0019', 'ファイルサイズが制限を越えています。1Mバイト以内にしてください。');
INSERT INTO errmsg VALUES ('0224', 'アップグレード元ライセンスとアップグレードライセンスのインストール可能数が一致しません。');
INSERT INTO errmsg VALUES ('0574', 'エクセル形式のファイルが選択されておりません。');
INSERT INTO errmsg VALUES ('0022', '入力形式が間違っています。yyyy/mm/dd HH:iiの形式で入力してください');
INSERT INTO errmsg VALUES ('0104', '「承認・却下日」が「申請日」より前の日時です。');
INSERT INTO errmsg VALUES ('0501', '「許可区分」を選択してください。');
INSERT INTO errmsg VALUES ('0246', '「%s」が未選択です。不明な場合はこのまま登録できますが、インストール後、「%s」での表示内容を確認し、更新申請を行ってください。');
INSERT INTO errmsg VALUES ('0546', '台帳への登録済バージョン情報とインポート内でのバージョン情報に差異があります。');
INSERT INTO errmsg VALUES ('0531', '変更されたハードウェア管理番号「%s」は、既に当該のライセンス情報が登録されている為変更できません。');
INSERT INTO errmsg VALUES ('0503', '%s行目の「現管理者名」を記載してください。');
INSERT INTO errmsg VALUES ('0504', '%s行目の「区分」を記載してください。');
INSERT INTO errmsg VALUES ('0505', '%s行目の「保管場所」を記載してください。');
INSERT INTO errmsg VALUES ('0204', '「管理所属」が自所属以外の所属となっています。承認された後は、該当所属のユーザー以外は修正できません。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0507', '%s行目の「貸出理由」を記載してください。');
INSERT INTO errmsg VALUES ('0508', '%s行目の「連絡先番号」を記載してください。');
INSERT INTO errmsg VALUES ('0509', '%s行目の「貸与日」を記載してください。');
INSERT INTO errmsg VALUES ('0510', '%s行目の「返却予定日」を記載してください。');
INSERT INTO errmsg VALUES ('0017', '半角数字で入力してください');
INSERT INTO errmsg VALUES ('0265', '「種類（辞）」が「未確認」です。適切な種類（辞）を選択してください。');
INSERT INTO errmsg VALUES ('0511', '禁止ソフトウェアの齟齬が発生しています。早急にご確認ください。');
INSERT INTO errmsg VALUES ('0579', '%s行目の「導入または削除日」を記載してください。');
INSERT INTO errmsg VALUES ('0580', '%s行目の「管理所属コード」を記載してください。');
INSERT INTO errmsg VALUES ('0519', '「使用特例承認所属」を選択してください。');
INSERT INTO errmsg VALUES ('0520', '「禁止ソフトウェア名」は１００文字以内で入力してください。');
INSERT INTO errmsg VALUES ('0518', '「禁止ソフトウェア名」は必須入力です。入力してください。');
INSERT INTO errmsg VALUES ('0581', 'インポート件数が0件です。');
INSERT INTO errmsg VALUES ('0523', '%s行目の「ライセンス管理番号」を記載してください。');
INSERT INTO errmsg VALUES ('0525', '%s行目の「ライセンス管理番号」と「管理所属コード」に紐づくライセンスが存在しません。');
INSERT INTO errmsg VALUES ('0592', '%s のライセンスが %s 件 インストールされたままの状態の為、移管を実行できません。利用している所属へ確認を行って下さい。');
INSERT INTO errmsg VALUES ('0585', '申請時の数量と配布するハードウェアの数が一致しません。');
INSERT INTO errmsg VALUES ('0593', '「管理所属」が変更されていません。');
INSERT INTO errmsg VALUES ('0594', '「廃棄予定日」が入力されていません。');
INSERT INTO errmsg VALUES ('0259', 'ハードウェア台帳の「管理所属」と収集情報の「所属」が異なっています。ハードウェアを他所属に移管する場合は、資産情報取得ツールで入力した所属を変更してください');
INSERT INTO errmsg VALUES ('0203', '「所属」を選択してください。');
INSERT INTO errmsg VALUES ('0308', 'ライセンス管理番号%sにおいて指定された所属が存在しません。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「管理所属」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0533', '重複している「使用所属」があります。「使用所属」を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0534', '未入力の「使用数」があります。「使用数」を記載してください。');
INSERT INTO errmsg VALUES ('0326', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。<br />&rarr;インストールプログラムを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO errmsg VALUES ('0539', 'インポート可能なデータがありません。');
INSERT INTO errmsg VALUES ('0522', '%s行目の「ハードウェア管理番号」を記載してください。');
INSERT INTO errmsg VALUES ('0206', '「ハードウェア管理番号」を記載してください。');
INSERT INTO errmsg VALUES ('0231', 'ハードウェア管理番号を選択してください。');
INSERT INTO errmsg VALUES ('0540', '管理所属を変えることは出来ません。');
INSERT INTO errmsg VALUES ('0541', '%s行目 管理所属のみ媒体をインポートできます。');
INSERT INTO errmsg VALUES ('0310', 'ライセンス管理番号%sがライセンス台帳に複数あります。<br />&rarr;<a href="license.php?search_col1=002&search_value1=%s&search_comp1=002&search_cd1=001">ライセンス台帳でライセンス管理番号%sを確認し、</a>修正する');
INSERT INTO errmsg VALUES ('0333', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずソフトウェア台帳に記載されていません。<br />&rarr;<a href="software.php?action=app_reg&hard_kanrino=%s">ソフトウェア台帳に記載する</a>');
INSERT INTO errmsg VALUES ('0514', '「種類（辞）」が「ボリュームライセンス」の場合は「媒体数」が必須です。');
INSERT INTO errmsg VALUES ('0257', '「廃棄日」が記載されています。ハードウェアを廃棄する際は、ハードウェアに導入されている全てのソフトウェアについて削除処理が必要です。先に、ソフトウェア台帳における該当ハードウェアの全てのソフトウェアについて「廃棄日」を記載してください。');
INSERT INTO errmsg VALUES ('0515', '「種類（辞）」が「ボリュームライセンス」以外の場合は「調達数」が必須です。');
INSERT INTO errmsg VALUES ('0516', '「種類（辞）」が「ボリュームライセンス」の場合は「媒体数」を入力し「調達数」は入力しないで下さい。');
INSERT INTO errmsg VALUES ('0321', 'コンピュータ名%s、IPアドレス%sの機器から取得された「ハードウェア管理番号」がハードウェア台帳に記載されていません。<br />&rarr;<a href="hardware.php?action=app_reg">ハードウェア台帳に新しいハードウェアを記載する</a>');
INSERT INTO errmsg VALUES ('0311', 'ソフトウェア台帳において指定されたハードウェアが存在しません。<br />&rarr;<a href="software.php?action=app_edit&code=%s">ソフトウェア台帳で「ハードウェア管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0322', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器は取得情報において廃棄済みとなっていませんが、ハードウェア台帳では廃棄済みとなっています。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を変更する</a><br />&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」を削除する</a>');
INSERT INTO errmsg VALUES ('0521', 'ライセンス管理番号は必須です。ライセンス台帳から選択してください。');
INSERT INTO errmsg VALUES ('0527', '%s行目の「ライセンス管理番号」はライセンス台帳において廃棄済みです。');
INSERT INTO errmsg VALUES ('0234', 'ライセンス管理番号「%s」のライセンスはアップグレード版です。アップグレード版のライセンスを利用するときは、あらかじめライセンス台帳においてアップグレード元となるライセンスを選択しておく必要があります。');
INSERT INTO errmsg VALUES ('0543', '「使用数」が０になっている使用所属があります。<br />\n「使用数」を０する際は、使用所属のライセンスに基づく全てのソフトウェアについて削除処理が必要です。');
INSERT INTO errmsg VALUES ('0235', 'ライセンス管理番号「%s」のライセンスはアップグレード版ですが、アップグレード元として選択されたライセンスが存在しません。ライセンス台帳においてアップグレード元となるライセンスを選択し直してください。');
INSERT INTO errmsg VALUES ('0236', 'ライセンス管理番号「%s」のライセンスはアップグレード版ですが、アップグレード元として選択されているライセンスは廃棄済みであり利用できません。ライセンス台帳においてアップグレード元となるライセンスを選択し直してください。');
INSERT INTO errmsg VALUES ('0517', '「種類（辞）」が「ボリュームライセンス」以外の場合は「調達数」を入力し「媒体数」は入力しないで下さい。');
INSERT INTO errmsg VALUES ('0528', '調達区分が「追加」の場合、「種類（辞）」はボリュームライセンスを選択してください。');
INSERT INTO errmsg VALUES ('0595', '%s のライセンスが %s 件 インストールされたままの状態の為、廃棄を実行できません。利用している所属へ確認を行って下さい。');
INSERT INTO errmsg VALUES ('0542', '%s件目 保有数(導入可能数)を「0」で登録することはできません。');
INSERT INTO errmsg VALUES ('0597', '%s件目 記載された新規登録の「ライセンス管理番号」はCSV内の%s件目と重複しています。ライセンス管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0256', '「廃棄日」が記載されています。ハードウェアを廃棄する際は、そのハードウェアにのみ利用可能なプリインストールのライセンスについても廃棄処理が必要です。先に、ライセンス台帳における該当ハードウェアを固定先ハードウェアとする全てのライセンスについて「廃棄日」を記載してください。');
INSERT INTO errmsg VALUES ('0312', 'ソフトウェア台帳において指定されたライセンスが存在しません。<br />&rarr;<a href="software.php?action=app_edit&code=%s">ソフトウェア台帳で「ライセンス管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0258', '「廃棄日」が記載されています。ライセンスを廃棄する際は、ライセンスに基づく全てのソフトウェアについて削除処理が必要です。先に、ライセンスに基づくソフトウェアをアンインストールするとともに、ライセンス台帳における該当ライセンスの全てのソフトウェアについて「廃棄日」を記載してください。');
INSERT INTO errmsg VALUES ('0587', 'ライセンス管理番号がライセンス台帳に存在しません。ライセンス台帳から選択してください。');
INSERT INTO errmsg VALUES ('0588', '複製元媒体管理番号がライセンス媒体に存在しません。ライセンス媒体から選択してください。');
INSERT INTO errmsg VALUES ('0317', 'ハードウェア管理番号%sがハードウェア台帳に複数あります。<br />&rarr;<a href="hardware.php?search_col1=002&search_value1=%s&search_comp1=002&search_cd1=001">ハードウェア台帳でハードウェア管理番号%sを確認</a>し、修正する');
INSERT INTO errmsg VALUES ('0596', '「調達日」が空欄のままです。どうしても分からない場合以外はこれらの欄を記載してください。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0302', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが廃棄済みです。導入できるハードウェアが固定されているライセンス（プリインストールのライセンス）は、ハードウェアと同時に廃棄する必要があります。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「廃棄日」を記載する</a>');
INSERT INTO errmsg VALUES ('0303', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが存在しません。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0304', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが廃棄済みであり利用できません。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0305', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスがアップグレード版です。アップグレード版はアップグレード元ライセンスにできません。<br />&rarr;<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0314', 'ハードウェア管理番号%sのハードウェアが廃棄済みですので導入されているソフトウェアも削除済みとする必要があります。「アンインストール日」を記載する際は日付の整合性に注意してください。<br />&rarr;<a href="software.php?action=app_edit&code=%s">ソフトウェア台帳で「アンインストール日」を記載する</a>');
INSERT INTO errmsg VALUES ('0332', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずライセンス台帳に記載されていません。<br />&rarr;<a href="license.php?action=app_reg">ライセンス台帳に記載する</a>');
INSERT INTO errmsg VALUES ('0210', '記載された「ハードウェア管理番号」は既に登録されています。ハードウェア管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0323', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器の「所属」が取得情報とハードウェア台帳とで一致しません。<br />&rarr;<a href="inventory.php?action=edit&code=%s">取得情報の「所属」を変更する</a><br />&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「管理所属」を変更する</a>');
INSERT INTO errmsg VALUES ('0209', '「調達情報」または「調達日」が空欄のままです。どうしても分からない場合以外はこれらの欄を記載してください。このまま申請してよろしいですか。');
INSERT INTO errmsg VALUES ('0549', '%s列目の%s件目と%s件目の項目が重複しています。');
INSERT INTO errmsg VALUES ('0335', 'ライセンス名%s、種類（辞）%s、ハードウェア固定%s、アップグレード版%sの同じ組み合わせがシステム一覧表に複数あります。<br />&rarr;<a href=""license_list.php?action=app_edit&code=%s"">ライセンス辞書で確認</a>し、修正する');
INSERT INTO errmsg VALUES ('0565', 'ライセンス管理番号に空きがありません。システム管理者に連絡してください。');
INSERT INTO errmsg VALUES ('0566', '%s件目 ハードウェア管理番号を変更することは出来ません。');
INSERT INTO errmsg VALUES ('0261', '新規申請、または変更前が「未確認」である場合を除き「種類（辞）」を変更することはできません。ライセンス辞書は全所属で共有しており、全所属に影響を及ぼしかねないためです。「種類（辞）」が正しくないと考えられる場合は、業務プロセス改革課にご連絡をお願いします。確認後変更します。');
INSERT INTO errmsg VALUES ('0558', '%s件目 記載された「ハードウェア管理番号」は既に登録されています。ハードウェア管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0569', '入力形式が間違っています。yy-mm-ddの形式で入力してください');
INSERT INTO errmsg VALUES ('0570', '%s件目 記載された「ライセンス管理番号」は既に登録されています。ライセンス管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0567', '「MACアドレス」は半角数字0～9、半角英字A～F(大文字)の12桁で入力してください。');
INSERT INTO errmsg VALUES ('0309', 'ライセンス管理番号%sにおいて指定されたライセンスがライセンス辞書に存在しません。<br />&rarr;<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳で「ライセンス名」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0571', '%s件目 ライセンス媒体管理番号を変更することは出来ません。');
INSERT INTO errmsg VALUES ('0589', '「管理所属」が変更されていません。');
INSERT INTO errmsg VALUES ('0559', '管理所属に登録されている所属コードと選択された情報システムの所属コードが一致しません。');
INSERT INTO errmsg VALUES ('0560', '管理所属に登録されている所属コードと選択された設置場所の所属コードが一致しません。');
INSERT INTO errmsg VALUES ('0547', '%s件目 管理所属に登録されている所属コードと情報システムコードに登録されている所属コードが一致しません。');
INSERT INTO errmsg VALUES ('0548', '%s件目 管理所属に登録されている所属コードと設置場所コードに登録されている所属コードが一致しません。');
INSERT INTO errmsg VALUES ('0561', '%s行目の「貸出場所」を記載してください。');
INSERT INTO errmsg VALUES ('0562', '%s行目の「備考」を記載してください。');
INSERT INTO errmsg VALUES ('0524', '%s行目の「ハードウェア管理番号」がハードウェア台帳に存在しません。');
INSERT INTO errmsg VALUES ('0526', '%s行目の「ハードウェア管理番号」はハードウェア台帳において廃棄済みです。');
INSERT INTO errmsg VALUES ('0568', '%s行目の「セット枚数」を記載してください。');
INSERT INTO errmsg VALUES ('0313', 'ハードウェアの所属とハードウェアに導入されているソフトウェアのライセンスの所属に整合性がありません。<br />&rarr;<a href=""hardware.php?action=app_edit&code=%s"">ハードウェア台帳で「管理所属」を選択し直す</a><br />&rarr;<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳で「所属」を選択し直す</a><br />ソフトウェアをハードウェアから削除し、&rarr;<a href=""software.php?action=app_edit&code=%s"">ソフトウェア台帳で「アンインストール日」を記載する</a>');
INSERT INTO errmsg VALUES ('0260', '「ライセンス名」を変更しようとしています。ライセンス辞書は全所属で共有しているため、この操作は全所属に影響を及ぼします。このソフトウェアを使用している全ての所属のライセンス台帳及びソフトウェア台帳上のライセンス名が変わることになります。今までと違うライセンスに書き換えようとしている場合は、直ちに中止してください。');
INSERT INTO errmsg VALUES ('0306', 'ライセンス管理番号%sの導入可能数は%sですが、それを上回る数のハードウェアにソフトウェアが導入されています。<br />&rarr;<a href=""software.php?search_col1=004&search_value1=%s&search_comp1=001&search_cd1=001"">ソフトウェア台帳で「ライセンス管理番号」を選択し直す</a><br />&rarr;<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳で「導入可能数」を変更する</a>');
INSERT INTO errmsg VALUES ('0557', '「アンインストール日」が入力されているソフトウェアは「アンインストール日」を未入力にはできません。');
INSERT INTO errmsg VALUES ('0216', '「プロダクトキーまたはライセンス証書番号」を記載してください。プロダクトキーまたはライセンス証書番号がないライセンスの場合は「なし」と記載してください。');
INSERT INTO errmsg VALUES ('0563', '%s件目 ライセンス管理番号を変更することは出来ません。');
INSERT INTO errmsg VALUES ('0598', '%s件目 記載された新規登録の「ライセンス媒体管理番号」はCSV内の%s件目と重複しています。ライセンス媒体管理番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0537', '%s行目の「管理所属ライセンス内部キー」が未入力です。');
INSERT INTO errmsg VALUES ('0538', '%s行目の使用所属内部キーと管理所属内部キーが一致しません。');
INSERT INTO errmsg VALUES ('0262', '新規申請を除き、「ハードウェア固定」を変更することはできません。ライセンス辞書は全所属で共有しており、全所属に影響を及ぼしかねないためです。「ハードウェア固定」が正しくないと考えられる場合は、業務プロセス改革課にご連絡をお願いします。確認後変更します。');
INSERT INTO errmsg VALUES ('0263', '新規申請を除き、「アップグレード版」を変更することはできません。ライセンス辞書は全所属で共有しており、全所属に影響を及ぼしかねないためです。「アップグレード版」が正しくないと考えられる場合は、業務プロセス改革課にご連絡をお願いします。確認後変更します。');
INSERT INTO errmsg VALUES ('0264', '「%s」をの一部または全部を削除することはできません。ライセンス辞書は全所属で共有しており、全所属に影響を及ぼしかねないためです。「%s」の一部または全部が不要と考えられる場合は、業務プロセス改革課にご連絡をお願いします。確認後削除します。');
INSERT INTO errmsg VALUES ('0241', '「ハードウェア固定」を選択してください。');
INSERT INTO errmsg VALUES ('0584', 'ライセンス管理番号「%s」がハードウェア固定にも関わらずライセンスシェアされています、管理者にご確認ください。');
INSERT INTO errmsg VALUES ('0582', '%s行目の「ハードウェア管理番号」は、紐づくハードウェア台帳の管理所属と自所属の整合性がない為、処理ができません。');
INSERT INTO errmsg VALUES ('0334', 'ハードウェア管理番号%sが収集情報に複数あります。<br />&rarr;<a href="inventory.php?action=edit&code=%s">収集情報でハードウェア管理番号%sを確認</a>し、間違った方のハードウェアでインベントリ収集ツールを再インストールまたはUSBメモリツールを再実行しハードウェア管理番号を再入力する');
INSERT INTO errmsg VALUES ('0316', 'ハードウェア管理番号%sにおいて指定された所属が存在しません。<br />&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳で「管理所属」を選択し直す</a>');
INSERT INTO errmsg VALUES ('0315', 'ハードウェア管理番号%sのハードウェアにおいて、ハードウェアの廃棄日よりソフトウェアのアンインストール日が後の日付になっています。<br />&rarr;<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」を変更する</a><br />&rarr;<a href="software.php?action=app_edit&code=%s">ソフトウェア台帳の「アンインストール日」を変更する</a>');
INSERT INTO errmsg VALUES ('0599', '記載された「プロダクトキーまたはライセンス証書番号」は既に登録されています。プロダクトキーまたはライセンス証書番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0600', '%s行目の「プロダクトキーまたはライセンス証書番号」は既に登録されています。プロダクトキーまたはライセンス証書番号を重複登録することはできません。');
INSERT INTO errmsg VALUES ('0213', '「ライセンス辞書」が選択されていません。');
INSERT INTO errmsg VALUES ('0217', '「ライセンス保有部材」を記載してください。');
INSERT INTO errmsg VALUES ('0220', '「ハードウェア固定」が「該当」となっているものは、プリインストールなどの、特定のハードウェアにのみ導入可能なライセンスです。どのハードウェアにのみインストール可能か「固定先ハードウェア管理番号」を記載してください。');


--
-- Data for Name: info_system_code; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO info_system_code VALUES (1, '00001', '組織基幹システム', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (2, '00002', '防災ネットワーク', '独自ネットワーク', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (3, '00003', '気象情報サービス', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (4, '00004', '情報ネット', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (5, '00005', '警報システム', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (6, '00006', '防災システム', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (7, '00007', '無線システム', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (8, '00008', '財務会計システム', '基幹系', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (9, '00009', 'イントラネット', 'イントラ', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO info_system_code VALUES (10, '00010', '交通経理システム', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: inventorydate; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO inventorydate VALUES (1, 'インベントリ収集情報', NULL, NULL);
INSERT INTO inventorydate VALUES (2, 'インベントリ収集ツールソフトウェア', NULL, NULL);
INSERT INTO inventorydate VALUES (3, 'USBメモリツール収集情報', NULL, NULL);
INSERT INTO inventorydate VALUES (4, '不正接続検知情報1', NULL, NULL);
INSERT INTO inventorydate VALUES (5, '不正接続検知情報2', NULL, NULL);
INSERT INTO inventorydate VALUES (6, '齟齬チェック', NULL, NULL);


--
-- Data for Name: location; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO location VALUES (0, '広島', 'サポートダイヤル', '-', '-', '10', '100', '0', 0);
INSERT INTO location VALUES (1, '広島', '県庁舎本館', '1階', '東側（ロビーが境目）', '10', '100', '10', 1);
INSERT INTO location VALUES (2, '広島', '県庁舎本館', '1階', '西側（ロビーが境目）', '10', '100', '20', 1);
INSERT INTO location VALUES (3, '広島', '県庁舎本館', '2階', '西側（エレベーターホールが境目）', '10', '100', '30', 1);
INSERT INTO location VALUES (4, '広島', '県庁舎本館', '2階', '中央側（エレベーターホールが境目）', '10', '100', '40', 1);
INSERT INTO location VALUES (5, '広島', '県庁舎本館', '2階', '東側（エレベーターホールが境目）', '10', '100', '50', 1);
INSERT INTO location VALUES (6, '広島', '県庁舎本館', '3階', '西側（エレベーターホールが境目）', '10', '100', '60', 1);
INSERT INTO location VALUES (7, '広島', '県庁舎本館', '3階', '中央側（エレベーターホールが境目）', '10', '100', '70', 1);
INSERT INTO location VALUES (8, '広島', '県庁舎本館', '3階', '東側（エレベーターホールが境目）', '10', '100', '80', 1);
INSERT INTO location VALUES (9, '広島', '県庁舎本館', '4階', '西側（エレベーターホールが境目）', '10', '100', '90', 1);
INSERT INTO location VALUES (10, '広島', '県庁舎本館', '4階', '中央側（エレベーターホールが境目）', '10', '100', '100', 1);
INSERT INTO location VALUES (11, '広島', '県庁舎本館', '4階', '東側（エレベーターホールが境目）', '10', '100', '110', 1);
INSERT INTO location VALUES (12, '広島', '県庁舎本館', '5階', '西側（エレベーターホールが境目）', '10', '100', '120', 1);
INSERT INTO location VALUES (13, '広島', '県庁舎本館', '5階', '中央側（エレベーターホールが境目）', '10', '100', '130', 1);
INSERT INTO location VALUES (14, '広島', '県庁舎本館', '5階', '東側（エレベーターホールが境目）', '10', '100', '140', 1);
INSERT INTO location VALUES (15, '広島', '県庁舎本館', '6階', '西側（エレベーターホールが境目）', '10', '100', '150', 1);
INSERT INTO location VALUES (16, '広島', '県庁舎本館', '6階', '中央側（エレベーターホールが境目）', '10', '100', '160', 1);
INSERT INTO location VALUES (17, '広島', '県庁舎本館', '6階', '東側（エレベーターホールが境目）', '10', '100', '170', 1);
INSERT INTO location VALUES (18, '広島', '県庁舎南館', '1階', '-', '10', '200', '180', 1);
INSERT INTO location VALUES (19, '広島', '県庁舎南館', '2階', '西側', '10', '200', '190', 1);
INSERT INTO location VALUES (20, '広島', '県庁舎南館', '2階', '東側(地域政策局長室西が境目)', '10', '200', '200', 1);
INSERT INTO location VALUES (21, '広島', '県庁舎南館', '3階', '西側', '10', '200', '210', 1);
INSERT INTO location VALUES (22, '広島', '県庁舎南館', '3階', '東側(環境県民局長室西が境目)', '10', '200', '220', 1);
INSERT INTO location VALUES (23, '広島', '県庁舎南館', '4階', '-', '10', '200', '230', 1);
INSERT INTO location VALUES (24, '広島', '県庁舎北館', '1階', '-', '10', '300', '240', 1);
INSERT INTO location VALUES (25, '広島', '県庁舎北館', '2階', '-', '10', '300', '250', 1);
INSERT INTO location VALUES (26, '広島', '県庁舎北館', '3階', '-', '10', '300', '260', 1);
INSERT INTO location VALUES (27, '広島', '県庁舎北館', '4階', '-', '10', '300', '270', 1);
INSERT INTO location VALUES (28, '広島', '県庁舎北館', '5階', '南西側以外', '10', '300', '280', 1);
INSERT INTO location VALUES (29, '広島', '県庁舎北館', '5階', '南西側(砂防課，収用委員会室)', '10', '300', '290', 1);
INSERT INTO location VALUES (30, '広島', '県庁舎北館', '6階', '-', '10', '300', '300', 1);
INSERT INTO location VALUES (31, '広島', '県庁舎東館', '1階', '-', '10', '400', '310', 1);
INSERT INTO location VALUES (32, '広島', '県庁舎東館', '2階', '-', '10', '400', '320', 1);
INSERT INTO location VALUES (33, '広島', '県庁舎東館', '3階', '-', '10', '400', '330', 1);
INSERT INTO location VALUES (34, '広島', '県庁舎東館', '4階', '-', '10', '400', '340', 1);
INSERT INTO location VALUES (35, '広島', '県庁舎東館', '5階', '-', '10', '400', '350', 1);
INSERT INTO location VALUES (36, '広島', '県庁舎東館', '6階', '-', '10', '400', '360', 1);
INSERT INTO location VALUES (37, '広島', '県庁舎東館', '7階', '-', '10', '400', '370', 1);
INSERT INTO location VALUES (38, '広島', '県庁舎東館', '8階', '-', '10', '400', '380', 1);
INSERT INTO location VALUES (39, '広島', '県庁舎県税庁舎', '1階', '-', '10', '500', '390', 1);
INSERT INTO location VALUES (40, '広島', '県庁舎県税庁舎', '2階', '-', '10', '500', '400', 1);
INSERT INTO location VALUES (41, '広島', '県庁舎県税庁舎', '2階', '北西側', '10', '500', '410', 1);
INSERT INTO location VALUES (42, '広島', '県庁舎県税庁舎', '3階', '-', '10', '500', '420', 1);
INSERT INTO location VALUES (43, '広島', '県庁舎農林庁舎', '1階', '-', '10', '600', '430', 1);
INSERT INTO location VALUES (44, '広島', '県庁舎農林庁舎', '2階', '-', '10', '600', '440', 1);
INSERT INTO location VALUES (45, '広島', '県庁舎農林庁舎', '3階', '-', '10', '600', '450', 1);
INSERT INTO location VALUES (46, '広島', '県庁舎農林庁舎', '4階', '-', '10', '600', '460', 1);
INSERT INTO location VALUES (47, '広島', '県庁舎農林庁舎', '5階', '-', '10', '600', '470', 1);
INSERT INTO location VALUES (48, '広島', '県庁舎議会棟', '1階', '-', '10', '700', '480', 1);
INSERT INTO location VALUES (49, '広島', '県庁舎議会棟', '2階', '-', '10', '700', '490', 1);
INSERT INTO location VALUES (50, '広島', '県庁舎議会棟', '3階', '-', '10', '700', '500', 1);
INSERT INTO location VALUES (51, '広島', '広島県警　別館', '-', '-', '11', '410', '510', 1);
INSERT INTO location VALUES (52, '広島', '県庁舎東館', '12階', '-', '11', '410', '520', 1);
INSERT INTO location VALUES (53, '広島', '県庁舎東館', '13階', '-', '11', '410', '530', 1);
INSERT INTO location VALUES (54, '広島', '県庁舎東館', '14階', '-', '11', '410', '540', 1);
INSERT INTO location VALUES (55, '広島', '県庁舎東館', '15階', '-', '11', '410', '550', 1);
INSERT INTO location VALUES (56, '広島', '県庁舎東館', '16階', '-', '11', '410', '560', 1);
INSERT INTO location VALUES (57, '広島', '西部県税事務所（観音庁舎）', '-', '-', '20', '800', '570', 1);
INSERT INTO location VALUES (58, '広島', '消防学校', '-', '-', '20', '810', '580', 1);
INSERT INTO location VALUES (59, '広島', '保健環境センター', '-', '-', '20', '820', '590', 1);
INSERT INTO location VALUES (60, '広島', '県立広島病院', 'その他(北舘，管理棟，緩和ケアセンター以外)', '-', '20', '830', '600', 1);
INSERT INTO location VALUES (61, '広島', '県立広島病院', '北舘，管理棟，緩和ケアセンター', '-', '20', '830', '610', 1);
INSERT INTO location VALUES (62, '広島', '西部こども家庭センター', '-', '-', '20', '840', '620', 1);
INSERT INTO location VALUES (63, '広島', '県立総合精神保健福祉センター', '-', '-', '20', '850', '630', 1);
INSERT INTO location VALUES (64, '広島', '県立食品工業技術センター', '-', '-', '20', '860', '640', 1);
INSERT INTO location VALUES (65, '広島', '県立広島高等技術専門校', '-', '-', '20', '870', '650', 1);
INSERT INTO location VALUES (66, '広島', '広島障害者職業能力開発校', '-', '-', '20', '880', '660', 1);
INSERT INTO location VALUES (67, '広島', '水産課（江波分室）', '-', '-', '20', '890', '670', 1);
INSERT INTO location VALUES (68, '広島', '西部建設事務所（比治山庁舎）', '1階', '-', '20', '900', '680', 1);
INSERT INTO location VALUES (69, '広島', '西部建設事務所（比治山庁舎）', '2階', '-', '20', '900', '690', 1);
INSERT INTO location VALUES (70, '広島', '西部建設事務所（比治山庁舎）', '3階', '-', '20', '900', '700', 1);
INSERT INTO location VALUES (71, '広島', '魚切ダム管理事務所', '-', '-', '20', '910', '710', 1);
INSERT INTO location VALUES (72, '広島', '西部建設事務所安芸太田支所', '-', '-', '20', '920', '720', 1);
INSERT INTO location VALUES (73, '広島', '広島港湾振興事務所', '-', '-', '20', '930', '730', 1);
INSERT INTO location VALUES (74, '広島', '広島地域事務所建設局　梶毛ダム管理事務所', '-', '-', '20', '940', '740', 1);
INSERT INTO location VALUES (75, '広島', '広島水道事務所・水質管理センター', '-', '-', '20', '950', '750', 1);
INSERT INTO location VALUES (76, '広島', '広島水道事務所戸坂取水課', '-', '-', '20', '960', '760', 1);
INSERT INTO location VALUES (77, '広島', '広島水道事務所戸坂取水課温品浄水場', '-', '-', '20', '970', '770', 1);
INSERT INTO location VALUES (78, '広島', '西部教育事務所芸北支所', '-', '-', '20', '980', '780', 1);
INSERT INTO location VALUES (79, '広島', '縮景園', '-', '-', '20', '990', '790', 1);
INSERT INTO location VALUES (80, '広島', '図書館・文書館・生涯学習センター', '-', '-', '20', '1000', '800', 1);
INSERT INTO location VALUES (81, '広島', '美術館', '-', '-', '20', '1010', '810', 1);
INSERT INTO location VALUES (82, '広島', '自治総合研修センター', '-', '-', '20', '1020', '820', 1);
INSERT INTO location VALUES (83, '広島', '西部事務所廿日市庁舎第一庁舎', '1階', '-', '30', '1030', '830', 1);
INSERT INTO location VALUES (84, '広島', '西部事務所廿日市庁舎第一庁舎', '2階', '-', '30', '1030', '840', 1);
INSERT INTO location VALUES (85, '広島', '西部事務所廿日市庁舎第一庁舎', '3階', '-', '30', '1030', '850', 1);
INSERT INTO location VALUES (86, '広島', '西部事務所廿日市庁舎第一庁舎', '4階', '-', '30', '1030', '860', 1);
INSERT INTO location VALUES (87, '広島', '西部事務所廿日市庁舎第二庁舎', '1階', '-', '30', '1040', '870', 1);
INSERT INTO location VALUES (88, '広島', '西部事務所廿日市庁舎第二庁舎', '2階・食堂棟', '-', '30', '1040', '880', 1);
INSERT INTO location VALUES (89, '広島', '西部事務所廿日市庁舎第二庁舎', '3階', '-', '30', '1040', '890', 1);
INSERT INTO location VALUES (90, '広島', '西部事務所廿日市庁舎第二庁舎', '4階', '-', '30', '1040', '900', 1);
INSERT INTO location VALUES (91, '広島', '小瀬川ダム管理事務所', '-', '-', '30', '1050', '910', 1);
INSERT INTO location VALUES (92, '呉', '西部事務所呉庁舎本庁舎本館', '2階', '-', '40', '1060', '920', 1);
INSERT INTO location VALUES (93, '呉', '西部事務所呉庁舎本庁舎本館', '3階', '-', '40', '1060', '930', 1);
INSERT INTO location VALUES (94, '呉', '西部事務所呉庁舎本庁舎本館', '4階', '-', '40', '1060', '940', 1);
INSERT INTO location VALUES (95, '呉', '西部事務所呉庁舎本庁舎東館', '10階', '-', '40', '1070', '950', 1);
INSERT INTO location VALUES (96, '呉', '西部事務所呉庁舎本庁舎東館', '11階', '-', '40', '1070', '960', 1);
INSERT INTO location VALUES (97, '呉', '西部事務所呉庁舎本庁舎東館', '1階', '-', '40', '1070', '970', 1);
INSERT INTO location VALUES (98, '呉', '西部事務所呉庁舎本庁舎東館', '2階', '-', '40', '1070', '980', 1);
INSERT INTO location VALUES (99, '呉', '西部事務所呉庁舎本庁舎東館', '3階', '-', '40', '1070', '990', 1);
INSERT INTO location VALUES (100, '呉', '西部事務所呉庁舎本庁舎東館', '4階', '-', '40', '1070', '1000', 1);
INSERT INTO location VALUES (101, '呉', '西部事務所呉庁舎本庁舎東館', '5階', '-', '40', '1070', '1010', 1);
INSERT INTO location VALUES (102, '呉', '西部事務所呉庁舎本庁舎東館', '6階', '-', '40', '1070', '1020', 1);
INSERT INTO location VALUES (103, '呉', '西部事務所呉庁舎本庁舎東館', '7階', '-', '40', '1070', '1030', 1);
INSERT INTO location VALUES (104, '呉', '西部事務所呉庁舎本庁舎東館', '8階', '-', '40', '1070', '1040', 1);
INSERT INTO location VALUES (105, '呉', '西部事務所呉庁舎本庁舎東館', '9階', '-', '40', '1070', '1050', 1);
INSERT INTO location VALUES (106, '呉', '県立西部工業技術センター', '-', '-', '40', '1080', '1060', 1);
INSERT INTO location VALUES (107, '呉', '県立呉高等技術専門校', '-', '-', '40', '1090', '1070', 1);
INSERT INTO location VALUES (108, '呉', '水産海洋技術センター', '-', '-', '40', '1100', '1080', 1);
INSERT INTO location VALUES (109, '呉', '県立農業技術センター果樹研究部', '-', '-', '40', '1110', '1090', 1);
INSERT INTO location VALUES (110, '呉', '県立安芸津病院', '-', '-', '40', '1120', '1100', 1);
INSERT INTO location VALUES (111, '呉', '野呂川ダム管理事務所', '-', '-', '40', '1130', '1110', 1);
INSERT INTO location VALUES (112, '東広島', '西部事務所東広島庁舎本庁舎本館', '1階', '-', '50', '1140', '1120', 1);
INSERT INTO location VALUES (113, '東広島', '西部事務所東広島庁舎本庁舎本館', '2階', '-', '50', '1140', '1130', 1);
INSERT INTO location VALUES (114, '東広島', '西部事務所東広島庁舎本庁舎本館', '3階', '-', '50', '1140', '1140', 1);
INSERT INTO location VALUES (115, '東広島', '西部事務所東広島庁舎本庁舎本館', '4階', '-', '50', '1140', '1150', 1);
INSERT INTO location VALUES (116, '東広島', '西部事務所東広島庁舎本庁舎本館', '5階', '-', '50', '1140', '1160', 1);
INSERT INTO location VALUES (117, '東広島', '西部事務所東広島庁舎本庁舎別館', '1階', '-', '50', '1150', '1170', 1);
INSERT INTO location VALUES (118, '東広島', '西部事務所東広島庁舎本庁舎別館', '2階', '-', '50', '1150', '1180', 1);
INSERT INTO location VALUES (119, '東広島', '西部畜産事務所／西部家畜保健衛生所', '-', '-', '50', '1160', '1190', 1);
INSERT INTO location VALUES (120, '東広島', '県立農業技術センター／西部農業技術指導所', '-', '-', '50', '1170', '1200', 1);
INSERT INTO location VALUES (121, '東広島', '県立西部工業技術センター生産技術アカデミー', '-', '-', '50', '1180', '1210', 1);
INSERT INTO location VALUES (122, '東広島', '県立身体障害者更生相談所', '-', '-', '50', '1190', '1220', 1);
INSERT INTO location VALUES (123, '東広島', '県立広島学園', '-', '-', '50', '1200', '1230', 1);
INSERT INTO location VALUES (124, '東広島', '椋梨ダム管理事務所', '-', '-', '50', '1210', '1240', 1);
INSERT INTO location VALUES (125, '東広島', '福富ダム管理事業所', '-', '-', '50', '1220', '1250', 1);
INSERT INTO location VALUES (126, '東広島', '教育センター', '-', '-', '50', '1230', '1260', 1);
INSERT INTO location VALUES (127, '東広島', '仁賀ダム管理事務所', '-', '-', '50', '1240', '1270', 1);
INSERT INTO location VALUES (128, '福山', '防災航空センター', '-', '-', '60', '1250', '1280', 1);
INSERT INTO location VALUES (129, '福山', '動物愛護センター', '-', '-', '60', '1260', '1290', 1);
INSERT INTO location VALUES (130, '福山', '東部建設事務所三原支所食堂棟', '-', '-', '60', '1270', '1300', 1);
INSERT INTO location VALUES (131, '福山', '東部建設事務所三原支所南館', '-', '-', '60', '1270', '1310', 1);
INSERT INTO location VALUES (132, '福山', '東部建設事務所三原支所本館', '1階', '-', '60', '1270', '1320', 1);
INSERT INTO location VALUES (133, '福山', '東部建設事務所三原支所本館', '2階', '-', '60', '1270', '1330', 1);
INSERT INTO location VALUES (134, '福山', '東部建設事務所三原支所本館', '3階', '-', '60', '1270', '1340', 1);
INSERT INTO location VALUES (135, '福山', '東部建設事務所三原支所本館', '4階', '-', '60', '1270', '1350', 1);
INSERT INTO location VALUES (136, '福山', '東部建設三原支所（御調ダム管理事務所）', '-', '-', '60', '1280', '1360', 1);
INSERT INTO location VALUES (137, '福山', '東部建設三原支所（山田川ダム管理事務所）', '-', '-', '60', '1290', '1370', 1);
INSERT INTO location VALUES (138, '福山', '東部事務所尾道庁舎', '1階', '-', '60', '1300', '1380', 1);
INSERT INTO location VALUES (139, '福山', '東部事務所尾道庁舎', '2階', '-', '60', '1300', '1390', 1);
INSERT INTO location VALUES (140, '福山', '東部事務所尾道庁舎', '3階', '-', '60', '1300', '1400', 1);
INSERT INTO location VALUES (141, '福山', '東部事務所尾道庁舎', '4階', '-', '60', '1300', '1410', 1);
INSERT INTO location VALUES (142, '福山', '東部事務所尾道庁舎', '5階', '-', '60', '1300', '1420', 1);
INSERT INTO location VALUES (143, '福山', '東部農林三川ダム管理事務所', '-', '-', '60', '1310', '1430', 1);
INSERT INTO location VALUES (144, '福山', '野間川ダム管理事務所', '-', '-', '60', '1320', '1440', 1);
INSERT INTO location VALUES (145, '福山', '東部事務所福山庁舎第一庁舎', '1階', '-', '60', '1330', '1450', 1);
INSERT INTO location VALUES (146, '福山', '東部事務所福山庁舎第一庁舎', '2階', '-', '60', '1330', '1460', 1);
INSERT INTO location VALUES (147, '福山', '東部事務所福山庁舎第一庁舎', '3階', '-', '60', '1330', '1470', 1);
INSERT INTO location VALUES (148, '福山', '東部事務所福山庁舎第一庁舎', '4階', '-', '60', '1330', '1480', 1);
INSERT INTO location VALUES (149, '福山', '東部事務所福山庁舎第二庁舎', '1階', '-', '60', '1340', '1490', 1);
INSERT INTO location VALUES (150, '福山', '東部事務所福山庁舎第二庁舎', '2階', '-', '60', '1340', '1500', 1);
INSERT INTO location VALUES (151, '福山', '東部事務所福山庁舎第二庁舎', '3階', '-', '60', '1340', '1510', 1);
INSERT INTO location VALUES (152, '福山', '東部事務所福山庁舎第三庁舎', '1階', '-', '60', '1350', '1520', 1);
INSERT INTO location VALUES (153, '福山', '東部事務所福山庁舎第三庁舎', '2階', '-', '60', '1350', '1530', 1);
INSERT INTO location VALUES (154, '福山', '東部事務所福山庁舎第三庁舎', '3階', '-', '60', '1350', '1540', 1);
INSERT INTO location VALUES (155, '福山', '東部事務所福山庁舎第三庁舎', '4階', '-', '60', '1350', '1550', 1);
INSERT INTO location VALUES (156, '福山', '東部事務所福山庁舎第三庁舎', '5階', '-', '60', '1350', '1560', 1);
INSERT INTO location VALUES (157, '福山', '東部事務所福山庁舎第三庁舎', '6階', '-', '60', '1350', '1570', 1);
INSERT INTO location VALUES (158, '福山', '東部事務所福山庁舎第三庁舎', '7階', '-', '60', '1350', '1580', 1);
INSERT INTO location VALUES (159, '福山', '東部事務所福山庁舎第三庁舎', '8階', '-', '60', '1350', '1590', 1);
INSERT INTO location VALUES (160, '福山', '東部事務所福山庁舎第五庁舎', '2階', '-', '60', '1360', '1600', 1);
INSERT INTO location VALUES (161, '福山', '東部事務所福山庁舎第四庁舎', '1階', '-', '60', '1360', '1610', 1);
INSERT INTO location VALUES (162, '福山', '東部事務所福山庁舎第四庁舎', '2階', '-', '60', '1360', '1620', 1);
INSERT INTO location VALUES (163, '福山', '東部県税事務所（松永庁舎）', '-', '-', '60', '1370', '1630', 1);
INSERT INTO location VALUES (164, '福山', '東部こども家庭センター', '-', '-', '60', '1380', '1640', 1);
INSERT INTO location VALUES (165, '福山', '県立東部工業技術センター', '-', '-', '60', '1390', '1650', 1);
INSERT INTO location VALUES (166, '福山', '県立福山高等技術専門校', '-', '-', '60', '1400', '1660', 1);
INSERT INTO location VALUES (167, '福山', '福山少年自然の家', '-', '-', '60', '1410', '1670', 1);
INSERT INTO location VALUES (168, '福山', '歴史博物館', '-', '-', '60', '1420', '1680', 1);
INSERT INTO location VALUES (169, '福山', '四川ダム管理事務所', '-', '-', '60', '1430', '1690', 1);
INSERT INTO location VALUES (170, '三次', '北部事務所三次庁舎本庁舎第一庁舎', '1階', '-', '70', '1440', '1700', 1);
INSERT INTO location VALUES (171, '三次', '北部事務所三次庁舎本庁舎第一庁舎', '2階', '-', '70', '1440', '1710', 1);
INSERT INTO location VALUES (172, '三次', '北部事務所三次庁舎本庁舎第一庁舎', '3階', '-', '70', '1440', '1720', 1);
INSERT INTO location VALUES (173, '三次', '北部事務所三次庁舎本庁舎第一庁舎', '4階', '-', '70', '1440', '1730', 1);
INSERT INTO location VALUES (174, '三次', '北部事務所三次庁舎本庁舎第一庁舎', '5階', '-', '70', '1440', '1740', 1);
INSERT INTO location VALUES (175, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '1階', '-', '70', '1450', '1750', 1);
INSERT INTO location VALUES (176, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '2階', '-', '70', '1450', '1760', 1);
INSERT INTO location VALUES (177, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '3階', '-', '70', '1450', '1770', 1);
INSERT INTO location VALUES (178, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '4階', '-', '70', '1450', '1780', 1);
INSERT INTO location VALUES (179, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '5階', '-', '70', '1450', '1790', 1);
INSERT INTO location VALUES (180, '三次', '北部事務所三次庁舎本庁舎第三庁舎', '6階', '-', '70', '1450', '1800', 1);
INSERT INTO location VALUES (181, '三次', '北部事務所三次庁舎本庁舎第二庁舎', '1階', '-', '70', '1450', '1810', 1);
INSERT INTO location VALUES (182, '三次', '県立三次看護専門学校', '-', '-', '70', '1460', '1820', 1);
INSERT INTO location VALUES (183, '三次', '食肉衛生検査所', '-', '-', '70', '1470', '1830', 1);
INSERT INTO location VALUES (184, '三次', '県立三次高等技術専門校', '-', '-', '70', '1480', '1840', 1);
INSERT INTO location VALUES (185, '三次', '県立農業技術大学校', '-', '-', '70', '1490', '1850', 1);
INSERT INTO location VALUES (186, '三次', '県立畜産技術センター', '-', '-', '70', '1500', '1860', 1);
INSERT INTO location VALUES (187, '三次', '県立林業技術センター(木材実習棟）', '-', '-', '70', '1510', '1870', 1);
INSERT INTO location VALUES (188, '三次', 'みよし風土記の丘　歴史民俗資料館', '-', '-', '70', '1520', '1880', 1);
INSERT INTO location VALUES (189, '三次', '北部事務所庄原庁舎第一庁舎', '1階', '-', '70', '1530', '1890', 1);
INSERT INTO location VALUES (190, '三次', '北部事務所庄原庁舎第一庁舎', '2階', '-', '70', '1530', '1900', 1);
INSERT INTO location VALUES (191, '三次', '北部事務所庄原庁舎第一庁舎', '3階', '-', '70', '1530', '1910', 1);
INSERT INTO location VALUES (192, '三次', '北部事務所庄原庁舎第一庁舎', '4階', '-', '70', '1530', '1920', 1);
INSERT INTO location VALUES (193, '三次', '北部事務所庄原庁舎第二庁舎', '-', '-', '70', '1530', '1930', 1);
INSERT INTO location VALUES (194, '三次', '北部事務所庄原庁舎第三庁舎', '1階', '-', '70', '1540', '1940', 1);
INSERT INTO location VALUES (195, '三次', '北部事務所庄原庁舎第三庁舎', '2階', '-', '70', '1540', '1950', 1);
INSERT INTO location VALUES (196, '三次', '北部事務所庄原庁舎第三庁舎', '3階', '-', '70', '1540', '1960', 1);
INSERT INTO location VALUES (197, '三次', '北部事務所庄原庁舎第三庁舎', '4階', '-', '70', '1540', '1970', 1);
INSERT INTO location VALUES (198, '三次', '庄原ダム管理事務所', '-', '-', '70', '1550', '1980', 1);
INSERT INTO location VALUES (199, '東京・大阪', '東京事務所', '-', '-', '80', '1560', '1990', 1);
INSERT INTO location VALUES (200, '東京・大阪', '大阪情報センター', '-', '-', '90', '1570', '2000', 1);


--
-- Data for Name: location_code; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO location_code VALUES ('0110', '2011-04-01', '社長室', NULL, '秘書課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0120', '2011-04-01', '社長室', '国際交流推進部', NULL, NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0300', '2011-04-01', '会計室', NULL, '会計課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0401', '2011-04-01', '調整局', '調整部', '企画課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0402', '2011-04-01', '調整局', '調整部', '調整課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0403', '2011-04-01', '調整局', '調整部', '総合計画課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0405', '2011-04-01', '調整局', '情報部', NULL, NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0406', '2011-04-01', '調整局', '事務所', NULL, NULL, 'INS', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0416', '2011-04-01', '調整局', '推進本部', '推進課', NULL, 'LAN', NULL, NULL, NULL);
INSERT INTO location_code VALUES ('0417', '2011-04-01', '調整局', '推進本部', '調査課', NULL, 'LAN', NULL, NULL, NULL);


--
-- Data for Name: mt_auth; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO mt_auth VALUES ('eturan', 'd001');
INSERT INTO mt_auth VALUES ('sinsei', 'd002');
INSERT INTO mt_auth VALUES ('syonin', 'd003');
INSERT INTO mt_auth VALUES ('system', 'd004');


--
-- Data for Name: mt_menu; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO mt_menu VALUES (1, '齟齬情報', ' ', 'system

eturan

sinsei

syonin', 1, 100, 1);
INSERT INTO mt_menu VALUES (2, '齟齬一覧', 'sogo.php', 'system

eturan

sinsei

syonin', 2, 101, 1);
INSERT INTO mt_menu VALUES (3, '齟齬集計', 'sogo_count.php', 'system

sinsei

syonin', 2, 102, 1);
INSERT INTO mt_menu VALUES (4, '台帳一覧', ' ', 'system

eturan

sinsei

syonin', 1, 150, 1);
INSERT INTO mt_menu VALUES (5, 'ハードウェア台帳', 'hardware.php', 'system

eturan

sinsei

syonin', 2, 151, 1);
INSERT INTO mt_menu VALUES (6, 'ソフトウェア台帳', 'software.php', 'system

eturan

sinsei

syonin', 2, 152, 1);
INSERT INTO mt_menu VALUES (7, 'ライセンス台帳', 'license.php', 'system

eturan

sinsei

syonin', 2, 152, 1);
INSERT INTO mt_menu VALUES (8, '未承認・承認済', 'approval.php', 'system

sinsei

syonin', 1, 200, 1);
INSERT INTO mt_menu VALUES (9, 'ワークフロー申請', ' ', 'system

sinsei

syonin', 1, 250, 1);
INSERT INTO mt_menu VALUES (10, 'LAN接続協議', 'workflow_lan_connect_apply.php', 'system

sinsei

syonin', 2, 251, 1);
INSERT INTO mt_menu VALUES (11, 'ソフトウェア導入協議', 'workflow_software_batch_io_apply.php', 'system

sinsei

syonin', 2, 252, 1);
INSERT INTO mt_menu VALUES (12, 'ライセンス辞書', 'workflow_license_dictionary_apply.php', 'system

sinsei

syonin', 2, 253, 1);
INSERT INTO mt_menu VALUES (13, 'ハードウェア貸出', 'workflow_hardware_lending_apply.php', 'system

sinsei

syonin', 2, 254, 1);
INSERT INTO mt_menu VALUES (14, 'ハードウェア返却', 'workflow_hardware_return_apply.php', 'system

sinsei

syonin', 2, 255, 1);
INSERT INTO mt_menu VALUES (15, 'ワークフロー申請確認', ' ', 'system

sinsei

syonin', 1, 300, 1);
INSERT INTO mt_menu VALUES (16, '申請者用', 'workflow_list_create.php', 'system

sinsei

syonin', 2, 301, 1);
INSERT INTO mt_menu VALUES (17, '承認者用', 'workflow_list_request.php', 'system

syonin', 2, 302, 1);
INSERT INTO mt_menu VALUES (18, '管理者用', 'workflow_list_all.php', 'system', 2, 303, 1);
INSERT INTO mt_menu VALUES (19, '年度移行時PC配置', ' ', 'system

sinsei

syonin', 1, 350, 1);
INSERT INTO mt_menu VALUES (20, 'PC不足', ' ', 'system

sinsei

syonin', 2, 351, 1);
INSERT INTO mt_menu VALUES (21, 'PC余剰', ' ', 'system

sinsei

syonin', 2, 352, 1);
INSERT INTO mt_menu VALUES (22, 'PC移動', ' ', 'system

sinsei

syonin', 2, 353, 1);
INSERT INTO mt_menu VALUES (23, 'PC不足状況確認', ' ', 'system

sinsei

syonin', 2, 354, 1);
INSERT INTO mt_menu VALUES (24, 'PC余剰状況確認', ' ', 'system

sinsei

syonin', 2, 355, 1);
INSERT INTO mt_menu VALUES (25, 'PC移動状況確認', ' ', 'system

sinsei

syonin', 2, 356, 1);
INSERT INTO mt_menu VALUES (26, '保守', ' ', 'system', 1, 400, 1);
INSERT INTO mt_menu VALUES (27, 'ユーザー', 'user.php', 'system', 2, 401, 1);
INSERT INTO mt_menu VALUES (28, '組織', 'sosiki.php', 'system', 2, 402, 1);
INSERT INTO mt_menu VALUES (29, '収集情報', 'inventory.php', 'system', 1, 220, 1);
INSERT INTO mt_menu VALUES (30, '設置場所', 'location.php', 'system', 2, 404, 1);
INSERT INTO mt_menu VALUES (31, '管理者設定', 'administrator.php', 'system', 2, 405, 1);
INSERT INTO mt_menu VALUES (32, 'インポート', 'import.php', 'system', 1, 450, 1);
INSERT INTO mt_menu VALUES (33, '管理情報', ' ', 'system', 1, 500, 1);
INSERT INTO mt_menu VALUES (34, 'コントロール', 'control.php', 'system', 2, 501, 1);
INSERT INTO mt_menu VALUES (35, 'コード定義', 'code.php', 'system', 2, 502, 1);
INSERT INTO mt_menu VALUES (36, '禁止ソフトウェア', 'prohibition_software.php', 'system', 2, 503, 1);
INSERT INTO mt_menu VALUES (37, 'その他', 'ext.php', 'system', 2, 504, 1);
INSERT INTO mt_menu VALUES (38, '年度移行時PC配置管理情報', ' ', 'system', 1, 550, 1);
INSERT INTO mt_menu VALUES (39, '計画開始設定', ' ', 'system', 2, 551, 1);
INSERT INTO mt_menu VALUES (40, '振分設定', ' ', 'system', 2, 552, 1);
INSERT INTO mt_menu VALUES (41, '振分確認', ' ', 'system', 2, 553, 1);
INSERT INTO mt_menu VALUES (42, '振分実施', ' ', 'system', 2, 554, 1);
INSERT INTO mt_menu VALUES (43, '返却確認', ' ', 'system', 2, 555, 1);
INSERT INTO mt_menu VALUES (44, 'ライセンス辞書', 'license_list.php', 'system

sinsei

syonin', 2, 153, 0);


--
-- Name: mt_menu_menu_code_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('mt_menu_menu_code_seq', 44, true);


--
-- Data for Name: sogo_mail_message; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sogo_mail_message VALUES ('0317', 'ハードウェア管理番号%sがハードウェア台帳に複数あります。

ttttt%Sttttt対応：ハードウェア台帳でハードウェア管理番号%sを確認し、修正する');
INSERT INTO sogo_mail_message VALUES ('0332', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずライセンス台帳に記載されていません。

対応：ライセンス台帳に記載する');
INSERT INTO sogo_mail_message VALUES ('0318', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「所属」が選択されていません。

対応：取得情報の「所属」を選択する');
INSERT INTO sogo_mail_message VALUES ('0319', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「状態」が選択されていません。

対応：取得情報の「状態」を選択する');
INSERT INTO sogo_mail_message VALUES ('0320', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア種別」が選択されていません。

対応：取得情報の「ハードウェア種別」を選択する');
INSERT INTO sogo_mail_message VALUES ('0307', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとアップグレードライセンスの保有数（導入可能数）が一致しません。これらは同数である必要があります。保有数（導入可能数）のうちの一部のみアップグレードするときは、あらかじめアップグレード元ライセンスをアップグレード元とそうでないものに分割してください。

対応：ライセンス台帳でアップグレード元ライセンスの「保有数（導入可能数）」を変更する

対応：ライセンス台帳でアップグレードライセンスの「保有数（導入可能数）」を変更する');
INSERT INTO sogo_mail_message VALUES ('0328', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：現在使用していない場合：取得情報の「状態」を変更する

事務系ネットワーク・スクールネットに接続していたが、しばらく接続していなかった場合：情報取得とウイルス対策ソフトのパターン更新のため、ネットワークに接続した状態でコンピュータを起動してください

使用者がソフトウェア追加導入や削除を全くできないようにしている場合：ハードウェア台帳の「使用者によるソフトウェア追加導入・削除」を変更する');
INSERT INTO sogo_mail_message VALUES ('0316', 'ハードウェア管理番号%sにおいて指定された所属が存在しません。
  
¥n¥n対応：ハードウェア台帳で「管理所属」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0324', 'コンピュータ名%s、IPアドレス%sの機器の「ハードウェア種別」は「その他ネットワーク機器」ではなく「コンピュータ」です。

対応：取得情報の「ハードウェア種別」を変更する');
INSERT INTO sogo_mail_message VALUES ('0325', 'コンピュータ名%s、IPアドレス%sの機器は「コンピュータ」であるにもかかわらずインベントリ収集ツールが導入されていません。

対応：インベントリ収集ツールを導入する

プリンタ等、コンピュータではない場合：取得情報の「ハードウェア種別」を変更する

コンピュータだがインベントリ収集ツールを導入することが不可能な場合：USBツールで情報を収集する');
INSERT INTO sogo_mail_message VALUES ('0323', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器の「所属」が取得情報とハードウェア台帳とで一致しません。

対応：取得情報の「所属」を変更する

対応：ハードウェア台帳の「管理所属」を変更する');
INSERT INTO sogo_mail_message VALUES ('0308', 'ライセンス管理番号%sにおいて指定された所属が存在しません。

対応：ライセンス台帳で「所属」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0313', 'ハードウェアの所属とハードウェアに導入されているソフトウェアのライセンスの所属に整合性がありません。

対応：ハードウェア台帳で「管理所属」を選択し直す

対応：ライセンス台帳で「所属」を選択し直す

対応：ソフトウェアをハードウェアから削除し、インストール管理台帳で「アンインストール日」を記載する');
INSERT INTO sogo_mail_message VALUES ('0329', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：USBメモリツールを実行する

現在使用していない場合：取得情報の「状態」を変更する

使用者がソフトウェア追加導入や削除を全くできないようにしている場合：ハードウェア台帳の「使用者によるソフトウェア追加導入・削除」を変更する');
INSERT INTO sogo_mail_message VALUES ('0330', 'IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：ネットワークに接続する

現用していない、またはネットワークに接続して使用していない場合：取得情報の「状態」を変更する');
INSERT INTO sogo_mail_message VALUES ('0331', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：ネットワークに接続する

現用していない、またはネットワークに接続して使用していない場合：取得情報の「状態」を変更する');
INSERT INTO sogo_mail_message VALUES ('0309', 'ライセンス管理番号%sにおいて指定されたライセンスがライセンス一覧表に存在しません。

対応：ライセンス台帳で「ソフトウェア名」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0302', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが廃棄済みです。導入できるハードウェアが固定されているライセンス（プリインストールのライセンス）は、ハードウェアと同時に廃棄する必要があります。

対応:ライセンス台帳で「廃棄日」を記載する');
INSERT INTO sogo_mail_message VALUES ('0303', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが存在しません。

対応：ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0304', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが廃棄済みであり利用できません。

対応：ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0305', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスがアップグレード版です。アップグレード版はアップグレード元ライセンスにできません。

対応:ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0301', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが存在しません。

対応：ライセンス台帳で「固定先ハードウェア管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0335', 'ソフトウェア名%s、入手形態%s、PC固定%s、アップグレード版%sの同じ組み合わせがシステム一覧表に複数あります。

対応：ライセンス一覧表で確認し、修正する');
INSERT INTO sogo_mail_message VALUES ('0310', 'ライセンス管理番号%sがライセンス台帳に複数あります。

ttttt%Sttttt対応：ライセンス台帳でライセンス管理番号%sを確認し、修正する');
INSERT INTO sogo_mail_message VALUES ('0306', 'ライセンス管理番号%sの保有数（導入可能数）は%sですが、それを上回る数のハードウェアにソフトウェアが導入されています。

対応：インストール管理台帳で「ライセンス管理番号」を選択し直す

対応：ライセンス台帳で「保有数（導入可能数）」を変更する');
INSERT INTO sogo_mail_message VALUES ('0311', 'インストール管理台帳において指定されたハードウェアが存在しません。

対応：インストール管理台帳で「ハードウェア管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0312', 'インストール管理台帳において指定されたライセンスが存在しません。

対応：インストール管理台帳で「ライセンス管理番号」を選択し直す');
INSERT INTO sogo_mail_message VALUES ('0314', 'ハードウェア管理番号%sのハードウェアが廃棄済みですので導入されているソフトウェアも削除済みとする必要があります。「アンインストール日」を記載する際は日付の整合性に注意してください。

対応：インストール管理台帳で「アンインストール日」を記載する');
INSERT INTO sogo_mail_message VALUES ('0315', 'ハードウェア管理番号%sのハードウェアにおいて、ハードウェアの廃棄日よりソフトウェアのアンインストール日が後の日付になっています。

対応：ハードウェア台帳の「廃棄日」を変更する

対応：インストール管理台帳の「アンインストール日」を変更する');
INSERT INTO sogo_mail_message VALUES ('0333', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずインストール管理台帳に記載されていません。

対応：インストール管理台帳に記載する');
INSERT INTO sogo_mail_message VALUES ('0321', 'コンピュータ名%s、IPアドレス%sの機器から取得された「ハードウェア管理番号」がハードウェア台帳に記載されていません。

対応：ハードウェア台帳に新しいハードウェアを記載する');
INSERT INTO sogo_mail_message VALUES ('0322', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器は取得情報において廃棄済みとなっていませんが、ハードウェア台帳では廃棄済みとなっています。

対応：取得情報の「状態」を変更する

対応：ハードウェア台帳の「廃棄日」を削除する');
INSERT INTO sogo_mail_message VALUES ('0326', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。

対応：インストールプログラムを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO sogo_mail_message VALUES ('0327', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。

対応：USBメモリツールを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO sogo_mail_message VALUES ('0334', 'ハードウェア管理番号%sが収集情報に複数あります。

ttttt%Sttttt対応：収集情報でハードウェア管理番号%sを確認し、間違った方のハードウェアでインベントリ収集ツールを再インストールまたはUSBメモリツールを再実行しハードウェア管理番号を再入力する');
INSERT INTO sogo_mail_message VALUES ('0604', 'コンピュータ名%s、IPアドレス%sの機器から取得された「ハードウェア管理番号」がハードウェア台帳の「廃棄日」を過ぎて使用されています。

対応：すみやかにハードウェアの使用を中止し、情報政策課に問い合わせてください。');


--
-- Data for Name: sogo_msg; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sogo_msg VALUES ('0318', '収集情報において、「所属」が選択されていません。', ';<a href="inventory.php?action=edit&code=%s">収集情報で「所属」を選択する</a>', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「所属」が選択されていません。

対応：取得情報の「所属」を選択する');
INSERT INTO sogo_msg VALUES ('0319', '収集情報において、「状態」が選択されていません。', ';<a href="inventory.php?action=edit&code=%s">収集情報で「状態」を選択する</a>', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「状態」が選択されていません。

対応：取得情報の「状態」を選択する');
INSERT INTO sogo_msg VALUES ('0320', '収集情報において、「ハードウェア種別」が選択されていません。', ';<a href="inventory.php?action=edit&code=%s">収集情報で「ハードウェア種別」を選択する</a>', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア種別」が選択されていません。

対応：取得情報の「ハードウェア種別」を選択する');
INSERT INTO sogo_msg VALUES ('0334', 'ハードウェア管理番号%sが収集情報に複数あります。', '間違った方のハードウェアで「部署変更.vbs」を実行後、再起動し、入力画面で「ハードウェア管理番号」を正しく入力する

間違った方のハードウェアで資産情報取得ツール（USBメモリ版）を実行し、アップロードする　その際、「ハードウェア管理番号」を正しく入力する', 'ハードウェア管理番号%sが収集情報に複数あります。

対応：収集情報でハードウェア管理番号%sを確認し、間違った方のハードウェアでインベントリ収集ツールを再インストールまたはUSBメモリツールを再実行しハードウェア管理番号を再入力する');
INSERT INTO sogo_msg VALUES ('0324', '収集情報の「ハードウェア種別」が「その他ネットワーク機器」となっていますが、正しくは「コンピュータ」です。', '<a href="inventory.php?action=edit&code=%s">収集情報の「ハードウェア種別」を変更する</a>', 'コンピュータ名%s、IPアドレス%sの機器の「ハードウェア種別」は「その他ネットワーク機器」ではなく「コンピュータ」です。

対応：取得情報の「ハードウェア種別」を変更する');
INSERT INTO sogo_msg VALUES ('0326', '収集情報において「ハードウェア管理番号」が入力されていません。', '該当するハードウェアで「部署変更.vbs」を実行後、再起動し、入力画面で「ハードウェア管理番号」を正しく入力する', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。

対応：インストールプログラムを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO sogo_msg VALUES ('0325', '収集情報の「ハードウェア種別」が「コンピュータ」となっていますが資産情報取得ツール（インストール版またはUSBメモリ版）が導入されていません。', '資産情報取得ツール（インストール版）を導入する<br />資産情報取得ツール（USBメモリ版）で情報を収集し送信する

プリンタ等、コンピュータではない場合、<a href="inventory.php?action=edit&code=%s">取得情報の「ハードウェア種別」を変更する</a>', 'コンピュータ名%s、IPアドレス%sの機器は「コンピュータ」であるにもかかわらずインベントリ収集ツールが導入されていません。

対応：インベントリ収集ツールを導入する

プリンタ等、コンピュータではない場合：取得情報の「ハードウェア種別」を変更する

コンピュータだがインベントリ収集ツールを導入することが不可能な場合：USBツールで情報を収集する');
INSERT INTO sogo_msg VALUES ('0328', '収集情報が%s日以上収集できていないハードウェアがあります。', 'ネットワークに接続した状態で起動する

ネットワークに接続せずに使用している場合、資産情報取得ツール（USBメモリ版）を実行し、アップロードする

使用せずに保管している場合、<a href="inventory.php?action=edit&code=%s">収集情報の「状態」を「保管中」に変更する</a>

廃棄済みの場合、<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」を記載する</a>', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：現在使用していない場合：取得情報の「状態」を変更する

事務系ネットワーク・スクールネットに接続していたが、しばらく接続していなかった場合：情報取得とウイルス対策ソフトのパターン更新のため、ネットワークに接続した状態でコンピュータを起動してください

使用者がソフトウェア追加導入や削除を全くできないようにしている場合：ハードウェア台帳の「使用者によるソフトウェア追加導入・削除を変更する');
INSERT INTO sogo_msg VALUES ('0329', '収集情報が%s日以上収集できていないハードウェアがあります。', '資産情報取得ツール（USBメモリ版）を実行し、アップロードする

使用せずに保管している場合、<a href="inventory.php?action=edit&code=%s">収集情報の「状態」を「保管中」に変更する</a>

廃棄済みの場合、<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」を記載する</a>', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：USBメモリツールを実行する

現在使用していない場合：取得情報の「状態」を変更する

使用者がソフトウェア追加導入や削除を全くできないようにしている場合：ハードウェア台帳の「使用者によるソフトウェア追加導入・削除」を変更する');
INSERT INTO sogo_msg VALUES ('0330', '収集情報が%s日以上収集できていないハードウェアがあります。', 'ネットワークに接続する

機器はあるがネットワークに接続しない場合、<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を「保管中」に変更する</a>

廃棄済みの場合、<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を「廃棄済み」に変更する</a>', 'IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：ネットワークに接続する

現用していない、またはネットワークに接続して使用していない場合：取得情報の「状態」を変更する');
INSERT INTO sogo_msg VALUES ('0331', '収集情報が%s日以上収集できていないハードウェアがあります。', 'ネットワークに接続する

機器はあるがネットワークに接続しない場合、<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を「保管中」に変更する</a>

廃棄済みの場合、<a href="inventory.php?action=edit&code=%s">取得情報の「状態」を「廃棄済み」に変更する</a>', 'コンピュータ名%s、IPアドレス%sの機器の情報が%s日以上取得できていません。

対応：ネットワークに接続する

現用していない、またはネットワークに接続して使用していない場合：取得情報の「状態」を変更する');
INSERT INTO sogo_msg VALUES ('0301', 'ライセンス台帳において、固定先ハードウェアとして指定されていたハードウェアが存在しません。', '<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「固定先ハードウェア管理番号」を選択し直す</a>', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが存在しません。

対応：ライセンス台帳で「固定先ハードウェア管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0315', 'ハードウェアの「廃棄日」より導入されていたソフトウェアの「アンインストール日」が後の日付になっています。', '<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」を変更する</a>

<a href="software.php?action=app_edit&code=%s">インストール管理台帳の「アンインストール日」を変更する</a>', 'ハードウェア管理番号%sのハードウェアにおいて、ハードウェアの廃棄日よりソフトウェアのアンインストール日が後の日付になっています。

対応：ハードウェア台帳の「廃棄日」を変更する

対応：インストール管理台帳の「アンインストール日」を変更する');
INSERT INTO sogo_msg VALUES ('0314', 'ハードウェアが廃棄済みですが、導入されているソフトウェアに「アンインストール日」が記載されていません。', '<a href="software.php?action=app_edit&code=%s">インストール管理台帳で「アンインストール日」を記載する</a>', 'ハードウェア管理番号%sのハードウェアが廃棄済みですので導入されているソフトウェアも削除済みとする必要があります。「アンインストール日」を記載する際は日付の整合性に注意してください。

対応：インストール管理台帳で「アンインストール日」を記載する');
INSERT INTO sogo_msg VALUES ('0316', 'ハードウェア台帳において、記載されていた所属が存在しません。', ';<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳で「管理所属」を選択し直す</a>', 'ハードウェア管理番号%sにおいて指定された所属が存在しません。
  
対応：ハードウェア台帳で「管理所属」を選択し直す');
INSERT INTO sogo_msg VALUES ('0323', '収集情報において収集された「所属」とハードウェア台帳の「管理所属」が一致しません。', ';<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳で「管理所属」を選択し直す</a>', 'ハードウェア管理番号%sにおいて指定された所属が存在しません。
  
対応：ハードウェア台帳で「管理所属」を選択し直す');
INSERT INTO sogo_msg VALUES ('0327', '収集情報において「ハードウェア管理番号」が入力されていません。', 'USBメモリ版）を実行し、アップロードする　その際、「ハードウェア管理番号」を正しく入力する"', 'コンピュータ名%s、IPアドレス%sの機器の取得情報において「ハードウェア管理番号」が入力されていません。

対応：USBメモリツールを再実行し、その際に「ハードウェア管理番号」を正しく入力する');
INSERT INTO sogo_msg VALUES ('0322', 'ハードウェア台帳に「廃棄日」が記載されていますが、収集情報の「状態」が「廃棄済み」となっていません。', '<a href="inventory.php?action=edit&code=%s">収集情報の「状態」を変更する</a>

<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳の「廃棄日」の記載を削除する</a>', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器は取得情報において廃棄済みとなっていませんが、ハードウェア台帳では廃棄済みとなっています。

対応：取得情報の「状態」を変更する

対応：ハードウェア台帳の「廃棄日」を削除する');
INSERT INTO sogo_msg VALUES ('0308', 'ライセンス台帳において、記載されていた所属が存在しません。', ';<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「所属」を選択し直す</a>', 'ライセンス管理番号%sにおいて指定された所属が存在しません。

対応：ライセンス台帳で「所属」を選択し直す');
INSERT INTO sogo_msg VALUES ('0310', 'ライセンス台帳に同じライセンス管理番号が複数記載されています。', '<a href="license.php?search_col1=002&search_value1=%s&search_comp1=002&search_cd1=001">ライセンス台帳でライセンス管理番号%sを確認し、</a>修正する', 'ライセンス管理番号%sがライセンス台帳に複数あります。

対応：ライセンス台帳でライセンス管理番号%sを確認し、修正する');
INSERT INTO sogo_msg VALUES ('0302', 'ライセンス台帳において、固定先ハードウェアとして指定されたハードウェアが廃棄済みであるにもかかわらず、「廃棄日」が記載されていません。導入できるハードウェアが固定されているライセンス（プリインストールのライセンス）は、ハードウェアの廃棄日またはそれ以前に廃棄する必要があります。', '<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「廃棄日」を記載する</a>', 'ライセンス管理番号%sにおいて固定先ハードウェアとして指定されたハードウェアが廃棄済みです。導入できるハードウェアが固定されているライセンス（プリインストールのライセンス）は、ハードウェアと同時に廃棄する必要があります。

対応:ライセンス台帳で「廃棄日」を記載する');
INSERT INTO sogo_msg VALUES ('0303', 'ライセンス台帳において、アップグレード元ライセンスとして指定されていたライセンスが存在しません。', ';<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが存在しません。

対応：ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0304', 'ライセンス台帳において、アップグレード元ライセンスとして指定されているライセンスが廃棄済みのため、利用できません。', '<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスが廃棄済みであり利用できません。

対応：ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0305', 'ライセンス台帳において、アップグレード元ライセンスとして指定されているライセンスがアップグレード版のため、利用できません。（アップグレード版はアップグレード元ライセンスにできません）', '<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す</a>', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとして指定されたライセンスがアップグレード版です。アップグレード版はアップグレード元ライセンスにできません。

対応:ライセンス台帳で「アップグレード元ライセンス管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0311', 'ソフトウェアを導入しているとされているハードウェアが今は存在しません。', '<a href="software.php?action=app_edit&code=%s">インストール管理台帳で「ハードウェア管理番号」を選択し直す</a>', 'インストール管理台帳において指定されたハードウェアが存在しません。

対応：インストール管理台帳で「ハードウェア管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0335', 'ソフトウェア名%s、ライセンス%s、入手形態%s、PC固定%s、アップグレード版%sの同じ組み合わせがソフトウェア辞書に複数あります。', '<a href=""license_list.php?action=app_edit&code=%s"">ソフトウェア辞書で確認</a>し、修正する', 'ソフトウェア名%s、入手形態%s、PC固定%s、アップグレード版%sの同じ組み合わせがシステム一覧表に複数あります。

対応：ソフトウェア辞書で確認し、修正する');
INSERT INTO sogo_msg VALUES ('0309', 'このライセンスに選択されているソフトウェア辞書の記載が今は存在しません。', '<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳で「ソフトウェア名」を選択し直す</a>', 'ライセンス管理番号%sにおいて指定されたライセンスがソフトウェア辞書に存在しません。

対応：ライセンス台帳で「ソフトウェア名」を選択し直す');
INSERT INTO sogo_msg VALUES ('0312', 'ハードウェアに導入しているとされているソフトウェアのライセンスが今は存在しません。', '<a href="software.php?action=app_edit&code=%s">インストール管理台帳で「ライセンス管理番号」を選択し直す</a>', 'インストール管理台帳において指定されたライセンスが存在しません。

対応：インストール管理台帳で「ライセンス管理番号」を選択し直す');
INSERT INTO sogo_msg VALUES ('0306', 'ライセンス台帳において、保有数（導入可能数）以上のハードウェアにソフトウェアが登録されています。', '<a href="software.php?search_col1=004&search_value1=%s&search_comp1=001&search_cd1=001">インストール管理台帳で「ライセンス管理番号」を選択し直す</a>

<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「保有数（導入可能数）」を変更する</a>', 'ライセンス管理番号%sの保有数（導入可能数）は%sですが、それを上回る数のハードウェアにソフトウェアが導入されています。

対応：インストール管理台帳で「ライセンス管理番号」を選択し直す

対応：ライセンス台帳で「保有数（導入可能数）」を変更する');
INSERT INTO sogo_msg VALUES ('0317', 'ハードウェア台帳に同じハードウェア管理番号が複数あります。', '<a href="hardware.php?search_col1=002&search_value1=%s&search_comp1=002&search_cd1=001">ハードウェア台帳でハードウェア管理番号%sを確認</a>し、修正する', 'ハードウェア管理番号%sがハードウェア台帳に複数あります。

対応：ハードウェア台帳でハードウェア管理番号%sを確認し、修正する');
INSERT INTO sogo_msg VALUES ('0601', 'ライセンス管理番号%sのライセンスが禁止ソフトウェア(%s)にもかかわらず登録されています。', '<a href="software.php?search_col1=004&search_value1=%s&search_comp1=002">インストール管理台帳から削除</a>し、<a href="license.php?search_col1=002&search_value1=%s&search_comp1=002">ライセンス台帳からも削除</a>する', 'ライセンス管理番号%sのライセンスが禁止ソフトウェア(%s)にもかかわらず登録されています。

対応：ライセンス台帳から削除しインストール管理台帳からも削除する');
INSERT INTO sogo_msg VALUES ('0313', 'ハードウェアの所属と、ハードウェアに導入されているソフトウェアのライセンスの所属が一致していません。', '<a href="hardware.php?action=app_edit&code=%s">ハードウェア台帳で「管理所属」を選択し直す</a>

<a href="license.php?action=app_edit&code=%s">ライセンス台帳で「所属」を選択し直す</a>

ソフトウェアをハードウェアから削除し、<a href="software.php?action=app_edit&code=%s">インストール管理台帳で「アンインストール日」を記載する</a>', 'ハードウェアの所属とハードウェアに導入されているソフトウェアのライセンスの所属に整合性がありません。

対応：ハードウェア台帳で「管理所属」を選択し直す

対応：ライセンス台帳で「所属」を選択し直す

対応：ソフトウェアをハードウェアから削除し、インストール管理台帳で「アンインストール日」を記載する');
INSERT INTO sogo_msg VALUES ('0307', 'ライセンス台帳において、アップグレード元ライセンスとアップグレードライセンスの保有数（導入可能数）が一致しません。これらは同数である必要があります。保有数（導入可能数）のうちの一部のみアップグレードするときは、あらかじめアップグレード元ライセンスをアップグレード元とそうでないものに分割してください。', '<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳でアップグレード元ライセンスの「保有数（導入可能数）」を変更する</a>

<a href=""license.php?action=app_edit&code=%s"">ライセンス台帳でアップグレードライセンスの「保有数（導入可能数）」を変更する</a>', 'ライセンス管理番号%sにおいてアップグレード元ライセンスとアップグレードライセンスの保有数（導入可能数）が一致しません。これらは同数である必要があります。保有数（導入可能数）のうちの一部のみアップグレードするときは、あらかじめアップグレード元ライセンスをアップグレード元とそうでないものに分割してください。

対応：ライセンス台帳でアップグレード元ライセンスの「保有数（導入可能数）」を変更する

対応：ライセンス台帳でアップグレードライセンスの「保有数（導入可能数）」を変更する');
INSERT INTO sogo_msg VALUES ('0332', '収集情報の「プログラムの追加と削除での表示」（%s）が、ドライバ、ユーティリティ、セキュリティパッチに分類されていないにもかかわらずライセンス台帳及びインストール管理台帳に登録されていません。', '<a href="license.php?search_col1=019&search_value1=%s&search_comp1=001">ライセンス台帳に登録</a>し、<a href="software.php?search_col1=002&search_value1=%s&search_comp1=002">インストール管理台帳に登録する</a>', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずライセンス台帳に記載されていません。

対応：ライセンス台帳に記載する');
INSERT INTO sogo_msg VALUES ('0333', '収集情報の「プログラムの追加と削除での表示」（%s）が、ドライバ、ユーティリティ、セキュリティパッチに分類されていないにもかかわらずインストール管理台帳に登録されていません。', 'フリーウェアの場合、<a href="software.php?search_col1=002&search_value1=%s&search_comp1=002">インストール管理台帳に登録する</a>

ボリュームライセンス、パッケージ、プリインストール、バンドルの場合、ものによっては<a href="license.php?search_col1=019&search_value1=%s&search_comp1=001">ライセンス台帳に登録</a>し、<a href="software.php?search_col1=002&search_value1=%s&search_comp1=002">インストール管理台帳に登録する</a>', 'コンピュータ名%s、IPアドレス%s、ハードウェア管理番号%sの機器にインストールされているソフトウェア（プログラムの追加と削除での表示は「%s」）がドライバ・ユーティリティ、セキュリティパッチでないにもかかわらずインストール管理台帳に記載されていません。

対応：インストール管理台帳に記載する');
INSERT INTO sogo_msg VALUES ('0602', 'コンピュータ名%s、IPアドレス%sの機器に禁止ソフトウェアである%sがインストールされています。', 'コンピュータ名%s、IPアドレス%sの機器にインストールされている禁止ソフトウェア(%s)をアンインストールしてください。', 'コンピュータ名%s、IPアドレス%sの機器に禁止ソフトウェアである%sがインストールされています。

対応：禁止ソフトウェア(%s)をアンインストールしてください');
INSERT INTO sogo_msg VALUES ('0603', '収集情報の「Microsoft ライセンス種別」（%s）が、ソフトウェア辞書の入手形態と一致しません。', 'ダウングレードとして使用している場合は、<a href="software.php?search_col1=002&search_value1=%s&search_comp1=002&search_cd1=001">インストール管理台帳</a>のダウングレード使用を該当として登録する<br /><br /><a href="license.php?search_col1=002&search_value1=%s&search_comp1=002">ライセンス台帳</a>で対象の種類のライセンスを登録し、<a href="software.php?search_col1=002&search_value1=%s&search_comp1=002">インストール管理台帳</a>に記載する', '収集情報の「プログラムの追加と削除での表示」（%s）が、ソフトウェア辞書の入手形態と一致しません。

対応：ダウングレードとして使用している場合は、インストール管理台帳のダウングレード使用を該当として登録する

ライセンス台帳で対象の入手形態のライセンスを登録し、インストール管理台帳に記載する');
INSERT INTO sogo_msg VALUES ('0321', '収集情報の「ハードウェア管理番号」がハードウェア台帳に記載されていません。', '<a href="hardware.php?search_col1=002&search_value1=%s&search_comp1=002">ハードウェア台帳にハードウェアを登録する</a>', 'コンピュータ名%s、IPアドレス%sの機器から取得された「ハードウェア管理番号」がハードウェア台帳に記載されていません。

対応：ハードウェア台帳に新しいハードウェアを記載する');
INSERT INTO sogo_msg VALUES ('0604', 'ハードウェア台帳の「廃棄日」を過ぎてハードウェアが使用されています。', 'すみやかにハードウェアの使用を中止し、情報政策課に問い合わせてください。', 'コンピュータ名%s、IPアドレス%sの機器から取得された「ハードウェア管理番号」がハードウェア台帳の「廃棄日」を過ぎて使用されています。

対応：すみやかにハードウェアの使用を中止し、情報政策課に問い合わせてください。');


--
-- Data for Name: sogo_type; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sogo_type VALUES ('0301', 1);
INSERT INTO sogo_type VALUES ('0302', 1);
INSERT INTO sogo_type VALUES ('0303', 1);
INSERT INTO sogo_type VALUES ('0304', 1);
INSERT INTO sogo_type VALUES ('0305', 1);
INSERT INTO sogo_type VALUES ('0306', 1);
INSERT INTO sogo_type VALUES ('0307', 1);
INSERT INTO sogo_type VALUES ('0308', 1);
INSERT INTO sogo_type VALUES ('0309', 1);
INSERT INTO sogo_type VALUES ('0310', 1);
INSERT INTO sogo_type VALUES ('0311', 1);
INSERT INTO sogo_type VALUES ('0312', 1);
INSERT INTO sogo_type VALUES ('0313', 1);
INSERT INTO sogo_type VALUES ('0314', 1);
INSERT INTO sogo_type VALUES ('0315', 1);
INSERT INTO sogo_type VALUES ('0316', 1);
INSERT INTO sogo_type VALUES ('0317', 1);
INSERT INTO sogo_type VALUES ('0318', 2);
INSERT INTO sogo_type VALUES ('0319', 2);
INSERT INTO sogo_type VALUES ('0320', 2);
INSERT INTO sogo_type VALUES ('0321', 2);
INSERT INTO sogo_type VALUES ('0322', 2);
INSERT INTO sogo_type VALUES ('0323', 2);
INSERT INTO sogo_type VALUES ('0324', 2);
INSERT INTO sogo_type VALUES ('0325', 2);
INSERT INTO sogo_type VALUES ('0326', 2);
INSERT INTO sogo_type VALUES ('0327', 2);
INSERT INTO sogo_type VALUES ('0328', 2);
INSERT INTO sogo_type VALUES ('0329', 2);
INSERT INTO sogo_type VALUES ('0330', 2);
INSERT INTO sogo_type VALUES ('0331', 2);
INSERT INTO sogo_type VALUES ('0332', 2);
INSERT INTO sogo_type VALUES ('0333', 2);
INSERT INTO sogo_type VALUES ('0334', 2);
INSERT INTO sogo_type VALUES ('0335', 1);
INSERT INTO sogo_type VALUES ('0601', 1);
INSERT INTO sogo_type VALUES ('0602', 2);
INSERT INTO sogo_type VALUES ('0603', 2);
INSERT INTO sogo_type VALUES ('0604', 1);


--
-- Data for Name: sosiki; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sosiki VALUES (1, 0, 10, '広島県', 'd001', '広島県', NULL, '0000000000', ' ');
INSERT INTO sosiki VALUES (2, 1, 32766, 'サポートダイヤル', 'd001', '広島県/サポートダイヤル', '0000000000', '9999999999', ' ');


--
-- Data for Name: sosiki_path; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sosiki_path VALUES (1, '1', '2');
INSERT INTO sosiki_path VALUES (2, '1,2', NULL);


--
-- Name: sosiki_sosiki_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('sosiki_sosiki_pkey_seq', 2, true);


--
-- Data for Name: sso_administrator; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sso_administrator VALUES ('sarmsadmin', 'sarmsadmin', NULL);
INSERT INTO sso_administrator VALUES ('hiroshimaadmin', 'hiroshimaadmin', NULL);
INSERT INTO sso_administrator VALUES ('supportadmin', 'supportadmin', NULL);
INSERT INTO sso_administrator VALUES ('hiroshimainfo', 'hiroshimainfo', NULL);


--
-- Data for Name: sso_user_master; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sso_user_master VALUES ('sarmsadmin', 'sarmsadmin', '構築業者管理者', 'test@test.local', '', '', '', NULL);
INSERT INTO sso_user_master VALUES ('hiroshimaadmin', 'hiroshimaadmin', '統括管理者承認', 'test@test.local', '', '', '', NULL);
INSERT INTO sso_user_master VALUES ('supportadmin', 'supportadmin', '統合運用管理者', 'test@test.local', '', '', '', NULL);
INSERT INTO sso_user_master VALUES ('hiroshimainfo', 'hiroshimainfo', '統括管理者受入', 'test@test.local', '', '', '', NULL);


--
-- Data for Name: user; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO "user" VALUES (1, 1, 'sarmsadmin', '構築業者管理者', 'd004', 'test@test.local', 's@rms', '　');
INSERT INTO "user" VALUES (2, 1, 'hiroshimaadmin', '統括管理者承認', 'd004', 'test@test.local', 's@rms', '　');
INSERT INTO "user" VALUES (3, 1, 'supportadmin', '統合運用管理者', 'd004', 'test@test.local', 's@rms', '　');
INSERT INTO "user" VALUES (4, 1, 'hiroshimainfo', '統括管理者受入', 'd004', 'test@test.local', 's@rms', '　');


--
-- Name: user_user_pkey_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('user_user_pkey_seq', 4, true);


--
-- Data for Name: workflow_apply_route; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO workflow_apply_route VALUES ('d708', 'self', 1);
INSERT INTO workflow_apply_route VALUES ('d708', 'selfowner', 2);
INSERT INTO workflow_apply_route VALUES ('d708', 'hiroshimainfo', 3);
INSERT INTO workflow_apply_route VALUES ('d708', 'hiroshimaadmin', 4);
INSERT INTO workflow_apply_route VALUES ('d709', 'self', 1);
INSERT INTO workflow_apply_route VALUES ('d709', 'selfowner', 2);
INSERT INTO workflow_apply_route VALUES ('d709', 'hiroshimainfo', 3);
INSERT INTO workflow_apply_route VALUES ('d709', 'supportadmin', 4);
INSERT INTO workflow_apply_route VALUES ('d709', 'hiroshimaadmin', 5);
INSERT INTO workflow_apply_route VALUES ('d710', 'self', 1);
INSERT INTO workflow_apply_route VALUES ('d710', 'selfowner', 2);
INSERT INTO workflow_apply_route VALUES ('d710', 'hiroshimainfo', 3);
INSERT INTO workflow_apply_route VALUES ('d710', 'hiroshimaadmin', 4);
INSERT INTO workflow_apply_route VALUES ('d711', 'self', 1);
INSERT INTO workflow_apply_route VALUES ('d711', 'selfowner', 2);
INSERT INTO workflow_apply_route VALUES ('d711', 'hiroshimainfo', 3);
INSERT INTO workflow_apply_route VALUES ('d711', 'supportadmin', 4);
INSERT INTO workflow_apply_route VALUES ('d711', 'hiroshimaadmin', 5);
INSERT INTO workflow_apply_route VALUES ('d712', 'self', 1);
INSERT INTO workflow_apply_route VALUES ('d712', 'selfowner', 2);
INSERT INTO workflow_apply_route VALUES ('d712', 'hiroshimainfo', 3);
INSERT INTO workflow_apply_route VALUES ('d712', 'supportadmin', 4);
INSERT INTO workflow_apply_route VALUES ('d712', 'hiroshimaadmin', 5);


--
-- PostgreSQL database dump complete
--

