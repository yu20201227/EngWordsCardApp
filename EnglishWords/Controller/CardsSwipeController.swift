//
//  CardsSwipeController.swift
//  EnglishWords
//
//  Created by Owner on 2021/02/03.
//

import UIKit
import VerticalCardSwiper


class CardsSwipeController: UIViewController, VerticalCardSwiperDelegate, VerticalCardSwiperDatasource {
    
    
    
    var Englishwords = ["cast", "altogether","epidemic","community","record","elderly","strength","potential","modern","confidence","faith","ignore","outcome","desperate","rarely","heal","brief","link","neglect","degree","tackle","broad","senior","angle","abstract","perfect","representation","explore","background","analyze","design","character","generate","search","web","advantage","adapt","emotion","mood","brain","technology","interpretation","recognition","explain","situation","scream","intelligent","anxious","operate","figure","mechanic","engineering","virtually","fix","aloud","ahead","phrase","trouble","overall","track","distinguish","focus","enhance","prior","visual","lifetime","chore","foundation","discourage","material","elaborate","comprehend","type","paragraph","grade","dedicate","confuse","universal","none","condition","contain","result","molecule","oxygen","hydrogen","attribute","conduct","volume","disappear","steam","fairly","several","occur","neither","notice","refrigerator","normal","fill","theory","accidental","convince","mistake","surprise","allow","instruct","attention","observe","phenomenon","solve","mystery","actually","contrary","expect","experiment","air","freeze","severe","demonstrate","west","calorie","transport","import","quarter","climate","population","trade","account","estimate","empty","shelf","cent","per","panic","inspire","protest","illustrate","fuel","atmosphere","pump","gas","greenhouse","weight","reach","road","mile","travel","vast","middle","distant","wonder","enough","rate","poll","cite","adolescent","nearly","art","worship","far","score","achievement","predict","factor","single","teenager","schedule","kid","option","decline","steady","last","daily","average","committee","according","preserve","lesson","quality","importance","despite","examine","knowledge","emerge","brand","company","manufacturer","piece","flood","colleague","finding","marketing","professor","assistant","intense","benefit","somebody","consume","meal","bit","iron","impact","nobody","deal","case","access","fundamental","nutrition","global"]
    
    
    
    var JapaneseWords = ["投げかける・に役を割り当てる・「配役」","完全に・全く・要するに・合計して", "「伝染病・流行」・流行の","「地域社会」","記録する・録画する・「記録」","年配の","「強さ」","潜在的な・可能性のある・「潜在能力」","現代の","「自信」","「信頼」","無視する","「結果」","絶望的な・必死の","滅多に〜しない","癒す・癒える","短時間の・簡潔な","「関連性」・をつなぐ","「軽視」・放っておく","「学位・程度」","取り組む・捕まえる・「タックル」","広範囲に及ぶ","上位の・年上の・「年長者」","「観点・角度」","抽象的な・要約する・「要約」","完全な・を完成する","「表現」","探究する・探検する","「経歴・背景」","を分析する","を設計する・「設計図」","「人物・特徴」","を生み出す","探す・「捜査」","「ウェブ・クモの巣」","「利点・利益」","適応する・合わせる","「感情」","「気分」","「脳・優秀な人」","「科学技術」","「解釈・通訳」","「認識・承認","説明する","「状況・立場・位置」","金切り声を出す・「金切り声」","知能の高い","心配して・切望して","を操作する・作用する・手術する","と思う・「数字・姿・人物・図形」","「機械工」","「工学」","ほとんど・実質的には","修理する・固定する・用意する","声に出して","前方へ・事前に","「句・言い回し」","「困ること・問題点」","全体の","を追う・「追った跡」","区別する","高める・向上させる","前の・優先的な","視覚の・目に見える","「一生」","「退屈な仕事・雑用」","「基礎・設立」","落胆させる","「資料・原料・物質」","詳しく述べる","理解する","「タイプ・型」","「段落」","「学年・成績」","ささげる","混同する","普遍的な・全世界の","「条件・状況」","含む","終わる・「結果」","分子","酸素","水素","帰する・「特質」","行う・指揮する・案内する・「行為・管理」","「量・容積・容量」","消える","「蒸気」","かなり・適切に","いくつかの","起こる・（出来事が）浮かぶ","どちらも〜ない","に気づく・「注意・通知」","「冷蔵庫」","標準の","満たす・占める","「理論」","偶然の","を確信（納得）させる","間違える・「間違い」","驚き・驚かせる","を認める・許す","に指示する・教える","「注目・注意」","観察する・気付く","「現象」","解決する・解答する","「不思議」","実は","反対の・「逆」","予期する・期待する","実験する","「空気」","凍る・動きを止める","過酷な・深刻な","証明する・実演する・デモをする","西の","「カロリー」","輸送する・「輸送機関」","輸入する・「輸入（品）」","4分の１","「気候」","人口","「貿易・商売・職業」・取引する","占める・説明する","見積もる","空になる","「棚」","「セント」","〜につき","「大混乱・パニック」","鼓舞する","「抗議・主張」・抗議する","説明する","「燃料」","「大気・雰囲気」","排出する・汲み上げる「ポンプ」","「ガス・気体・ガソリン」","「温室」","「重量・重要さ」","着く・達する","「道路」","マイル","旅行する・進む・「旅行」","広大な","中間の・中央の","遠い・冷ややかな","「不思議・驚異」・不思議に思う","十分な","評価する・「割合・速度・料金」","「世論調査」","引用する・挙げる","「青年」・青年期の","ほとんど","「芸術作品・美術・技術」","礼拝する・「崇拝・礼拝」","大いに・遠くへ・遠い","「得点・楽譜」・得点する","「（学業）成績・業績・達成」","予言する","「要因・因子」","まさに・ただ一つの・個々の","「１０代の若者」","「スケジュール」・予定する","「子供」・冗談を言う","「選択肢」","「減少・低下」・衰退する・断る","一定の・安定した","最後の・この前の・長持ちする","日常の","「平均」・平均的な","「委員会」","一致して・したがって","維持する・保存する","「教訓・レッスン」","「質・特性」","「重要性」","にもかかわらず","調べる・診察する","「知識・認識」","明らかになる・現れる","「ブランド・銘柄」","「会社・同僚」","「製造業者・メーカー」","１つの・「部品」","あふれる・水浸しにする・「洪水」","「同僚」","「発見物・報告・判決」","「マーケティング」","「教授」","「助手」","強烈な","「恩恵・利益」・利益を与える","誰か","消費する","「食事」","少し","「鉄」","「影響・衝撃・衝突」","誰も〜ない","「程度・量・取引」・扱う・取引する","「症例・実例・場合・事件・主張・事実・箱","「利用権・接近」・アクセスする","基本的な・必須の","「栄養」","世界的な・全体的な"]
    
    
    
