# sh3yee 开发环境安装脚本
# 创建于: 2025-04-17

# 安装 Scoop（如果尚未安装）
if (!(Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Host "正在安装 Scoop..." -ForegroundColor Cyan
    Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
    Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression
}

# 添加必要的 bucket
Write-Host "正在添加 bucket..." -ForegroundColor Cyan
scoop bucket add main
scoop bucket add extras
scoop bucket add sh3yee https://github.com/sh3yee/scoop-bucket.git

# 安装基础工具
Write-Host "正在安装开发工具..." -ForegroundColor Cyan
scoop install sh3yee/git
scoop install sh3yee/curl
scoop install sh3yee/vscode
scoop install sh3yee/nvm
scoop install sh3yee/maple-mono

# 安装 Node.js LTS
Write-Host "正在安装 Node.js LTS..." -ForegroundColor Cyan
nvm install lts
nvm use lts

# 配置 Git
Write-Host "正在配置 Git..." -ForegroundColor Cyan
git config --global core.autocrlf input
git config --global init.defaultBranch main

Write-Host "是否要配置 Git 用户信息？[Y/n]" -ForegroundColor Yellow
$response = Read-Host
if ($response -ne "n") {
    $name = Read-Host "请输入您的 Git 用户名"
    $email = Read-Host "请输入您的 Git 邮箱"
    git config --global user.name $name
    git config --global user.email $email
}

Write-Host "`n开发环境设置完成！" -ForegroundColor Green
Write-Host "已安装以下工具：" -ForegroundColor Green
Write-Host "  ✓ Git" -ForegroundColor Green
Write-Host "  ✓ curl" -ForegroundColor Green
Write-Host "  ✓ Visual Studio Code" -ForegroundColor Green
Write-Host "  ✓ Node Version Manager (NVM)" -ForegroundColor Green
Write-Host "  ✓ Maple Mono Font" -ForegroundColor Green