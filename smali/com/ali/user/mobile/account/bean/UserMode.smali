.class public Lcom/ali/user/mobile/account/bean/UserMode;
.super Ljava/lang/Object;
.source "UserMode.java"


# instance fields
.field checkLogin:Z

.field userExtInfo:Ljava/lang/String;

.field userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userExtInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->checkLogin:Z

    return-void
.end method


# virtual methods
.method public getUserExtInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userExtInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    return-object v0
.end method

.method public isCheckLogin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/account/bean/UserMode;->checkLogin:Z

    return v0
.end method

.method public setCheckLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/account/bean/UserMode;->checkLogin:Z

    return-void
.end method

.method public setUserExtInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userExtInfo:Ljava/lang/String;

    return-void
.end method

.method public setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/account/bean/UserMode;->userInfo:Lcom/ali/user/mobile/account/bean/UserInfo;

    return-void
.end method
