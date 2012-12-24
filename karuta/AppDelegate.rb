#
#  AppDelegate.rb
#  karuta
#
#  Created by Ryo Fujita on 12/24/2012.
#  Copyright 2012 Ryo Fujita. All rights reserved.
#

SAY = '/usr/local/bin/saykana -s 70'

class AppDelegate
    attr_accessor :window
    def applicationDidFinishLaunching(a_notification)
        @karuta = Karuta.new
    end

    def reset(sender)
        @karuta.reset
    end
    def next_card(sender)
        @karuta.next_card
    end
    def read(sender)
        @karuta.read
    end

end

class Karuta
    def initialize
        self.reset
    end

    def reset
        @yomifuda = YOMIFUDA.split("\n").sort_by{rand}
    end

    def read
        system "#{SAY} \"#{@yomifuda.first}\""
    end

    def next_card
        @yomifuda.shift
        self.read
    end
end


YOMIFUDA = <<EOS
あかんべ だいすき いたずら ノンタン
いない いない ばあー くまさんが ばー
うさぎさんの おねしょは ならんんで みっつ えー びー しー
えーん えーん ちびっこかめさん ないている
おまけの おまけの きしゃ ぽっぽ ぽーっと なったら ぶらんこ かわる
かみくず ごみくず ぱっぱら ぱなし
きれい きれい にじのトンネル しゅっぽっぽ
くまさんの おねしょは でかでか おねしょ
けんかだ けんか ノンタンとぶたさん
さかなの かたちは ノンタンのおねしょ
しらないねぇ 「にゅる」 たこさんが いった
すってん ころりん ノンタン いたた
せなか ごしごし あらいっこ
そらから すい かもめが すい こんにちは
たぬきさんの おねしょは まんまる おつきさま
ちびっこ かめさん かあさん みいつけた
つきよのばん ほーほーほー ふくろうさんがよぶ
てんてんてん はちさんとんで はちのじ かいた
とってん とってん およぐの だいすき
ないしょ ないしょ のんたんに ないしょ
にこにこ いいな クリスマス いいな
ぬきあし さしあし しのびあし
ねこの サンタは ねこサンタ
のせて のせて ノンタン ブランコのせて
はーい はーとのかたちは ぶたさんの おねしょ
ひとりで たったか ノンタン さんぽ
ふうせんガム ぷーぷー ふくらまそう
へへへのへ あっぷっぷ にらめっこしましょ
ほわほわほわわ ノンタン そらを とんでいる
まてまてボール どこいくの まてまてボール
みんなで つくろう おおきなケーキ
むしさん ぶらんこ ぶーらん ぶーらん
めいろで できてる ねずみのおうち
もう いやいや かみくず ごみくず おおそうじ
やっぱり よるは おやすみなさい
ゆきがっせん わっせ わっせ まけるな わっせ
よくみがこう たべたあとは はみがき しゅっしゅっ
らーら ぱーぱ ラッパふいて らっぱっぱ
りんご ごろごろ ごっつんこ りすさん
るすばん くまさん おえかき してる
れんしゅう れんしゅう はしれ はしれ
ろうそく よんほん ノンタンの たんじょうび
わっしょい わっしょい おふとん ほそう
はさみを かっちゃん かにさん かっちゃん
んんん ノンタン トイレで うんち
EOS
