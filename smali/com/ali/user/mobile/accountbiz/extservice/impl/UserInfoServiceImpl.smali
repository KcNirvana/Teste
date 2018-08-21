.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "UserInfoServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;


# static fields
.field private static mUserInfoService:Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "UserInfoServiceImpl"

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->mUserInfoService:Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/SecurityInitServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->mUserInfoService:Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->mUserInfoService:Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->mUserInfoService:Lcom/ali/user/mobile/accountbiz/extservice/UserInfoService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public queryUserInfo(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserMode;
    .locals 4

    const/4 v0, 0x0

    new-instance v2, Lcom/ali/user/mobile/account/bean/UserMode;

    invoke-direct {v2}, Lcom/ali/user/mobile/account/bean/UserMode;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/UserInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/c/c;->b(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const-string/jumbo v1, "UserInfoServiceImpl"

    const-string/jumbo v3, "\u7528\u6237\u4fe1\u606f\u67e5\u8be2\u5b8c\u6210"

    invoke-static {v1, v3}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserMode;->setUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)V

    sget-object v0, Lcom/ali/user/mobile/account/d;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ali/user/mobile/account/bean/UserMode;->setUserExtInfo(Ljava/lang/String;)V

    return-object v2

    :catch_0
    move-exception v1

    const-string/jumbo v3, "StackTrace"

    invoke-static {v3, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
