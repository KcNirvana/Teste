.class public Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;
.super Landroid/net/TrafficStats;
.source ""


# static fields
.field private static final TYPE_RX_BYTES:I = 0x0

.field private static final TYPE_RX_PACKETS:I = 0x1

.field private static final TYPE_TCP_RX_PACKETS:I = 0x4

.field private static final TYPE_TCP_TX_PACKETS:I = 0x5

.field private static final TYPE_TX_BYTES:I = 0x2

.field private static final TYPE_TX_PACKETS:I = 0x3

.field private static sMobileIface:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->sMobileIface:Ljava/lang/String;

    const-string/jumbo v0, "nap"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/TrafficStats;-><init>()V

    return-void
.end method

.method public static getMobileBytes(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileTxBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMobileBytes(Landroid/content/Context;I)J
    .locals 4

    invoke-static {p0, p1}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileTxBytes(Landroid/content/Context;I)J

    move-result-wide v0

    invoke-static {p0, p1}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileRxBytes(Landroid/content/Context;I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static getMobileIface(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->sMobileIface:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/common/network/f;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->sMobileIface:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->sMobileIface:Ljava/lang/String;

    return-object v0
.end method

.method public static getMobileRxBytes(Landroid/content/Context;I)J
    .locals 2

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {p1, v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getRxBytes(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMobileTxBytes(Landroid/content/Context;I)J
    .locals 2

    invoke-static {p0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getMobileIface(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    invoke-static {p1, v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTxBytes(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxBytes(ILjava/lang/String;)J
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->nativeGetUidIfaceStat(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getRxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lmiui/securitycenter/net/NetworkStatWrapper;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTotalBytes(Landroid/content/Context;)J
    .locals 4

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    invoke-static {}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getTotalRxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getTxBytes(ILjava/lang/String;)J
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->nativeGetUidIfaceStat(ILjava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTxBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lmiui/securitycenter/net/NetworkStatWrapper;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUidBytes(Landroid/content/Context;I)J
    .locals 4

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    invoke-static {p1}, Lcom/miui/networkassistant/traffic/statistic/NaTrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static native nativeGetUidIfaceStat(ILjava/lang/String;I)J
.end method
