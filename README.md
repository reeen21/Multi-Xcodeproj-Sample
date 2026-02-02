# MultiXcodeprojSample

環境別に分離された複数個の`.xcodeproj`を持つ構成のサンプルプロジェクトです。

## プロジェクト構造

```
MultiXcodeprojSample/
├── SampleApp-Dev/          # 開発環境用アプリ
├── SampleApp-STG/          # ステージング環境用アプリ
├── SampleApp-Prod/         # 本番環境用アプリ
├── Repository/             # データ層のSwift Package
├── View/                   # UI層のSwift Package
├── Base.xcconfig           # 共通設定ファイル
└── MultiXcodeprojSample.xcworkspace
```
## セットアップ

1. リポジトリをクローン
2. `MultiXcodeprojSample.xcworkspace` をXcodeで開く
3. ビルド対象のスキームを選択してビルド

## ビルド

ワークスペースを開いた状態で、各環境のアプリをビルドできます：

- `SampleApp-Dev` scheme: 開発環境用アプリ
- `SampleApp-STG` scheme: ステージング環境用アプリ
- `SampleApp-Prod` scheme: 本番環境用アプリ
