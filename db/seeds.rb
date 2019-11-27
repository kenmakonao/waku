# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Continent.create!(
	[
    {name: 'アジア',photo: open("#{Rails.root}/db/fixtures/140.jpg")},
    {name: 'ヨーロッパ',photo: open("#{Rails.root}/db/fixtures/141.jpg")},
    {name: 'アフリカ',photo: open("#{Rails.root}/db/fixtures/142.jpg")},
    {name: 'リゾート',photo: open("#{Rails.root}/db/fixtures/143.jpg")},
    {name: 'オセアニア',photo: open("#{Rails.root}/db/fixtures/144.jpg")},
    {name: '北米',photo: open("#{Rails.root}/db/fixtures/145.jpg")},
    {name: '南米',photo: open("#{Rails.root}/db/fixtures/146.jpg")},
    ]
    )

Category.create!(
	[
	{explanation: '自宅',icon: open("#{Rails.root}/db/fixtures/1.jpeg")},
	{explanation: '空港',icon: open("#{Rails.root}/db/fixtures/2.jpeg")},
	{explanation: 'ホテル',icon: open("#{Rails.root}/db/fixtures/3.jpeg")},
	{explanation: '買い物',icon: open("#{Rails.root}/db/fixtures/4.jpeg")},
	{explanation: '世界遺産',icon: open("#{Rails.root}/db/fixtures/5.jpeg")},
	{explanation: 'イベント',icon: open("#{Rails.root}/db/fixtures/6.jpeg")},
	{explanation: '建物',icon: open("#{Rails.root}/db/fixtures/7.jpeg")},
	{explanation: '音楽',icon: open("#{Rails.root}/db/fixtures/8.jpeg")},
	{explanation: 'レストラン',icon: open("#{Rails.root}/db/fixtures/9.jpeg")},
	{explanation: 'カフェ',icon: open("#{Rails.root}/db/fixtures/10.jpeg")},
	{explanation: '屋台',icon: open("#{Rails.root}/db/fixtures/11.jpeg")},
	{explanation: 'Ber',icon: open("#{Rails.root}/db/fixtures/12.jpeg")},
	{explanation: '飛行機',icon: open("#{Rails.root}/db/fixtures/13.jpeg")},
	{explanation: 'バス',icon: open("#{Rails.root}/db/fixtures/14.jpeg")},
	{explanation: '電車',icon: open("#{Rails.root}/db/fixtures/15.jpeg")},
	{explanation: '車',icon: open("#{Rails.root}/db/fixtures/16.jpeg")},
	{explanation: '徒歩',icon: open("#{Rails.root}/db/fixtures/17.jpeg")},
	{explanation: '船',icon: open("#{Rails.root}/db/fixtures/18.jpeg")},
	{explanation: 'メモ',icon: open("#{Rails.root}/db/fixtures/19.jpeg")},
	{explanation: '就寝',icon: open("#{Rails.root}/db/fixtures/20.jpeg")},
	{explanation: '起床',icon: open("#{Rails.root}/db/fixtures/21.jpeg")},
	{explanation: 'お気に入り',icon: open("#{Rails.root}/db/fixtures/22.jpeg")},
	{explanation: 'アクシデント',icon: open("#{Rails.root}/db/fixtures/23.jpeg")},
    ]
    )

