.class public Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final ICMP_CHECK_TIMEPUT:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics"


# instance fields
.field private mLocalIpAddress:Ljava/net/InetAddress;

.field private mPingLocalRet:Z

.field mPingLoopBackRet:Z

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 12

    const-wide/16 v10, 0x1388

    const v8, 0x7f07038f

    const/4 v1, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x1

    iput-object v7, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-static {}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIgnoreIcmp()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mIsStatusNormal:Z

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v1, "check(). system ignore all ICMP Echo requests."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    if-eqz v3, :cond_c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v3}, Lcom/miui/common/network/f;->aMc(Landroid/net/LinkProperties;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Lcom/miui/common/network/f;->aMd(Landroid/net/LinkProperties;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_1
    iget-object v4, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v4, "wifi"

    const-string/jumbo v5, "LPv6"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsCnAddrFamily(Ljava/util/Map;)V

    move v0, v2

    :goto_1
    const-string/jumbo v4, "NetworkDiagnostics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "check() hasGlobalIPv6Address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/miui/common/network/f;->aMc(Landroid/net/LinkProperties;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "NetworkDiagnostics"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "check() hasIPv6DefaultRoute="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/miui/common/network/f;->aMd(Landroid/net/LinkProperties;)Z

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    :goto_2
    if-eqz v3, :cond_d

    sget-object v0, Ljava/net/Inet6Address;->LOOPBACK:Ljava/net/InetAddress;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    :goto_3
    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v7, v4}, Lcom/miui/common/network/f;->aMe(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v5, "loopBack"

    if-eqz v3, :cond_e

    const-string/jumbo v0, "LPv6"

    :goto_4
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsPingResultDiffSocket(Ljava/util/Map;)V

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    :cond_2
    const-string/jumbo v0, "NetworkDiagnostics"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check() ping LOOPBACK ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    if-eqz v0, :cond_13

    if-eqz v3, :cond_3

    sget v0, Lcom/miui/common/a;->aCv:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_4

    sget v0, Lcom/miui/common/a;->aCu:I

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->getCurrentNetworkIp(I)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    :cond_5
    :goto_5
    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/miui/common/network/f;->aMe(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v5, "pingSelf"

    if-eqz v3, :cond_12

    const-string/jumbo v0, "LPv6"

    :goto_6
    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsPingResultDiffSocket(Ljava/util/Map;)V

    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    :cond_6
    const-string/jumbo v0, "NetworkDiagnostics"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check() ping self ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    if-eqz v0, :cond_7

    iget-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    :cond_7
    iput-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mIsStatusNormal:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mIsStatusNormal:Z

    if-nez v0, :cond_8

    const-string/jumbo v0, "busybox ifconfig"

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->doExec(Ljava/lang/String;)V

    const-string/jumbo v0, "getprop | grep -i dhcp"

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->doExec(Ljava/lang/String;)V

    const-string/jumbo v0, "NetworkDiagnostics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "check() ping "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " ret="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->printNetworkInfo(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->networkChanged()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "loopBack"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    :cond_8
    return-void

    :cond_9
    const-string/jumbo v4, "other"

    const-string/jumbo v5, "LPv6"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "wifi"

    const-string/jumbo v5, "LPv4"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsGlobalAddrFamily(Ljava/util/Map;)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "other"

    const-string/jumbo v5, "LPv4"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    const-string/jumbo v0, "NetworkDiagnostics"

    const-string/jumbo v3, "check() getActiveLinkProperties return null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    goto/16 :goto_2

    :cond_d
    sget-object v0, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v0, "LPv4"

    goto/16 :goto_4

    :cond_f
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07038e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    goto/16 :goto_5

    :cond_11
    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v0, "LPv4"

    goto/16 :goto_6

    :cond_13
    iput-boolean v2, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07038d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    goto/16 :goto_7

    :cond_14
    const-string/jumbo v1, "other"

    const-string/jumbo v2, "loopBack"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_15
    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "pingSelf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_16
    const-string/jumbo v1, "other"

    const-string/jumbo v2, "pingSelf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->FAILED:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLoopBackRet:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mPingLocalRet:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mLocalIpAddress:Ljava/net/InetAddress;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070390

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/ProtocolCheck;->mSummary:Ljava/lang/String;

    return-object v0
.end method
