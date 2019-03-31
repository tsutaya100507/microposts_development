class Relationship < ApplicationRecord
  belongs_to :user
  # :followという名前のクラスは存在しないのでUserモデルを参照するようにclass_nameを指定
  belongs_to :follow, class_name: 'User'
end
