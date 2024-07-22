# infinity_won

# チャレンジしたこと
多言語対応
```
// 多言語対応追加時のコマンド
flutter gen-l10n
```

## メモ
### DBセットアップコマンド
```
dart run sqflite_common_ffi_web:setup
```

### freezedの再読み込みコマンド
```
fvm flutter pub run build_runner build --delete-conflicting-outputs
```

### riverpod_generator
```
dart run build_runner watch
```

# 進捗
- [ ] 解答をDBに登録できるようにする
  - DBと型周りは実装ずみ
  - 動作確認がまだ
- [ ] 正解をDBに登録できるようにする
- [ ] 正答確認画面の項目をDBから取得する
- [ ] 解答画面表示時に生成する空の解答情報（provider）を作るための要素（test_infoのidと問題が第何回か）をDBから取得できるようにする
- [ ] ホーム画面に作成しているテストを表示する