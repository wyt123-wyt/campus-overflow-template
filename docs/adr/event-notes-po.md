# PO业务事件草稿笔记
实验3：事件风暴｜PO记录
基于Sprint1 MVP业务范围：用户登录、浏览问题列表、查看问题详情、发布问题、提交回答。
> 规则：领域事件使用【业务过去式】，Sprint1不包含点赞、收藏、采纳等功能。

## 识别出的领域事件
1. UserLoggedIn（用户已登录）
2. QuestionListQueried（问题列表已查询）
3. QuestionDetailViewed（问题详情已查看）
4. QuestionCreated（问题已创建）
5. AnswerSubmitted（回答已提交）

## 会议讨论记录
1. 讨论点：是否加入用户注册事件
   PO裁决：Sprint1 MVP不做注册，只使用已有账号登录，注册放到后续Sprint。
2. 讨论点：回答能不能脱离问题单独存在
   PO裁决：回答必须依附于问题，不能独立存在。
3. 排除事件：VoteCreated（投票事件），不属于Sprint1，后续迭代再加入。
