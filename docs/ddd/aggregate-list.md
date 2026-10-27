\# 聚合识别清单 Lab3 | 成员4

基于CampusOverflow校园问答平台事件风暴识别



\## 聚合1：Question 问题聚合

\- 所属限界上下文：QA问答上下文

\- 聚合根：Question（问题）

\- 内部实体：QuestionComment 问题评论

\- 值对象：QuestionTitle 标题、QuestionContent 内容、QuestionTag 标签、CreateTime 创建时间

\- 业务不变式：

1\. 问题标题不能为空；

2\. 一个问题可以绑定0\~多个标签；

3\. 问题创建后，创建人可以编辑标题和内容，但是不能删除他人的评论；



\## 聚合2：Answer 回答聚合

\- 所属限界上下文：QA问答上下文

\- 聚合根：Answer（回答）

\- 内部实体：AnswerComment 回答评论

\- 值对象：AnswerContent 回答内容、AcceptStatus 采纳状态

\- 业务不变式：

1\. 回答内容不能为空；

2\. 一个问题最多只能有1个被采纳的回答；

3\. 采纳状态一旦确定，允许创建问题的用户修改；



\## 聚合3：User 账号聚合

\- 所属限界上下文：Identity身份上下文

\- 聚合根：User（用户）

\- 值对象：UserName用户名、Password密码、Avatar头像

\- 业务不变式：

1\. 用户名在系统内唯一，不能重复；

2\. 用户名不允许为空；



\## 聚合4：Favorite 收藏聚合

\- 所属限界上下文：QA问答上下文

\- 聚合根：FavoriteCollection收藏夹

\- 值对象：FavoriteItem收藏条目

\- 业务不变式：

1\. 同一个用户，不能重复收藏同一个问题；

2\. 收藏记录仅本人可见；

