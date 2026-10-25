Feature: 给问题提交回答
  As a 校园用户
  I want 给别人的问题提交回答
  So that 我可以帮助同学解决疑问

  Scenario: 正常提交回答（快乐路径）
    Given 我登录平台，打开一条问题详情页
    When 我在回答框输入回答内容，点击提交回答
    Then 回答保存成功
    And 页面刷新，我的回答展示在问题下方

  Scenario: 回答内容为空提交
    Given 我登录平台，打开一条问题详情页
    When 我不输入任何内容，直接点击提交回答
    Then 页面提示回答内容不能为空
    And 回答提交失败

  Scenario: 查看已有回答
    Given 一条问题下面已经存在多条回答
    When 我打开该问题详情页
    Then 页面按时间顺序展示所有回答内容
