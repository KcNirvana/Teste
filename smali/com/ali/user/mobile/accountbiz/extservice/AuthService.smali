.class public interface abstract Lcom/ali/user/mobile/accountbiz/extservice/AuthService;
.super Ljava/lang/Object;
.source "AuthService.java"


# static fields
.field public static final LOGIN_REALSTATE:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# virtual methods
.method public abstract auth()Z
.end method

.method public abstract auth(Landroid/os/Bundle;)Z
.end method

.method public abstract autoAuth()Landroid/os/Bundle;
.end method

.method public abstract clearLoginUserInfo()V
.end method

.method public abstract gestureGetUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract getLastLoginedUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract getLoginUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract getTaoBaoSsoFlag()Z
.end method

.method public abstract getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract isLogin()Z
.end method

.method public abstract logLoginKey()V
.end method

.method public abstract notifyUnlockGestureApp()V
.end method

.method public abstract notifyUnlockLoginApp(ZZ)V
.end method

.method public abstract queryLatelyLoginUser()Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract rpcAuth()Z
.end method

.method public abstract rpcAuth(Z)Z
.end method

.method public abstract setTaoBaoSsoFlag(Z)V
.end method

.method public abstract showActivityLogin(Landroid/os/Bundle;Lcom/ali/user/mobile/account/bean/UserInfo;)Z
.end method
