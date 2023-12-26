#テーブル名:作品データ
| カラム名 | データ型 | NULL | キー | 初期値 |AUTO INCREMENT |
| --------- | --------- | --------- | --------- | --------- | --------- |
| id | int | - | primary | 0 | yes |
| シーズン | int | yes | - | - | - |
| エピソード番号 | int | yes | - | - | - |
| エピソードタイトル | text | - | - | - | - |
| エピソード詳細 | text | - | - | - | - |
| 再生時間 | int | - | - | 0 | not null |
| ジャンル | varchar(100) | - | index | - | not null |

#テーブル名:番組データ
| カラム名 | データ型 | NULL | キー | 初期値 |AUTO INCREMENT |
| --------- | --------- | --------- | --------- | --------- | --------- |
| 番組id | int | - | primary | 0 | yes |
| 番組タイトル | varchar(100) | - | - | - | not null |
| チャンネル | varchar(100) | - | - | - | - |
| 放送日時 | datetime | - | - | - | - |
| 閲覧数 | int | - | - | 0 | - |
| 作品id | int | - |  | 0 | - |
外部キー制約:作品idに対して作品データテーブルからid