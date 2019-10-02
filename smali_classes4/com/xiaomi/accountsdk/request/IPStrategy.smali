.class public Lcom/xiaomi/accountsdk/request/IPStrategy;
.super Ljava/lang/Object;
.source "IPStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;,
        Lcom/xiaomi/accountsdk/request/IPStrategy$BackupIpStatHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IPStrategy"

.field private static sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

.field private static sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

.field private static sHardCodedBackupIpLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sHardCodedBackupIpLists:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "183.84.5.8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "42.62.94.239"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sHardCodedBackupIpLists:Ljava/util/Map;

    const-string v2, "c.id.mi.com"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static resetIpInfosForTest()V
    .locals 1

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/IPInfos;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    return-void
.end method

.method public static setIpUtilExternal(Lcom/xiaomi/accountsdk/request/IPUtilExternal;)V
    .locals 0

    sput-object p0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    return-void
.end method


# virtual methods
.method protected getBackupIp0(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getBackupIpList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method getBackupIpList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos;->getIpList(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v3, :cond_0

    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/request/IPInfos;->setIpList(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/util/List;)V

    :cond_0
    if-nez v2, :cond_1

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sHardCodedBackupIpLists:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    :cond_1
    return-object v2
.end method

.method protected getBackupIpListOnline(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isWifi()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v2}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    const-string v3, "http://resolver.msg.xiaomi.net/gslb/?ver=3.0&list=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    new-instance v3, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v3, v2}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    :try_start_0
    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "R"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "wifi"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "wap"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p1, :cond_3

    return-object v1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v5, v2, :cond_5

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline error, cause : "

    invoke-virtual {p1}, Lorg/json/JSONException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline error, cause : "

    invoke-virtual {p1}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_2
    move-exception p1

    const-string v0, "IPStrategy"

    const-string v2, "getBackupIpListOnline"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method getCachedIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos;->getIp0(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v3, :cond_0

    sget-object v2, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v0, v3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object p1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPInfos;->setIpAsList(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/lang/String;)V

    :cond_0
    return-object v2
.end method

.method getDnsIp0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->resolveDNS(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    aget-object v1, p1, v3

    if-eqz v1, :cond_1

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    array-length v1, p1

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v2, p1, v3

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_3

    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    :cond_4
    return-object v0
.end method

.method protected getNetworkName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isBackupListExpired(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getBackupIpListExpireDurationMs()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isExpired(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method protected isCachedIpExpired(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getCachedIpExpireDurationMs()J

    move-result-wide v1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isExpired(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z

    move-result p1

    return p1
.end method

.method protected isExpired(Lcom/xiaomi/accountsdk/request/IPInfos;Ljava/lang/String;J)Z
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos;->getTimeStamp(Lcom/xiaomi/accountsdk/request/IPInfos$Index;)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isExpiredSinceLastTime(JJ)Z

    move-result p1

    return p1
.end method

.method isExpiredSinceLastTime(JJ)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isWifi()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->isWifi()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected ping(Ljava/lang/String;[Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide v3, 0x7fffffffffffffffL

    move-wide v5, v3

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v7, p2, v3

    :try_start_0
    new-instance v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;-><init>()V

    new-instance v9, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v9}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    const-string v10, "http://%s/conn/echo"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p1, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    new-instance v10, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v10, v9}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    invoke-static {v10, p1, v7, v8}, Lcom/xiaomi/accountsdk/request/RequestWithIP;->executeWithIp(Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;)Z

    move-result v9

    iget-wide v10, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J

    invoke-virtual {p3, v7, v9, v10, v11}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->putIpPingResult(Ljava/lang/String;ZJ)V

    if-eqz v9, :cond_0

    iget-wide v9, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1

    cmp-long v9, v9, v5

    if-gez v9, :cond_0

    :try_start_1
    iget-wide v8, v8, Lcom/xiaomi/accountsdk/request/RequestWithIP$IpRequestResult;->timeSpent:J
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    move-wide v5, v8

    goto :goto_1

    :catch_0
    move-object v4, v7

    :catch_1
    invoke-virtual {p3, v7}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->putIpPingException(Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    :goto_2
    return-object v2
.end method

.method protected resolveDNS(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    invoke-static {p1}, Ljava/net/Inet4Address;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p1

    return-object p1
.end method

.method protected updateBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/IPInfos;->setIpList(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/util/List;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method updateBackupIpListAndTimeStamp(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateBackupTimeStamp(Ljava/lang/String;)V

    return-void
.end method

.method updateBackupIpListIfNeeded(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isBackupListExpired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPStrategy$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$2;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaomi/accountsdk/request/IPExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/xiaomi/accountsdk/request/IPStrategy$3;

    invoke-direct {p1, p0, v0}, Lcom/xiaomi/accountsdk/request/IPStrategy$3;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/request/IPExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateBackupTimeStamp(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/xiaomi/accountsdk/request/IPStrategy;->sBackupIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPInfos;->setTimeStamp(Lcom/xiaomi/accountsdk/request/IPInfos$Index;J)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveBackupTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected updateCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v1, v0, p3}, Lcom/xiaomi/accountsdk/request/IPInfos;->setIpAsList(Lcom/xiaomi/accountsdk/request/IPInfos$Index;Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0, p1, p2, p3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method updateCachedIpAndTimeStamp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedTimeStamp(Ljava/lang/String;)V

    return-void
.end method

.method updateCachedIpIfNeeded(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->isCachedIpExpired(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v6, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;

    invoke-direct {v6}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {v6, p2, v0, p3, p4}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->putIpPingResult(Ljava/lang/String;ZJ)V

    invoke-virtual {v6, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->setCachedIp(Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingThreshold()J

    move-result-wide v0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingThreshold()J

    move-result-wide v0

    invoke-virtual {v6, p3, p4, v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->onLessThenPingThreshold(JJ)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->updateCachedTimeStamp(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getDnsIp0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getBackupIp0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v4}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->setDnsIp0(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->setBackupip0(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v7

    new-instance p2, Lcom/xiaomi/accountsdk/request/IPStrategy$1;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p1

    move-wide v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/accountsdk/request/IPStrategy$1;-><init>(Lcom/xiaomi/accountsdk/request/IPStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;Ljava/lang/String;J)V

    invoke-static {p2}, Lcom/xiaomi/accountsdk/request/IPExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected updateCachedTimeStamp(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPStrategy;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/accountsdk/request/IPInfos$Index;

    invoke-direct {v1, p1, v0}, Lcom/xiaomi/accountsdk/request/IPInfos$Index;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/xiaomi/accountsdk/request/IPStrategy;->sCachedIpInfos:Lcom/xiaomi/accountsdk/request/IPInfos;

    invoke-virtual {v4, v1, v2, v3}, Lcom/xiaomi/accountsdk/request/IPInfos;->setTimeStamp(Lcom/xiaomi/accountsdk/request/IPInfos$Index;J)V

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v1, p1, v0, v2, v3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveCachedTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected updateStrategyConfigOnline()V
    .locals 11

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getCachedIpExpireDurationMs()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getBackupIpListExpireDurationMs()J

    move-result-wide v2

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingThreshold()J

    move-result-wide v4

    invoke-static {}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->getPingTimeCoefficient()J

    move-result-wide v6

    new-instance v8, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;

    invoke-direct {v8}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;-><init>()V

    const-string v9, "http://c.id.mi.com/conn/getParams"

    invoke-virtual {v8, v9}, Lcom/xiaomi/accountsdk/request/PassportRequestArguments;->setUrl(Ljava/lang/String;)V

    new-instance v9, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;

    invoke-direct {v9, v8}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest$GetAsString;-><init>(Lcom/xiaomi/accountsdk/request/PassportRequestArguments;)V

    :try_start_0
    invoke-virtual {v9}, Lcom/xiaomi/accountsdk/request/PassportSimpleRequest;->execute()Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaomi/accountsdk/request/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    :cond_0
    const-string v9, "&&&START&&&"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "&&&START&&&"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "connectivity_params"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "backup_ip_expire"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_2

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v2, v9

    :cond_2
    const-string v9, "cached_ip_expire"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_3

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v0, v9

    :cond_3
    const-string v9, "ping_threshold"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v10, :cond_4

    int-to-long v4, v9

    :cond_4
    const-string v9, "ping_time_coefficient"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/xiaomi/accountsdk/request/PassportRequestException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v8, v10, :cond_5

    int-to-long v6, v8

    :cond_5
    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->setCachedIpExpireDurationMs(J)V

    invoke-static {v2, v3}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->setBackupIpListExpireDurationMs(J)V

    invoke-static {v4, v5}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->setPingThreshold(J)V

    invoke-static {v6, v7}, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->setPingTimeCoefficient(J)V

    sget-object v8, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    if-eqz v8, :cond_6

    sget-object v8, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v8, v0, v1}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveCachedIpExpireDuration(J)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->saveBackupIpListExpireDuration(J)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0, v4, v5}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->savePingThreshold(J)V

    sget-object v0, Lcom/xiaomi/accountsdk/request/IPStrategy;->sIpUtilExternal:Lcom/xiaomi/accountsdk/request/IPUtilExternal;

    invoke-interface {v0, v6, v7}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->savePingTimeCoefficient(J)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/request/PassportRequestException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_2
    move-exception v0

    const-string v1, "IPStrategy"

    const-string v2, "updateStrategyConfigOnline"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
