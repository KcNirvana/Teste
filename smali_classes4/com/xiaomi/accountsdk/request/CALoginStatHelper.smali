.class Lcom/xiaomi/accountsdk/request/CALoginStatHelper;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "CALoginStatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
    }
.end annotation


# instance fields
.field final backupIpInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;",
            ">;"
        }
    .end annotation
.end field

.field final cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final dnsResolvingInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

.field final overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsResolvingInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    return-void
.end method

.method private final backupIpInfo(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method final buildDummyUrl()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v1, "c_ip"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c_t"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "c_r"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->resultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "r_t"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsResolvingInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_ip"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v2, v2, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->ip:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_t"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d_r"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->resultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "b"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->ip:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v5, v5, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v3, v5}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "r"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->resultString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "should no be null here"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "h_t"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "h_r"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->resultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_t"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->startTime:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->timeSpent(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "all_r"

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->resultString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "hdid"

    new-instance v2, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;

    invoke-static {}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/xiaomi/accountsdk/hasheddeviceidlib/HashedDeviceIdUtil;->getHashedDeviceIdNoThrow()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "http://dummyurl/caLoginDiagnosis?"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "_ver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v3, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v4, :cond_2

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v6, "&"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final computeOverallResult()Z
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, v2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v3, v3, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    or-int/2addr v0, v3

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    iget-object v5, v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->result:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    :goto_4
    or-int/2addr v0, v4

    goto :goto_3

    :cond_4
    return v0
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->computeOverallResult()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->buildDummyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onBackupIpFailed(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfo(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onBackupIpStarted(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfo(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onBackupIpSucceeded(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->backupIpInfo(I)Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onCachedIpFailed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onCachedIpStarted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onCachedIpSucceed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->cachedIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onDnsIp0Failed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onDnsIp0Succeed()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onDnsResolvingFinished(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsResolvingInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onDnsResolvingStarted()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsResolvingInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onDnsip0Started(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->dnsIpInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method

.method public onHostNameRequestFinished(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    invoke-virtual {v0, p1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->finish(Z)V

    return-void
.end method

.method public onHostNameRequestStarted()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->hostNameInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/CALoginStatHelper;->overallInfo:Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/request/CALoginStatHelper$Info;->start(Ljava/lang/String;)V

    return-void
.end method