    @IBOutlet weak var  cardSwiper:VerticalCardSwiper!
    @IBOutlet weak var toListImage:UIButton!
    
    var eigodeAsobo = [String]()
    var nihongodeAsobo = [String]()
    
    var knowEngWord = [String]()
    var knowJapaWord = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardSwiper.delegate = self
        cardSwiper.datasource = self
        cardSwiper.register(nib:UINib(nibName: "CardViewCell", bundle: nil), forCellWithReuseIdentifier: "CardViewCell")
        cardSwiper.reloadData()
        toListImage.imageView?.image = UIImage(named: "list-2389219_1280-1")
        
    }
    
    
    func numberOfCards(verticalCardSwiperView: VerticalCardSwiperView) -> Int {
        Englishwords.count
    }
    
    func cardForItemAt(verticalCardSwiperView: VerticalCardSwiperView, cardForItemAt index: Int) -> CardCell {
        
        if let cardCell = verticalCardSwiperView.dequeueReusableCell(withReuseIdentifier: "CardViewCell", for: index) as? CardViewCell {
                        
            let engWords = Englishwords[index]
            let japaWords = JapaneseWords[index]
            cardCell.setRandomBackgroundColor()
            cardCell.EngMeaning.text = engWords
            cardCell.JapaMeaning.text = japaWords
           
            return cardCell
        }
        return CardCell()
    }
    
    func willSwipeCardAway(card: CardCell, index: Int, swipeDirection: SwipeDirection) {
        
        if swipeDirection == .Right {
            knowEngWord.append(Englishwords[index])
            knowJapaWord.append(JapaneseWords[index])
            }
        
        Englishwords.remove(at: index)
        JapaneseWords.remove(at: index)
        
        if Englishwords.count == 0 {
            if swipeDirection == .Right {
                performSegue(withIdentifier: "toList", sender: nil)
            } else {
                if Englishwords.count == 0{
                    if swipeDirection == .Left {
                        performSegue(withIdentifier: "toList", sender: nil) }
                }
            }
        }
    }
    @IBAction func toFavListButton(sender:UIButton){
        performSegue(withIdentifier: "toList", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listVC = segue.destination as! ListViewController
        listVC.knowEngWords = self.knowEngWord
        listVC.knowJapaWords = self.knowJapaWord
    }
    @IBAction func goBackButton(_ sender:UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

