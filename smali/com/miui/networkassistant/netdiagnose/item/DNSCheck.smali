.class public Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;
.super Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;
.source ""


# static fields
.field private static final BAIDU_DNS:Ljava/lang/String; = "180.76.76.76"

.field private static final CNNIC_DNS:Ljava/lang/String; = "1.2.4.8"

.field private static final CNNIC_DNS2:Ljava/lang/String; = "202.98.0.68"

.field private static final CTCC_DNS:Ljava/lang/String; = "114.114.114.114"

.field private static final DNS_CHECK_TIMEPUT:J = 0x1388L

.field private static final GOOGLE_DNS1:Ljava/lang/String; = "8.8.8.8"

.field private static final GOOGLE_DNS2:Ljava/lang/String; = "8.8.4.4"

.field private static final HOST_ADDR_BDD:Ljava/lang/String; = "180.76.76.76"

.field private static final HOST_ADDR_BDN:Ljava/lang/String; = "220.181.112.224"

.field private static final HOST_ADDR_CTCC:Ljava/lang/String; = "114.114.114.114"

.field private static final HOST_ADDR_GGD:Ljava/lang/String; = "8.8.8.8"

.field private static final HOST_ADDR_GGD2:Ljava/lang/String; = "8.8.4.4"

.field private static final HOST_ADDR_GGN:Ljava/lang/String; = "216.58.221.100"

.field private static final REPEAT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkDiagnostics_DNSCheck"


# instance fields
.field private mCnDnsAddrList:Ljava/util/ArrayList;

.field private mCnDnsReqTimeList:Ljava/util/ArrayList;

.field private mHostAddrList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "8.8.8.8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "8.8.4.4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "216.58.221.100"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "180.76.76.76"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "220.181.112.224"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "114.114.114.114"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "180.76.76.76"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "114.114.114.114"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "1.2.4.8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "202.98.0.68"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    const-string/jumbo v1, "8.8.8.8"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const-wide/16 v4, 0x1388

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/miui/common/network/f;->aLS(Landroid/content/Context;Ljava/net/InetAddress;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v3, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v4, "pingDns"

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mHostAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsPingResultDiffSocket(Ljava/util/Map;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    :goto_1
    :try_start_1
    const-string/jumbo v1, "NetworkDiagnostics_DNSCheck"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "check() ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mIsStatusNormal:Z

    iget-boolean v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mIsStatusNormal:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->networkChanged()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v6}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "dns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsStep(Ljava/util/Map;)V

    sget-boolean v1, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_L_OR_LATER:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLT(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/network/f;->aLU(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "dns"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackNetworkDiagnosticsDnsAssigment(Ljava/util/Map;)V

    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_4
    const-string/jumbo v2, "NetworkDiagnostics_DNSCheck"

    const-string/jumbo v3, "an exception occurred."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "other"

    const-string/jumbo v2, "dns"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public fix()Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;
    .locals 13

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v0}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getActiveNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLW(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v5, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v5}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkType()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mDiagnosticsManager:Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;

    invoke-virtual {v3}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsManager;->getDiagnosingNetworkInterface()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "NetworkDiagnostics_DNSCheck"

    const-string/jumbo v1, "network has chaged!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->NETWORKCHANGED:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/common/network/f;->aLX(Landroid/content/Context;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v0, "NetworkDiagnostics_DNSCheck"

    const-string/jumbo v1, "wifiConf is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    sget-object v0, Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;->SUCCESS:Lcom/miui/networkassistant/netdiagnose/AbstractNetworkDiagoneItem$FixedResult;

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->getDNS(Landroid/net/wifi/WifiConfiguration;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isCnUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v5, v1

    :goto_3
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_5

    const-wide v2, 0x7fffffffffffffffL

    if-eq v5, v7, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    const/4 v10, 0x1

    invoke-static {v0, v10}, Lcom/miui/networkassistant/netdiagnose/NetworkDiagnosticsUtils;->isIpAvailable(Ljava/net/InetAddress;I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v8

    :cond_4
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_4
    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v4, v0, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsReqTimeList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move v2, v4

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move-wide v11, v0

    move v1, v2

    move-wide v2, v11

    goto :goto_4

    :cond_6
    if-eq v1, v7, :cond_2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mCnDnsAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->setDNS(Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    :try_start_1
    const-string/jumbo v1, "8.8.4.4"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "8.8.8.8"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->setDNS(Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    :try_start_2
    const-string/jumbo v0, "8.8.4.4"

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->setDNS(Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto/16 :goto_1

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_1

    :cond_9
    move-wide v11, v2

    move v2, v1

    move-wide v0, v11

    goto :goto_5

    :cond_a
    move-object v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getDNS(Landroid/net/wifi/WifiConfiguration;)Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/common/network/f;->aLY(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070369

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSolution()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070379

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemSummary()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07036a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setDNS(Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/netdiagnose/item/DNSCheck;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lmiui/securitycenter/NetworkUtils;->saveWifiConfiguration(Landroid/content/Context;Ljava/net/InetAddress;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
