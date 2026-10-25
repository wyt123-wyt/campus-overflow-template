Feature: 用户注册账号
  As a 校园用户
  I want 注册平台账号
  So that 我可以拥有身份，使用平台提问、浏览等功能

  Scenario: 用户填写合法信息完成注册（快乐路径）
    Given 用户打开平台注册页面
    When 用户输入合法用户名、密码、确认密码，点击注册按钮
    Then 系统提示注册成功
    And 页面自动跳转到登录页面

  Scenario: 两次输入的密码不一致
    Given 用户打开平台注册页面
    When 用户输入用户名，两次填写不一样的密码，点击注册按钮
    Then 页面提示：两次输入密码不一致
    And 注册不会成功

  Scenario: 使用已经存在的用户名注册
    Given 系统里已经存在用户名为 "student01" 的账号
    When 用户填写用户名 student01，密码符合要求，点击注册
    Then 页面提示：该用户名已被占用
    And 注册不会成功
