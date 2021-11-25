# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or find_or_create_byd alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.find_or_create_by([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.find_or_create_by(name: 'Luke', movie: movies.first)



Prefecture.find_or_create_by(name: '東京', slug: 'tokyo')
Prefecture.find_or_create_by(name: '神奈川', slug: 'kanagawa')
Prefecture.find_or_create_by(name: '千葉', slug: 'chiba')
Prefecture.find_or_create_by(name: '埼玉', slug: 'saitama')
Prefecture.find_or_create_by(name: '栃木', slug: 'tochigi')
Prefecture.find_or_create_by(name: '茨城', slug: 'ibaraki')
Prefecture.find_or_create_by(name: '群馬', slug: 'gunma')


#Venues.find_or_create_by(prefecture_id: 1, name: "", station: "", is_active: true)


#Venue.find_or_create_by(prefecture_id: 3, name: "", station: "海浜幕張", is_active: true)
#Venue.find_or_create_by(prefecture_id: 3, name: "", station: "海浜幕張", is_active: true)




venues = [
    {pid: 1, name: 'TSUTAYA O-EAST', station: '渋谷'},
    {pid: 1, name: 'TSUTAYA O-WEST', station: '渋谷'},
    {pid: 1, name: '大和田さくらホール', station: '渋谷'},
    {pid: 1, name: '渋谷ストリームホール', station: '渋谷'},
    {pid: 1, name: 'shibuya duo MUSIC EXCHANGE', station: '渋谷'},
    {pid: 1, name: '渋谷チェルシーホテル', station: '渋谷'},
    {pid: 1, name: '渋谷スパイラル', station: '渋谷'},
    {pid: 1, name: '渋谷クアトロ', station: '渋谷'},

    {pid: 1, name: '代官山LOOP', station: '代官山'},
    {pid: 1, name: 'UNIT代官山', station: '代官山'},

    {pid: 1, name: '原宿ストロボカフェ', station: '原宿'},
    {pid: 1, name: '原宿クエストホール', station: '原宿'},

    {pid: 1, name: '原宿ASTRO HALL', station: '明治神宮前'},
    {pid: 1, name: 'ラフォーレミュージアム原宿', station: '明治神宮前'},
    {pid: 1, name: '代々木第一体育館', station: '明治神宮前'},
    {pid: 1, name: 'ベルエッポック美容専門学校', station: '明治神宮前'},

    {pid: 1, name: 'サントリーホール', station: '恵比寿'},
    {pid: 1, name: 'LIQUID ROOM', station: '恵比寿'},
    {pid: 1, name: 'ザ・ガーデンルーム', station: '恵比寿'},
    {pid: 1, name: 'ザ・ガーデンホール', station: '恵比寿'},


    {pid: 1, name: 'EX THEATER ROPPONGI', station: '六本木'},

    {pid: 1, name: '赤坂ACTシアター', station: '赤坂'},
    {pid: 1, name: 'マイナビBLITZ赤坂', station: '赤坂'},

    {pid: 1, name: '東京国際フォーラム', station: '有楽町'},
    {pid: 1, name: 'よみうりホール', station: '有楽町'},
    {pid: 1, name: 'ヒューリックホール東京', station: '有楽町'},

    {pid: 1, name: '新宿ReNY', station: '新宿・西新宿・都庁前'},
    {pid: 1, name: 'Zepp Tokyo', station: '青海・東京テレポート'},
    {pid: 1, name: 'Zepp Diver City', station: '台場・東京テレポート'},
    {pid: 1, name: '東京ビッグサイト', station: '国際展示場・東京ビッグサイト'},
    {pid: 1, name: '豊洲PIT', station: '豊洲・新豊洲'},
    {pid: 1, name: '新木場スタジオコースト', station: '新木場'},
    {pid: 1, name: 'オリンパスホール八王子', station: '八王子'},
    {pid: 1, name: '幕張メッセ', station: '海浜幕張'},
    {pid: 1, name: '人見記念講堂', station: '三軒茶屋'},
]

venues.each do |data|
  Venue.find_or_create_by(
    prefecture_id: data[:pid],
    name: data[:name],
    station: data[:station],
    is_active: true
    )
end


items = [
  {name: '白ガム', comment: 'ロール単位', team: 0},
  {name: '養生', comment: 'ロール単位', team: 0},
  {name: 'セロテ', comment: 'ロール単位', team: 0},
  {name: '黒ガム', comment: 'ロール単位', team: 0},
  {name: 'Pロープ', comment: 'ロール単位', team: 0},
  {name: 'レインコート', comment: '', team: 0},
  {name: 'オリコン', comment: '', team: 0},
  {name: '文具ボックス', comment: '', team: 0},
  {name: 'トラメガ', comment: '単一電池使用', team: 0},
  {name: 'ペンライト', comment: '単四電池使用', team: 0},

  ]


items.each do |data|
  Item.find_or_create_by(
    name: data[:name],
    comment: data[:comment],
    team: data[:team],
    is_active: true
    )
end