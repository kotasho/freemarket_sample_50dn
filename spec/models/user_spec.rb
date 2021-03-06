require 'rails_helper'

describe User do
  describe '#create' do
    # email、passwordとpassword_confirmationが存在すれば登録できる
    it "is valid with an email, password, password_confirmation, nickname, first_name, last_name, kana_first_name, kana_last_name, birth_date" do
      user = build(:user)
      expect(user).to be_valid
    end
    # nicknameが空では登録できない
    it "is invalid without nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end
    # firstnameが空では登録できない
    it "is invalid without first name" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("を入力してください")
    end
    # lastnameが空では登録できない
    it "is invalid without last name" do
      user = build(:user, last_name: "")
      user.valid?
      expect(user.errors[:last_name]).to include("を入力してください")
    end
    # firstname(カナ)が空では登録できない
    it "is invalid without kana first name" do
      user = build(:user, kana_first_name: "")
      user.valid?
      expect(user.errors[:kana_first_name]).to include("を入力してください")
    end
    # lastname(カナ)が空では登録できない
    it "is invalid without kana last name" do
      user = build(:user, kana_last_name: "")
      user.valid?
      expect(user.errors[:kana_last_name]).to include("を入力してください")
    end 
    # birth dateが空では登録できない
    it "is invalid without birth_date" do
      user = build(:user,  birth_date: "")
      user.valid?
      expect(user.errors[:birth_date]).to include("を入力してください")
    end
    # emailが空では登録できない
    it "is invalid without email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    # passwordが空では登録できない
    it "is invalid without password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    # passwordが存在してもpassword_confirmationが空では登録できない
    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end
    # # 重複したemailが存在する場合登録できない
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("は、すでに存在するメールアドレスです")
    end
    # # passwordが6文字以上であれば登録できる
    it "is valid with a password that has more than 6 characters" do
      user = create(:user, password: "000000",password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end
    # # passwordが5文字以下であれば登録できない
    it "is invalid with a password that has less than 5 characters " do
      user = build(:user, password: "00000", password_confirmation: "00000")
      user.valid?
      expect(user.errors[:password][0]).to include("パスワードは６文字以上入力ください")
    end
  end
end
