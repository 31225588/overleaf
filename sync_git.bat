@echo off
set /p msg="请输入本次同步的说明 (例如: 更新了测试文档): "

echo.
echo [1/4] 正在添加更改...
git add .

echo [2/4] 正在提交更改: "%msg%"
git commit -m "%msg%"

echo [3/4] 正在设置分支...
git branch -M main

echo [4/4] 正在推送到 GitHub...
git push -u origin main

echo.
echo ================================
echo 同步完成！按任意键退出...
echo ================================
pause