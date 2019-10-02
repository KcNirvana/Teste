.class public Lcom/kaltura/playkit/drm/DeviceUuidFactory;
.super Ljava/lang/Object;
.source "DeviceUuidFactory.java"


# static fields
.field protected static final PREFS_DEVICE_ID:Ljava/lang/String; = "device_id"

.field protected static final PREFS_FILE:Ljava/lang/String; = "device_id.xml"

.field protected static volatile uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceUuid(Landroid/content/Context;)Ljava/util/UUID;
    .locals 3

    sget-object v0, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    if-nez v0, :cond_2

    const-class v0, Lcom/kaltura/playkit/drm/DeviceUuidFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    if-nez v1, :cond_1

    const-string v1, "device_id.xml"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    sput-object p0, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "device_id"

    sget-object v2, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    sget-object p0, Lcom/kaltura/playkit/drm/DeviceUuidFactory;->uuid:Ljava/util/UUID;

    return-object p0
.end method
