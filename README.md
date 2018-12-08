# StartRxSwift

## セットアップ

### CocoaPodsのインストール

bundlerでセットアップを行う。

1. pathを指定してインストールする。

```
$ bundle install --path vendor/bundle
```

2. インストールできたことを確認する。

```
$ bundle exec pod --version
1.5.3
```
3. CocoaPodsのセットアップを行う。

```
$ bundle exec pod setup
```

### RxSwiftのインストール

CocoaPodsでセットアップを行う。

1. Podfileを作成する。

```
$ bundle exec pod init
```

2. Podfileを変更する。

```
# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'StartRxSwift' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for StartRxSwift
  pod 'RxSwift', '~> 4.0'
  pod 'RxCocoa', '~> 4.0'

end
```

3. RxSwiftをインストールする。

```
$ bundle exec pod install
```


