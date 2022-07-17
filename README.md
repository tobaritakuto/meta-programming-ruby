# やること
- 『メタプログラミングRuby 第2版』を参考にしたコードを書く
  - 本と同じロジックで、**異なる**コードを書く
# 1.0 頭文字　M
> メタプログラミングとは、コードを記述するコードを記述することである。
## 1.1 ゴーストタウンと市場 [(コード)](ch01/1.1.rb)
- 言語要素(language constructs)
- イントロスペクション
  - https://learntutorials.net/ja/ruby/topic/8752/rubyのイントロスペクション
## 1.2 メタプログラマのボブの物語
### 1.2.1 ボブの最初の試み [(コード)](/ch01/1.2.1.rb)
- attr_reader
  - https://qiita.com/k-penguin-sato/items/5b75be386be4c55e3abf
- DB にテーブル、レコードを作成する Entity クラスを用意
  - Entity を継承し、Book テーブルにレコード(id,title,author)を追加更新できるクラスを用意
### 1.2.2 メタプログラミングに突入 [(コード)](ch01/1.2.2.rb)
- ActiveRecord::Baseを継承する  Book クラス
  - ActiveRecord が実行時にクラス名 Book を参照して(イントロスペクション)、  
    books テーブルにマッピングしている。
  - book.author を呼び出した場合、**実行時**に、ActiveRecord が  
  　books テーブルに　author カラムを見つけ、アクセサメソッド(getter,setter)を定義している。
### 1.2.3 頭文字Mとセカンドステージ
> メタプログラミングとは、言語要素を実行時に操作するコードを記述することである。
- ActiveRecord::Base を継承するだけで、実行時にアクセサメソッドが定義されるコードを書いたことになる。
## 1.3 メタプログラミングと Ruby
- C 言語で書かれたコードの言語要素の多くははコンパイル後に参照できないため、メタプログラミンング、  
　イントロスペクションをサポートしていない。
- C ++, や　Java では、コンパイル後も生き延びる言語要素はいくつかあり、一部のイントロスペクションは存在する。
- Ruby はコンパイル時が存在せず、言語要素のほとんどが実行時に使用可能である。  
　なので「現代のプログラミング言語のなかで、最もメタプログラミングに適したものだろう」。
# 月曜日：オブジェクトモデル
> すべての言語要素は、あるシステムのなかに共存しているというものだ。そのシステムのことをオブジェクトモデルと呼ぶ。
## 2.1 オープンクラス [(コード)](ch02/2.1.rb)
- Ruby 標準の String クラスをオープンしてメソッドを追加
- Test::Unit  
  - https://www.nslabs.jp/rubyrunit-ref.rhtml
### 2.1.1 クラス定義の内部 (コード省略)
- Ruby の class は、スコープ演算子のようなもの。  
  class 定義時に既にそのクラスが存在していたら、既存クラスに定義内容を追加する。
### 2.1.2 Monetize の例 (コード省略)
- Ruby ライブラリはオープンクラスを用いて標準クラスにメソッドを追加することがよくある。
### 2.1.3 オープンクラスの問題点 (コード省略)
- 標準クラスと同名のメソッドを上書きすると、標準クラスの既存のメソッドが使えなくなる。
  - 例) Array#replace
### 2.2 オブジェクトモデルの内部
#### インスタンス変数 (コード省略)
- Java と異なり、Ruby はクラスと変数に繋がりがなく、変数に値が代入されたとき初めて出現する。
#### メソッド (コード省略)
- オブジェクトのメソッドはオブジェクトのクラスに存在する。  
  - クラスに定義されたメソッドのうち、オブジェクトを介して呼び出す必要がある（クラスメソッドではない）  
    という意味で、そのメソッドをインスタンスメソッドと呼ぶ。
  - オブジェクトがクラスにあるメソッドを参照するという意味で、そのメソッドをメソッドと呼ぶ。
### 2.2.2 クラスの真相
### 2.2.3 定数
### 2.2.4 オブジェクトとクラスのまとめ
### 2.2.5 ネームスペースを使う
## 2.3 クイズ：引かれていない線
### 2.3.1 クイズの答え
## 2.4 メソッドを呼び出すときに何が起きているのか？
### 2.4.1 メソッド探索
### 2.4.2 メソッドの実行
### 2.4.3 Refinements
## 2.5 クイズ：絡み合ったモジュール
### 2.5.1 クイズの答え
## 2.6 まとめ
# 3 火曜日：メソッド
## 3.1 重複問題

