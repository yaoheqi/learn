@echo off
:: 将所有传入的参数拼接为一个完整的commit信息（支持换行/空格）
set "msg=%*"
:: 如果无参数，使用默认值
if not defined msg set "msg=更新代码"

:: 执行核心git命令
git add .
git commit -m "%msg%"
git push

pause