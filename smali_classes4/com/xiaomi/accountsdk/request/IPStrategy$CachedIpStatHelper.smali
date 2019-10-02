.class Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;
.super Lcom/xiaomi/accountsdk/request/IPStatHelper;
.source "IPStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/IPStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CachedIpStatHelper"
.end annotation


# static fields
.field private static final IP_PING_TIME_EXCEPTION:J = -0x2L

.field private static final IP_PING_TIME_FAILED:J = -0x1L


# instance fields
.field private backupip0:Ljava/lang/String;

.field private cachedIp:Ljava/lang/String;

.field private dnsIp0:Ljava/lang/String;

.field private final pingTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/IPStatHelper;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->cachedIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->dnsIp0:Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->backupip0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onAllIpPingFinishes(J)V
    .locals 4

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_coef=%d&cachedip=%s&cachediptime=%d&dnsip=%s&dnsiptime=%d&backupip0=%s&backupip0time=%d"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->cachedIp:Ljava/lang/String;

    const/4 p2, 0x2

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->cachedIp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->dnsIp0:Ljava/lang/String;

    const/4 p2, 0x4

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->dnsIp0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->backupip0:Ljava/lang/String;

    const/4 p2, 0x6

    aput-object p1, v1, p2

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    iget-object p2, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->backupip0:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onLessThenPingThreshold(JJ)V
    .locals 4

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_time=%d&_thres=%d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v1, p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onNetworkChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "http://dummyurl/cachedipDiagonis?_ver=%s&_netOld=%s&_netNew=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public putIpPingException(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIpPingResult(Ljava/lang/String;ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->pingTimeMap:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p3, -0x1

    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setBackupip0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->backupip0:Ljava/lang/String;

    return-void
.end method

.method public setCachedIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->cachedIp:Ljava/lang/String;

    return-void
.end method

.method public setDnsIp0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/request/IPStrategy$CachedIpStatHelper;->dnsIp0:Ljava/lang/String;

    return-void
.end method
