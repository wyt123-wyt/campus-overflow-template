Feature: 用户发布问题
  As a 校园用户
  I want 发布自己的问题
  So that 我可以向校内同学求助，解决学习上的困惑

  Scenario: 正常发布问题（快乐路径）
    Given 我已经登录平台
    When 我进入发布问题页面，填写标题、问题描述，点击提交
    Then 问题发布成功
    And 自动跳转到这条新问题的详情页面

  Scenario: 问题标题为空提交
    Given 我已经登录平台
    When 我进入发布页面，只填写描述、不填标题，点击提交
    Then 页面提示：标题不能为空
    And 问题不会被发布

  Scenario: 标题过长超出限制
    Given 我已经登录平台
    When 我输入超长标题、正常问题描述，点击提交
    Then 页面提示标题长度超限
    And 发布失败
