.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;
.source "AccountServiceImpl.java"

# interfaces
.implements Lcom/ali/user/mobile/accountbiz/extservice/AccountService;


# static fields
.field private static mAccountService:Lcom/ali/user/mobile/accountbiz/extservice/AccountService;


# instance fields
.field final TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/base/BaseExtService;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "AccountServiceImpl"

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->getCurrentLoginUserId()Ljava/lang/String;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/accountbiz/extservice/AccountService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mAccountService:Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mAccountService:Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mAccountService:Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mAccountService:Lcom/ali/user/mobile/accountbiz/extservice/AccountService;

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
.method public addUserInfo(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/c/c;->a(Lcom/ali/user/mobile/account/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AccountServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanLocalAccountByUserId(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "AccountServiceImpl"

    const-string/jumbo v2, "\u5220\u9664\u672c\u5730\u7528\u6237\u4fe1\u606f"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/c/c;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AccountServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAutoLoginAlipayUser()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->getLoginedAlipayUser()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->isAutoLogin()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public getCurrentLoginLogonId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentLogonId"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoginState()Z
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentUserLoginState"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentLoginUserId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentUserId"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoginedAlipayUser()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->queryAccountList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/account/bean/UserInfo;

    invoke-virtual {v0}, Lcom/ali/user/mobile/account/bean/UserInfo;->getLoginTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/ali/user/mobile/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/ali/user/mobile/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/ali/user/mobile/c/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ali/user/mobile/c/c;->b(Ljava/lang/String;)Lcom/ali/user/mobile/account/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AccountServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryAccountList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ali/user/mobile/account/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/ali/user/mobile/c/c;->a(Landroid/content/Context;)Lcom/ali/user/mobile/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ali/user/mobile/c/c;->a()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "AccountServiceImpl"

    invoke-static {v2, v1}, Lcom/ali/user/mobile/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentLoginLogonId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentLogonId"

    invoke-static {v0, v1, p1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setCurrentLoginState(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->getCurrentLoginState()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AccountServiceImpl"

    const-string/jumbo v2, "new state: %s , old state: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentUserLoginState"

    invoke-static {v0, v1, p1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public setCurrentLoginUserId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/AccountServiceImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "currentUserId"

    invoke-static {v0, v1, p1}, Lcom/ali/user/mobile/accountbiz/b/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
