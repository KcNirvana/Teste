.class public interface abstract Lcom/ali/user/mobile/accountbiz/extservice/AccountService;
.super Ljava/lang/Object;
.source "AccountService.java"


# virtual methods
.method public abstract addUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
.end method

.method public abstract cleanLocalAccountByUserId(Ljava/lang/String;)Z
.end method

.method public abstract getAutoLoginAlipayUser()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentLoginLogonId()Ljava/lang/String;
.end method

.method public abstract getCurrentLoginState()Z
.end method

.method public abstract getCurrentLoginUserId()Ljava/lang/String;
.end method

.method public abstract getLoginedAlipayUser()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
.end method

.method public abstract queryAccountList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCurrentLoginLogonId(Ljava/lang/String;)V
.end method

.method public abstract setCurrentLoginState(Ljava/lang/String;)V
.end method

.method public abstract setCurrentLoginUserId(Ljava/lang/String;)V
.end method
