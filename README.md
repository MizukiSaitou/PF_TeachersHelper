# Teacher's Helper

![D0253C1C-E36E-4969-96F7-A6EBA3923F2B](https://user-images.githubusercontent.com/81802888/130174033-bf460529-a3bf-48b5-a4de-e17430d53115.png)

## サイト概要
個別指導の塾において生徒と講師の組み合わせは非常に重要であり、業務の中でもコマ組の変更がかなり要望として多い。
ボタンを一つ押せばその時間に生徒を受け持っていない講師が一覧で表示されたり、科目によって講師を表示できたりできる。
また、使用する一つのアプリケーションで生徒の成績も管理できればどの講師に授業を任せるなども一緒に管理できるため生徒の詳細から成績管理画面に飛べるようにした。

### サイトテーマ
* 塾の先生の業務負担を減らす。
* 生徒や講師情報を一つのアプリケーションで管理できる。
* 誰が運営しても同じ運営ができるようにする。

### テーマを選んだ理由
前職で個別指導の塾講師として働いていて1人で教室運営をしなければならず非常に大変だった。
特に業務を圧迫したのが生徒からの授業日の変更や、講師からのシフト変更の依頼の対応だった。
コマ組み用の専用のアプリケーションも存在していたが検索できる条件が少なくて、使い勝手が悪く自分以外の人に業務を依頼することができなかった。また生徒の情報を他のシステムにまたがって管理していて非常に使いづらかったため一元化できるようにしたかった。

### ターゲットユーザ
個別指導の授業形態をとる学習塾経営者、オンライン授業担当者

### 主な利用シーン
個別指導塾の運営時

## 設計書
* ER図
<details>
  <summary>クリックしてください</summary>

  ![ER図](https://user-images.githubusercontent.com/81802888/130184768-b0f85616-0aaf-4652-8ace-9367420ae7f8.png)

</details>

* 画面遷移図
<details>
  <summary>クリックしてください</summary>

  ![UI](https://user-images.githubusercontent.com/81802888/126859610-dba2ab69-6b90-49e6-a3c4-ffee0e2ea988.png)

</details>

* テーブル定義書
<details>
  <summary>クリックしてください</summary>

  ![テーブル定義書1](https://user-images.githubusercontent.com/81802888/130185009-95643396-3850-4070-a7e1-b4fdcb81f907.png)
  ![テーブル定義書2](https://user-images.githubusercontent.com/81802888/130185059-d7c5f2ca-901d-452b-a2bb-71aaf9491a0b.png)

</details>

* アプリケーション詳細設定
<details>
  <summary>クリックしてください</summary>

  ![アプリケーション詳細設計](https://user-images.githubusercontent.com/81802888/130185285-c20ed0e5-e194-411a-b4ce-a0e1ea7988b8.png)

</details>


## チャレンジ要素一覧
<https://docs.google.com/spreadsheets/d/1fjya-_SLIeqef4XbMeVU95bH90hxbzskcvMXRfiXQeA/edit?usp=sharing>

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9

## 使用素材
- Menu画面画像　shutter stock <https://www.shutterstock.com/ja/home>
- ロゴ画像　hatchful <https://hatchful.shopify.com/ja/>

