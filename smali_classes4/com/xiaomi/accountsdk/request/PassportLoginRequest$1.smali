.class Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;
.super Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;
.source "PassportLoginRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getRequestTryCA(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;)Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/request/PassportLoginRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/accountsdk/request/PassportFallbackableRequest;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequest;Lcom/xiaomi/accountsdk/request/PassportRequest;)V

    return-void
.end method

.method private invalidResponseDueToHtmlOr302(Ljava/lang/Throwable;)Z
    .locals 1

    instance-of v0, p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;

    iget-boolean p1, p1, Lcom/xiaomi/accountsdk/request/InvalidResponseException;->isHtmlOr302:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected onRequest1Failed()V
    .locals 5

    const-string v0, "PassportLoginRequest"

    const-string v1, "login %s with CA-Request failed to receive data from server"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onRequest1Success()V
    .locals 5

    const-string v0, "PassportLoginRequest"

    const-string v1, "login %s with CA-Request succeeded to receive data from server"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->this$0:Lcom/xiaomi/accountsdk/request/PassportLoginRequest;

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest;->getLoginType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected shouldTryRequest2(Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected shouldTryRequest2(Ljava/lang/Exception;)Z
    .locals 1

    instance-of v0, p1, Ljava/io/IOException;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/account/exception/PassportCAException;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaomi/accountsdk/request/AccessDeniedException;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/PassportLoginRequest$1;->invalidResponseDueToHtmlOr302(Ljava/lang/Throwable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
