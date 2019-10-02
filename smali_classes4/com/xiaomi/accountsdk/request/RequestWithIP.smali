.class public Lcom/xiaomi/accountsdk/request/RequestWithIP;
.super Lcom/xiaomi/accountsdk/request/PassportRequest;
.source "RequestWithIP.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestWithIP"


# instance fields
.field private final ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

.field private final originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

.field private final statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;


# direct methods
.method public constructor <init>(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Lcom/xiaomi/accountsdk/request/IPStrategy;Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportRequest;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    new-instance p1, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    const/4 v0, 0x0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;-><init>()V

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p3, p2, v0

    invoke-direct {p1, p2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper$Composition;-><init>([Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;)V

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private executeByHostName()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onHostNameRequestStarted()V

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onHostNameRequestFinished(Z)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onHostNameRequestFinished(Z)V

    throw v1
.end method

.method private executeByIp()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;

    invoke-direct {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestStarted()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getCachedIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpStarted(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-static {v4, v0, v3, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeWithIp(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    iget-wide v7, v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    invoke-virtual {v4, v0, v3, v7, v8}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIpIfNeeded(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpSucceed()V

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onCachedIpFailed()V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_2

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsResolvingStarted()V

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v7, v0, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getDnsIp0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsResolvingFinished(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v3}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsip0Started(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-static {v7, v0, v3, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeWithIp(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v4, v0, v3}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIpAndTimeStamp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v4}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsIp0Succeed()V

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onDnsIp0Failed()V

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v4, :cond_5

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v3, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getBackupIpList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpFailed(I)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->copy()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object v8

    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    const/16 v10, 0x2710

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setTimeoutMillis(Ljava/lang/Integer;)V

    iget-object v9, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v9, v5, v7}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpStarted(ILjava/lang/String;)V

    invoke-static {v8, v0, v7, v1}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeWithIp(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0, v7}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIpAndTimeStamp(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpSucceeded(I)V

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    iget-object v7, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v7, v5}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onBackupIpFailed(I)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequest200Succeed()V

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestFailed()V

    :goto_5
    if-eqz v4, :cond_7

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupIpListIfNeeded(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->stringContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_7
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->onIpRequestIOSucceed()V

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->ipStrategy:Lcom/xiaomi/accountsdk/request/IPStrategy;

    invoke-virtual {v2, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupIpListIfNeeded(Ljava/lang/String;)V

    throw v1
.end method

.method static executeWithIp(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->copy()Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    move-result-object p0

    iget-object v8, p0, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->arguments:Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->headers:Lcom/xiaomi/accountsdk/utils/EasyMap;

    const-string v10, "host"

    invoke-virtual {v9, v10, p1}, Lcom/xiaomi/accountsdk/utils/EasyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v8, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    invoke-virtual {v9, p1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->url:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object p0

    iput-object p0, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->stringContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    iget-object p0, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->stringContent:Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v1

    iput-wide v9, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    const-string v1, "RequestWithIP"

    const-string v2, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object v8, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string v8, "IOError,%s"

    new-array v9, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v9, v0

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iput-wide v8, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    const-string v1, "RequestWithIP"

    const-string v2, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v3, v5

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v1

    iput-wide v8, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v7

    iget-wide p1, p3, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object v3, v1, v4

    const-string p1, "visit with ip, host=%s, ip=%s, time=%s, result=%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestWithIP"

    invoke-static {p2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p0

    :cond_2
    :goto_2
    return v0
.end method


# virtual methods
.method public execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/xiaomi/accountsdk/request/PassportRequestException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->start()V

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->originalRequest:Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->isHTTPS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeByIp()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->finish()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeByHostName()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->finish()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/RequestWithIP;->statHelper:Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;

    invoke-virtual {v1}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;->finish()V

    throw v0
.end method
