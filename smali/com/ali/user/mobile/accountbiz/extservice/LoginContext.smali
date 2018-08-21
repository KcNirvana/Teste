.class public Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;
.super Ljava/lang/Object;
.source "LoginContext.java"


# instance fields
.field private accountType:Ljava/lang/Boolean;

.field private directAuth:Z

.field private isForceNotShowLogin:Z

.field private isLoginSucess:Ljava/lang/Boolean;

.field private isSettingGesture:Ljava/lang/Boolean;

.field private params:Landroid/os/Bundle;

.field private resetCookie:Z

.field private showActivity:Ljava/lang/Boolean;

.field private skipAutoLogin:Z

.field private skipCheckIsLogin:Z

.field private skipGestureApp:Z

.field private skipSelectAccountApp:Z

.field private userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipCheckIsLogin:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->accountType:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->resetCookie:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->directAuth:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isForceNotShowLogin:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bean/UserInfo;ZZZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipCheckIsLogin:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->accountType:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->resetCookie:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->directAuth:Z

    iput-boolean v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isForceNotShowLogin:Z

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->params:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    iput-boolean p3, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    iput-boolean p4, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    iput-boolean p5, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->accountType:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsLoginSucess()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isLoginSucess:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsSettingGesture()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSettingGesture:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getShowActivity()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->showActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    return-object v0
.end method

.method public isDirectAuth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->directAuth:Z

    return v0
.end method

.method public isForceNotShowLoginApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isForceNotShowLogin:Z

    return v0
.end method

.method public isResetCookie()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->resetCookie:Z

    return v0
.end method

.method public isSkipAutoLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    return v0
.end method

.method public isSkipCheckIsLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipCheckIsLogin:Z

    return v0
.end method

.method public isSkipGestureApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    return v0
.end method

.method public isSkipSelectAccountApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    return v0
.end method

.method public setAccountType(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->accountType:Ljava/lang/Boolean;

    return-void
.end method

.method public setDirectAuth(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->directAuth:Z

    return-void
.end method

.method public setForceNotShowLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isForceNotShowLogin:Z

    return-void
.end method

.method public setIsLoginSucess(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isLoginSucess:Ljava/lang/Boolean;

    return-void
.end method

.method public setIsSettingGesture(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSettingGesture:Ljava/lang/Boolean;

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->params:Landroid/os/Bundle;

    return-void
.end method

.method public setResetCookie(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->resetCookie:Z

    return-void
.end method

.method public setShowActivity(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->showActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public setSkipAutoLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    return-void
.end method

.method public setSkipCheckIsLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipCheckIsLogin:Z

    return-void
.end method

.method public setSkipGestureApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    return-void
.end method

.method public setSkipSelectAccountApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    return-void
.end method

.method public setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LoginContext [params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->params:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", userInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", skipSelectAccountApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipSelectAccountApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", skipGestureApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipGestureApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", skipCheckIsLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipCheckIsLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", skipAutoLogin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->skipAutoLogin:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", showActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->showActivity:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isLoginSucess="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isLoginSucess:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isSettingGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->isSettingGesture:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", accountType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->accountType:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resetCookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/LoginContext;->resetCookie:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
