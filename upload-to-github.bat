@echo off
REM Double-click, then paste your empty GitHub repo URL when asked
set /p URL=Paste your empty GitHub repo URL: 
if not exist .git git init
git add -A
git commit -m "My Community: initial upload"
git branch -M main
git remote remove origin 2>nul
git remote add origin %URL%
git push -u origin main
echo.
echo Done! Now enable Pages: Settings ^> Pages ^> Source: GitHub Actions
pause
