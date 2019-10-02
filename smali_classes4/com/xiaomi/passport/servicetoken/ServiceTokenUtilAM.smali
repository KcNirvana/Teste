.class Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.source "ServiceTokenUtilAM.java"


# instance fields
.field private final amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/servicetoken/IAMUtil;)V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "amUtil == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkAndGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    aget-object v0, p1, p0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private noAccountErrorResult(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    invoke-direct {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final addAccountAdditionalInfo(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 5

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v0, v1, :cond_1

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/utils/Coder;->getMd5DigestUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v1, p1, p2}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getCUserId(Landroid/content/Context;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-interface {v2, p1, v3, p2}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getSlh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->checkAndGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    iget-object v4, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-interface {v3, p1, v4, p2}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getPh(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->checkAndGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->serviceToken(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->security:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->security(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorCode(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorMessage(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-object v3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorStackTrace:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->errorStackTrace(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object v0

    iget-boolean p3, p3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->peeked:Z

    invoke-virtual {v0, p3}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->peeked(Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    invoke-virtual {p3, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->cUserId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->slh(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->ph(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->userId(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p3
.end method

.method protected canAccessAccountImpl(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NO_ACCOUNT:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->build()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {v1, v2, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->accountVisible(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->build()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1
.end method

.method public fastCheckSlhPhCompatibility(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->noAccountErrorResult(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v1, p1, p2, v0}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->peekAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-static {p2, v1, v2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->parseAMAuthToken(Ljava/lang/String;Ljava/lang/String;Z)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->addAccountAdditionalInfo(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v1, p1, p2, v0}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getAuthToken(Landroid/content/Context;Ljava/lang/String;Landroid/accounts/Account;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1, p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->fromAMBundle(Landroid/os/Bundle;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->addAccountAdditionalInfo(Landroid/content/Context;Landroid/accounts/Account;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p2, p1}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->fromAMException(Ljava/lang/String;Ljava/lang/Exception;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method protected final invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v0, p1}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->noAccountErrorResult(Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lcom/xiaomi/passport/servicetoken/AMAuthTokenConverter;->buildAMAuthToken(Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->amUtil:Lcom/xiaomi/passport/servicetoken/IAMUtil;

    invoke-interface {v1, p1, v0}, Lcom/xiaomi/passport/servicetoken/IAMUtil;->invalidateAuthToken(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;

    iget-object p2, p2, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->sid:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$Builder;->build()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method
