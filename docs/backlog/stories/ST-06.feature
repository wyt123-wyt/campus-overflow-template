Feature: 提问者采纳最佳回答
  As a 校园用户（提问人）
  I want to accept the best answer
  So that I can mark which answer solved my question

  Scenario: 快乐路径 - 提问者成功采纳回答
    Given 用户登录，并且是这条问题的发布者
    When 用户在回答下方点击【采纳为最佳答案】
    Then 该回答标记为最佳回答，问题状态变为已解决

  Scenario: 异常路径 - 非提问人尝试采纳回答
    Given 用户登录，但不是该问题的发布者
    When 用户点击回答下方的采纳按钮
    Then 采纳按钮不可点击，无法执行采纳操作

  Scenario: 边界路径 - 提问者取消已经采纳的回答
    Given 用户是提问人，且已经采纳了一条回答
    When 用户点击【取消采纳】
    Then 回答的最佳答案标记消失，问题变回未解决状态
