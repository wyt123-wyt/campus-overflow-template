Feature: 用户收藏问题
  As a 校园用户
  I want to collect questions
  So that I can quickly find interesting learning questions later

  Scenario: 快乐路径 - 用户成功收藏问题
    Given 用户已经登录平台
    When 用户进入问题详情页，点击收藏按钮
    Then 收藏状态变为已收藏，该问题出现在个人收藏列表

  Scenario: 异常路径 - 未登录用户尝试收藏问题
    Given 用户未登录平台
    When 用户点击问题详情页的收藏按钮
    Then 页面提示需要先登录，收藏操作不生效

  Scenario: 边界路径 - 用户取消已收藏的问题
    Given 用户已登录，并且该问题已经被收藏
    When 用户点击取消收藏按钮
    Then 收藏状态变为未收藏，该问题从个人收藏列表移除
