.class public Lcom/xiaomi/passport/IPUtilExternalImpl;
.super Ljava/lang/Object;
.source "IPUtilExternalImpl.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/request/IPUtilExternal;


# static fields
.field private static final IP_LIST_SPLIT:Ljava/lang/String; = ","

.field private static final SP_KEY_PREFIX_BACKUP_IP_LIST:Ljava/lang/String; = "backup_ip_list"

.field private static final SP_KEY_PREFIX_BACKUP_IP_LIST_EXPIRE:Ljava/lang/String; = "backup_ip_list_expire"

.field private static final SP_KEY_PREFIX_BACKUP_IP_LIST_TIME:Ljava/lang/String; = "backup_ip_list_timestamp"

.field private static final SP_KEY_PREFIX_CACHED_IP:Ljava/lang/String; = "cached_ip"

.field private static final SP_KEY_PREFIX_CACHED_IP_EXPIRE:Ljava/lang/String; = "cached_ip_expire"

.field private static final SP_KEY_PREFIX_CACHED_IP_TIME:Ljava/lang/String; = "cached_ip_timestamp"

.field private static final SP_KEY_PREFIX_PING_THRESHOLD:Ljava/lang/String; = "ping_threshold"

.field private static final SP_KEY_PREFIX_PING_TIME_COEFFICIENT:Ljava/lang/String; = "ping_time_coefficient"

.field private static final SP_NAME:Ljava/lang/String; = "ip"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/passport/IPUtilExternalImpl;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getConnectionTypeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string p0, "\".*\""

    invoke-virtual {v1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v2

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "W_"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-nez v0, :cond_4

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "M_%s_%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v1

    :cond_5
    :goto_0
    return-object v1
.end method

.method private static getNetworkTypeName(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "HSPAP"

    return-object p0

    :pswitch_1
    const-string p0, "CDMA_eHRPD"

    return-object p0

    :pswitch_2
    const-string p0, "LTE"

    return-object p0

    :pswitch_3
    const-string p0, "CDMA_EVDO_B"

    return-object p0

    :pswitch_4
    const-string p0, "iDEN"

    return-object p0

    :pswitch_5
    const-string p0, "HSPA"

    return-object p0

    :pswitch_6
    const-string p0, "HSUPA"

    return-object p0

    :pswitch_7
    const-string p0, "HSDPA"

    return-object p0

    :pswitch_8
    const-string p0, "CDMA_1xRTT"

    return-object p0

    :pswitch_9
    const-string p0, "CDMA_EVDO_A"

    return-object p0

    :pswitch_a
    const-string p0, "CDMA_EVDO_0"

    return-object p0

    :pswitch_b
    const-string p0, "CDMA"

    return-object p0

    :pswitch_c
    const-string p0, "UMTS"

    return-object p0

    :pswitch_d
    const-string p0, "EDGE"

    return-object p0

    :pswitch_e
    const-string p0, "GPRS"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ipListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadSPLong(Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method private makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "%s#%s#%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private saveSPLong(Ljava/lang/String;J)V
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private stringToIpList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method getIpSP()Landroid/content/SharedPreferences;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/IPUtilExternalImpl;->mContext:Landroid/content/Context;

    const-string v1, "ip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/IPUtilExternalImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getConnectionTypeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isWifi()Z
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/IPUtilExternalImpl;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public loadBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backup_ip_list"

    invoke-direct {p0, v1, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/passport/IPUtilExternalImpl;->stringToIpList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    :goto_0
    return-object p1
.end method

.method public loadBackupIpListExpireDuration(J)J
    .locals 1

    const-string v0, "backup_ip_list_expire"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public loadBackupTimeStamp(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    const-string v0, "backup_ip_list_timestamp"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public loadCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cached_ip"

    invoke-direct {p0, v1, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public loadCachedIpExpireDuration(J)J
    .locals 1

    const-string v0, "cached_ip_expire"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public loadCachedTimeStamp(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 1

    const-string v0, "cached_ip_timestamp"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public loadPingThreshold(J)J
    .locals 1

    const-string v0, "ping_threshold"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public loadPingTimeCoefficient(J)J
    .locals 1

    const-string v0, "ping_time_coefficient"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->loadSPLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public saveBackupIpList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
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

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "backup_ip_list"

    invoke-direct {p0, v1, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3}, Lcom/xiaomi/passport/IPUtilExternalImpl;->ipListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveBackupIpListExpireDuration(J)V
    .locals 1

    const-string v0, "backup_ip_list_expire"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method

.method public saveBackupTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "backup_ip_list_timestamp"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method

.method public saveCachedIp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/passport/IPUtilExternalImpl;->getIpSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cached_ip"

    invoke-direct {p0, v1, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveCachedIpExpireDuration(J)V
    .locals 1

    const-string v0, "cached_ip_expire"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method

.method public saveCachedTimeStamp(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "cached_ip_timestamp"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->makeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method

.method public savePingThreshold(J)V
    .locals 1

    const-string v0, "ping_threshold"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method

.method public savePingTimeCoefficient(J)V
    .locals 1

    const-string v0, "ping_time_coefficient"

    invoke-direct {p0, v0, p1, p2}, Lcom/xiaomi/passport/IPUtilExternalImpl;->saveSPLong(Ljava/lang/String;J)V

    return-void
.end method
