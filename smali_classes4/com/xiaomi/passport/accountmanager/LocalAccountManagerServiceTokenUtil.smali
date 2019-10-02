.class final Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;
.super Ljava/lang/Object;
.source "LocalAccountManagerServiceTokenUtil.java"

# interfaces
.implements Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;
.implements Lcom/xiaomi/passport/servicetoken/IAMUtil;


# instance fields
.field private final amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

.field private final delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-direct {v0}, Lcom/xiaomi/passport/servicetoken/AMKeys;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->getInstance()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildAMServiceTokenUtil(Lcom/xiaomi/passport/servicetoken/IAMUtil;)Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    return-void
.end method


# virtual methods
.method public canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture<",
            "Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->canAccessAccount(Landroid/content/Context;)Lcom/xiaomi/accountsdk/futureservice/MiAccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public fastCheckSlhPhCompatibility(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->fastCheckSlhPhCompatibility(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public getAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/accounts/Account;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeyCUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeyPh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public getSlh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {v0, p2}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getAmUserDataKeySlh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/passport/utils/AuthenticatorUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->amKeys:Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/AMKeys;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/xiaomi/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/accountmanager/LocalAccountManagerServiceTokenUtil;->delegate:Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object p1

    return-object p1
.end method

.method public peekAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/xiaomi/accounts/AccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/accounts/AccountManager;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/xiaomi/accounts/AccountManager;->peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