Country.create!(
	[
	{continent_id: '1',name: '日本',money:'円',world_heritage: '東京',language: '日本語',photo: open("#{Rails.root}/db/fixtures/101.png")},
	{continent_id: '1',name: '韓国',money:'ウォン',world_heritage: 'ソウル',language: '韓国語',photo: open("#{Rails.root}/db/fixtures/102.png")},
	{continent_id: '1',name: '中国',money:'元',world_heritage: 'ソウル',language: '中語',photo: open("#{Rails.root}/db/fixtures/103.png")},
	{continent_id: '1',name: 'インド',money:'ルピー',world_heritage: 'ニューデリー',language: 'ヒンディー語',photo: open("#{Rails.root}/db/fixtures/104.png")},
	{continent_id: '1',name: 'タイ',money:'バーツ',world_heritage: 'バンコク',language: 'タイ語',photo: open("#{Rails.root}/db/fixtures/105.png")},
	{continent_id: '1',name: 'フィリピン',money:'ペソ',world_heritage: 'マニラ',language: 'フィリピン語',photo: open("#{Rails.root}/db/fixtures/106.png")},
	{continent_id: '1',name: 'カンボジア',money:'リエル',world_heritage: 'プノンペン',language: 'カンボジア語',photo: open("#{Rails.root}/db/fixtures/107.png")},
	{continent_id: '1',name: 'マレーシア',money:'リキット',world_heritage: 'クアラルンプール',language: 'マレー語',photo: open("#{Rails.root}/db/fixtures/108.png")},
	{continent_id: '1',name: 'シンガポール',money:'シンガポールドル',world_heritage: 'シンガポール',language: 'マレー語',photo: open("#{Rails.root}/db/fixtures/109.png")},
	{continent_id: '2',name: 'イギリス',money:'ユーロ',world_heritage: 'ロンドン',language: '英語',photo: open("#{Rails.root}/db/fixtures/110.png")},
	{continent_id: '2',name: 'フランス',money:'ユーロ',world_heritage: 'パリ',language: 'フランス語',photo: open("#{Rails.root}/db/fixtures/111.png")},
	{continent_id: '2',name: 'オランダ',money:'ユーロ',world_heritage: 'アムステルダム',language: 'オランダ語',photo: open("#{Rails.root}/db/fixtures/112.png")},
	{continent_id: '2',name: 'ドイツ',money:'ユーロ',world_heritage: 'ベルリン',language: 'ドイツ語',photo: open("#{Rails.root}/db/fixtures/150.png")},
	{continent_id: '2',name: 'イタリア',money:'ユーロ',world_heritage: 'ローマ',language: 'イタリア語',photo: open("#{Rails.root}/db/fixtures/113.png")},
	{continent_id: '2',name: 'スペイン',money:'ユーロ',world_heritage: 'マドリード',language: 'スペイン語',photo: open("#{Rails.root}/db/fixtures/114.png")},
	{continent_id: '2',name: 'ポルトガル',money:'ユーロ',world_heritage: 'リスボン',language: 'ポルトガル語',photo: open("#{Rails.root}/db/fixtures/115.png")},
	{continent_id: '6',name: 'アメリカ',money:'米ドル',world_heritage: 'ワシントン',language: '英語',photo: open("#{Rails.root}/db/fixtures/116.png")},
	{continent_id: '6',name: 'カナダ',money:'カナダドル',world_heritage: 'オタワ',language: '英語',photo: open("#{Rails.root}/db/fixtures/117.png")},
	{continent_id: '4',name: 'インドネシア',money:'ルピア',world_heritage: '東京',language: '日本語',photo: open("#{Rails.root}/db/fixtures/118.jpg")},
    {continent_id: '4',name: 'グアム',money:'米ドル',world_heritage: 'アメリカ同様',language: '英語',photo: open("#{Rails.root}/db/fixtures/119.jpg")},
	{continent_id: '4',name: 'ハワイ',money:'米ドル',world_heritage: 'アメリカ同様',language: '英語',photo: open("#{Rails.root}/db/fixtures/120.jpg")},
	{continent_id: '7',name: 'メキシコ',money:'メキシコペソ',world_heritage: 'メキシコシティー',language: 'スペイン語',photo: open("#{Rails.root}/db/fixtures/121.png")},
	{continent_id: '7',name: 'チリ',money:'チリペソ',world_heritage: 'サンティアゴ',language: 'スペイン語',photo: open("#{Rails.root}/db/fixtures/122.png")},
	{continent_id: '7',name: 'キューバ',money:'キューバペソ',world_heritage: 'ハバナ',language: 'スペイン語',photo: open("#{Rails.root}/db/fixtures/123.png")},
	{continent_id: '7',name: 'アルゼンチン',money:'アルゼンチンペソ',world_heritage: 'ブエノスアイレス',language: 'スペイン語',photo: open("#{Rails.root}/db/fixtures/124.png")},
	{continent_id: '7',name: 'ブラジル',money:'レアル',world_heritage: 'ブラジリア',language: 'ポルトガル語',photo: open("#{Rails.root}/db/fixtures/125.png")},
	{continent_id: '5',name: 'オーストラリア',money:'オーストラリアドル',world_heritage: 'キャンベラ',language: '英語',photo: open("#{Rails.root}/db/fixtures/126.png")},
	{continent_id: '5',name: 'ニュージーランド',money:'ニュージーランドドル',world_heritage: 'ウェリントン',language: '英語',photo: open("#{Rails.root}/db/fixtures/127.png")},
	{continent_id: '3',name: 'エジプト',money:'エジプトポンド',world_heritage: 'カイロ',language: 'アラビア語',photo: open("#{Rails.root}/db/fixtures/128.png")},
	{continent_id: '3',name: '南アフリカ',money:'ランド',world_heritage: 'プレトリア',language: '英語',photo: open("#{Rails.root}/db/fixtures/129.png")},
	{continent_id: '3',name: 'ガーナ',money:'ガーナセディ',world_heritage: 'アクア',language: '英語',photo: open("#{Rails.root}/db/fixtures/130.png")},
	{continent_id: '3',name: 'エチオピア',money:'ブル',world_heritage: 'アディスアベバ',language: 'アムハラ語',photo: open("#{Rails.root}/db/fixtures/131.png")},
	{continent_id: '3',name: 'モロッコ',money:'ディルハム',world_heritage: 'ラバド',language: 'アラビア語',photo: open("#{Rails.root}/db/fixtures/132.png")},
	{continent_id: '3',name: 'マダガスカル',money:'アリアリ',world_heritage: 'アリアリ',language: 'マダガスカル語',photo: open("#{Rails.root}/db/fixtures/151.png")}
    ]
    )
Admin.create!(password: "aaaaaa", email: "aa@aa")
