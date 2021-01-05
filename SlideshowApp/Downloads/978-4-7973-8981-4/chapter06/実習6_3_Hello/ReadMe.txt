==========================================================================
■6_3_Helloプロジェクトについて

このプロジェクトは画面上にラベルとボタンを表示するためのプロジェクトです。
Auto Layoutを使わずに、手動でUI部品を適切な位置に配置します。
==========================================================================
■ファイルの説明

AppDelegate.swift
アプリの起動やバックグラウンド状態に移行する際などの状態遷移をコントロールする。

ViewController.swift
ビューコントローラーファイル。

Main.storyboard
ストーリーボードファイル。グラフィカルに画面にUI部品を配置することができる。ラベルとボタンを配置し、手動でUI部品の相対位置を設定する。

Assets.xcassets
画像が格納されたフォルダ。アプリアイコンの画像などを設定する。

LaunchScreen.storyboard
起動画面を設定するファイル。

Info.plist(Hello用)
アプリの設定ファイル。通常は直接このファイルを編集せずに、プロジェクトファイルから間接的に編集する。

HelloTests.swift
テストコードを記述するためのファイル

Info.plist(HelloTests用)
テスト用ターゲットの設定ファイル

Hello.app
アプリ本体

HelloTests.xctest
テスト用ターゲット

===========================================================================
■動作環境

・Xcode 8.0 もしくはそれ以降
・Mac OS X 10.11.5 もしくはそれ以降
・iOS 10.0 もしくはそれ以降
・iPhone 5, iPhone 5c, iPhone 5s, iPhone 6, iPhone 6 Plus, iPhone 6s, iPhone 6s Plus, iPod Touch 6th and later, iPad Pro, iPad 4th, iPad Air, iPad Air 2, iPad mini 2, iPad mini 3,iPad mini 4
===========================================================================
Copyright (C) 2016 TEKTEK Inc. All rights reserved.