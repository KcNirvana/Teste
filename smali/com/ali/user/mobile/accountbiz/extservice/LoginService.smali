.class public interface abstract Lcom/ali/user/mobile/accountbiz/extservice/LoginService;
.super Ljava/lang/Object;
.source "LoginService.java"


# virtual methods
.method public abstract autoLogin(Lcom/ali/user/mobile/account/c;)V
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
.end method

.method public abstract processLoginResult(Lcom/ali/user/mobile/account/model/UserLoginResult;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;Lcom/ali/user/mobile/account/model/UserLoginReq;Z)Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;
.end method

.method public abstract sendLoginBroadcast(ZLcom/ali/user/mobile/account/model/UserLoginReq;Lcom/ali/user/mobile/account/bean/UserLoginResultBiz;)V
.end method
