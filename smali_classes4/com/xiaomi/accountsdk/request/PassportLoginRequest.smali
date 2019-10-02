.class public abstract Lcom/xiaomi/accountsdk/request/PassportLoginRequest;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassToken;,
        Lcom/xiaomi/accountsdk/request/PassportLoginRequest$ByPassword;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PassportLoginRequest"


# instance fields
.field private final request:Lcom/xiaomi/accountsdk/request/PassportRequest;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V
    .locals 5

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getRequestTryCA(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "PassportLoginRequest"

    const-string v1, "CA-Request not ready for login %s, fallback to https way"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    :goto_0
    return-void
.end method

.method private getRequestTryCA(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;
    .locals 5

    invoke-static {}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getInstance()Lcom/xiaomi/accountsdk/account/PassportCATokenManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->isReady()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/PassportCATokenManager;->getCaUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    sget-object v1, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->copy()Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    move-result-object p1

    iget-object v3, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "sid"

    invoke-virtual {v3, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    const-string v2, "_ver"

    invoke-virtual {p1, v2, v1}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putParamOpt(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->params:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "sid"

    invoke-virtual {v2, v4}, Lcom/xiaomi/accountsdk/utils/EasyMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "_sid"

    invoke-virtual {p1, v2, v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putParamOpt(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->urlParams:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v4, "_ver"

    invoke-virtual {v2, v4, v1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    iget-object v1, p1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->urlParams:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v2, "_sid"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/accountsdk/utils/EasyMap;->easyPutOpt(Ljava/lang/Object;Ljava/lang/Object;)Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v1, "x-mistats-header"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->putHeaderOpt(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->makeCARequest(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;

    move-result-object p1

    new-instance v0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;-><init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;)V

    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;

    const-string v1, "login/%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    instance-of v3, v3, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    if-eqz v3, :cond_0

    const-string v3, "withCA"

    goto :goto_0

    :cond_0
    const-string v3, "withoutCA"

    :goto_0
    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->startStat()V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->finishStat()V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->statError(Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/xiaomi/account/exception/PassportCAException;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    invoke-virtual {v0, v2}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->statError(Ljava/lang/Exception;)V

    :cond_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/account/stat/CustomizedUrlStatUtil;->finishStat()V

    throw v1
.end method

.method protected abstract getLoginType()Ljava/lang/String;
.end method

.method public isResultFromCA()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->request:Lcom/xiaomi/accountsdk/request/PassportRequest;

    check-cast v0, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;->isRequest2Used()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract makeCARequest(Lcom/xiaomi/accountsdk/account/PassportCATokenManager;Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportCARequest;
.end method

.method protected abstract makeHttpsRequest(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;
.end method
