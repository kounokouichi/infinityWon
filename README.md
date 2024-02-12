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