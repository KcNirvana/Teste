.class Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;
.super Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;
.source "IPDiagnosisStatHelper.java"


# instance fields
.field private usedIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private usedNets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/RequestWithIPStatHelper;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onBackupIpFailed(I)V
    .locals 3

    const-string v0, "Ip"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backupIpFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackupIpStarted(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->getNetworkName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBackupIpSucceeded(I)V
    .locals 0

    return-void
.end method

.method public onCachedIpFailed()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "cachedIpFailed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCachedIpStarted(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onCachedIpSucceed()V
    .locals 0

    return-void
.end method

.method public onDnsIp0Failed()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "dnsIp0Failed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDnsIp0Succeed()V
    .locals 5

    const-string v0, "http://dummyurl/cachedIpDiagonose?_ver=%s&cacheipnet=%s&cachedip=%s&dnsipnet=%s&dnsip=%s&finalnet=%s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onDnsip0Started(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onIpRequest200Succeed()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "IpRequestSucceed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statAllIps(Z)V

    return-void
.end method

.method public onIpRequestFailed()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "IpRequestFailed"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statAllIps(Z)V

    return-void
.end method

.method public onIpRequestIOSucceed()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "IpRequestIOSucceeded"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statAllIps(Z)V

    return-void
.end method

.method public onIpRequestStarted()V
    .locals 2

    const-string v0, "Ip"

    const-string v1, "IpRequestStarted"

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method statAllIps(Z)V
    .locals 4

    const-string v0, "http://dummyurl/IpDiagonose?_ver=%s&_ips=%s&_nets=%s&_ipResult=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/xiaomi/accountsdk/account/PassportCAConstants;->IMPL_VERSION:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedIps:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, ","

    iget-object v3, p0, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->usedNets:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v2, 0x3

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/request/IPDiagnosisStatHelper;->statDummyUrl(Ljava/lang/String;)V

    return-void
.end method
