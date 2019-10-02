.class public Lcom/xiaomi/accountsdk/request/IPStrategyConfig;
.super Ljava/lang/Object;
.source "IPStrategyConfig.java"


# static fields
.field static final C_ID_MI_COM_BACKUP_IP_C4:Ljava/lang/String; = "183.84.5.8"

.field static final C_ID_MI_COM_BACKUP_IP_LG:Ljava/lang/String; = "42.62.94.239"

.field private static final DEFAULT_BACKUP_IP_LIST_EXPIRE_DURATION_MS:J = 0x240c8400L

.field private static final DEFAULT_CACHED_IP_EXPIRE_DURATION_MS:J = 0x36ee80L

.field private static final DEFAULT_PING_THRESHOLD:J = 0x0L

.field private static final DEFAULT_PING_TIME_COEFFICIENT:I = 0x2

.field private static sBackupIpListExpireDurationMs:J = 0x240c8400L

.field private static sCachedIpExpireDurationMs:J = 0x36ee80L

.field private static sPingThreshold:J = 0x0L

.field private static sPingTimeCoefficient:J = 0x2L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackupIpListExpireDurationMs()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sBackupIpListExpireDurationMs:J

    return-wide v0
.end method

.method static getCachedIpExpireDurationMs()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sCachedIpExpireDurationMs:J

    return-wide v0
.end method

.method static getPingThreshold()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingThreshold:J

    return-wide v0
.end method

.method static getPingTimeCoefficient()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingTimeCoefficient:J

    return-wide v0
.end method

.method public static init(Lcom/xiaomi/accountsdk/request/IPUtilExternal;)V
    .locals 2

    if-eqz p0, :cond_0

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sCachedIpExpireDurationMs:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadCachedIpExpireDuration(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sCachedIpExpireDurationMs:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sBackupIpListExpireDurationMs:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadBackupIpListExpireDuration(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sBackupIpListExpireDurationMs:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingThreshold:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadPingThreshold(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingThreshold:J

    sget-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingTimeCoefficient:J

    invoke-interface {p0, v0, v1}, Lcom/xiaomi/accountsdk/request/IPUtilExternal;->loadPingTimeCoefficient(J)J

    move-result-wide v0

    sput-wide v0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingTimeCoefficient:J

    :cond_0
    return-void
.end method

.method static setBackupIpListExpireDurationMs(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sBackupIpListExpireDurationMs:J

    return-void
.end method

.method static setCachedIpExpireDurationMs(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sCachedIpExpireDurationMs:J

    return-void
.end method

.method static setPingThreshold(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingThreshold:J

    return-void
.end method

.method static setPingTimeCoefficient(J)V
    .locals 0

    sput-wide p0, Lcom/xiaomi/accountsdk/request/IPStrategyConfig;->sPingTimeCoefficient:J

    return-void
.end method
