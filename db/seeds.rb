# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

  # movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
  # Character.create(name: 'Luke', movie: movies.first)


# Categoryデータ

grade_one = Category.create(name: "レディース")
grade_two = Category.create(name: "メンズ")
grade_three = Category.create(name: "ベビー・キッズ")
grade_four = Category.create(name: "インテリア・住まい・小物")
grade_five = Category.create(name: "本・音楽・ゲーム")
grade_six = Category.create(name: "おもちゃ・ホビー・グッズ")
grade_seven = Category.create(name: "コスメ・香水・美容")
grade_eight = Category.create(name: "家電・スマホ・カメラ")
grade_nine = Category.create(name: "スポーツ・レジャー")
grade_ten = Category.create(name: "ハンドメイド")
grade_eleven = Category.create(name: "チケット")
grade_twelve = Category.create(name: "自動車・オートバイ")
grade_thirteen = Category.create(name: "その他")

one_top = grade_one.children.create(name: "トップス")
one_jacet = grade_one.children.create(name: "ジャケット/アウター")
one_pants = grade_one.children.create(name: "パンツ")
one_skirt = grade_one.children.create(name: "スカート")
one_onePiece = grade_one.children.create(name: "ワンピース")
one_shoes = grade_one.children.create(name: "靴")
one_roomwear = grade_one.children.create(name: "ルームウェア")
one_accessory = grade_one.children.create(name: "小物")

one_top.children.create([{name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(七分/長袖)"}, {name: "キャミソール"}, {name: "ホルターネック"}, {name: "チュニック"}, {name: "アンサンブル"}, {name: "パーカー"}, {name:"ベアトップ・チューブトップ"}, {name:" Tシャツ/カットソー(半袖/袖なし)"}, {name:"シャツ/ブラウス(半袖/袖なし)"}, {name:"ポロシャツ"}, {name:"タンクトップ"}, {name:"ニット/セーター"}, {name:"カーディガン/ボレロ"}, {name:"ベスト/ジレ"}, {name:"トレーナー/スウェット"}, {name:"ジャージ"}, {name:"その他"}])
one_jacet.children.create([{name:"ノーカラージャケット"},{name:"レザージャッケット"},{name:"ライダースジャケット"}])
one_pants.children.create([{name:"ショートパンツ"},{name:"ハーフパンツ"},{name:"ワークパンツ/カーゴパンツ"}])
one_skirt.children.create([{name:"ひざ丈スカート"},{name:"キュロット"},{name:"ミニスカート"}])
one_onePiece.children.create([{name:"ひざ丈ワンピース"},{name:"ミニワンピース"}])
one_shoes.children.create([{name:"ハイヒール"},{name:"ブーツ"},{name:"スニーカ−"}])
one_roomwear.children.create([{name:"パジャマ"},{name:"ルームウェア"}])
one_accessory.children.create([{name:"ネックレス"},{name:"ブレスレット"},{name:"ブレスレット"},{name:"バングル/リストバンド"}])


two_top = grade_two.children.create(name: "トップス")
two_jacet = grade_two.children.create(name: "ジャケット")
two_pants = grade_two.children.create(name: "パンツ")
two_shoes = grade_two.children.create(name: "靴")
two_bag = grade_two.children.create(name: "バッグ")

two_top.children.create([{name: "Tシャツ,カットソー(七分/半袖)"}, {name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "ポロシャツ"},{name: "タンクトップ"}, {name: "パーカー"}])
two_jacet.children.create([{name: "テーラードジャケット"}, {name: "ノーカラージャケット"}, {name:"レザージャケット"}, {name:"ロングコート"}, {name:"ダッフルコート"}])
two_pants.children.create([{name:"デニム/ジーンズ"}, {name:"ショートパンツ"}, {name:"ペインターパンツ"}, {name:"チノパン"}, {name: "オーバーオール"}, {name:"サルエルパンツ"}])

three_girltop = grade_three.children.create(name: "ベビー服(女の子用)")
three_boytop = grade_three.children.create(name: "ベビー服(男の子用)")
three_shoes = grade_three.children.create(name: "キッズ靴")

three_girltop.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"}, {name: "ワンピース"}])
three_boytop.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "おくるみ"},{name: "ロンパース"}])
three_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"}])
