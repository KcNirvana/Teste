.class public Lcom/kaltura/playkit/player/MediaSupport;
.super Ljava/lang/Object;
.source "MediaSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException;,
        Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;
    }
.end annotation


# static fields
.field public static final DEVICE_CHIPSET:Ljava/lang/String;

.field public static final WIDEVINE_UUID:Ljava/util/UUID;

.field private static initSucceeded:Z

.field private static final log:Lcom/kaltura/playkit/PKLog;

.field private static widevineClassic:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static widevineModular:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    const-string v0, "MediaSupport"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->getDeviceChipset()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->DEVICE_CHIPSET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->provisionWidevine()V

    return-void
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/kaltura/playkit/player/MediaSupport;->runCallback(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200()Lcom/kaltura/playkit/PKLog;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    return-object v0
.end method

.method public static checkDrm(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException;
        }
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineClassic(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;

    if-nez p0, :cond_1

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineModular()V

    :cond_1
    return-void
.end method

.method private static checkWidevineClassic(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/drm/DrmManagerClient;

    invoke-direct {v0, p0}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    :try_start_0
    const-string p0, ""

    const-string v1, "video/wvm"

    invoke-virtual {v0, p0, v1}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_1
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "drmManagerClient.canHandle failed"

    invoke-virtual {p0, v1}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p0, v1, :cond_1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge p0, v1, :cond_1

    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Assuming WV Classic is supported although canHandle has failed"

    invoke-virtual {p0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    if-nez p0, :cond_2

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    :cond_2
    return-void

    :goto_2
    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    throw p0
.end method

.method private static checkWidevineModular()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException;
        }
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    const/4 v2, 0x0

    if-lt v0, v1, :cond_5

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/MediaDrm;->isCryptoSchemeSupported(Ljava/util/UUID;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    sget-object v3, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {v1, v3}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Landroid/media/NotProvisionedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaDrm;->openSession()[B

    move-result-object v3
    :try_end_1
    .catch Landroid/media/NotProvisionedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x1

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;
    :try_end_2
    .catch Landroid/media/NotProvisionedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    invoke-virtual {v1, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_0
    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :catch_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v3, v0

    goto :goto_3

    :catch_3
    move-object v1, v0

    :catch_4
    :goto_0
    :try_start_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->closeSession([B)V

    :cond_1
    if-eqz v1, :cond_6

    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_3

    :catch_5
    move-exception v1

    move-object v3, v0

    :goto_2
    :try_start_4
    sget-object v2, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v4, "Widevine Modular not provisioned"

    invoke-virtual {v2, v4}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    new-instance v2, Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException;

    const-string v4, "Widevine Modular not provisioned"

    invoke-direct {v2, v4, v1}, Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Landroid/media/MediaDrm;->closeSession([B)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/MediaDrm;->release()V

    :cond_4
    throw v1

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;

    :cond_6
    :goto_4
    return-void
.end method

.method private static getDeviceChipset()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.board.platform"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static initializeDrm(Landroid/content/Context;Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V
    .locals 1

    sget-boolean v0, Lcom/kaltura/playkit/player/MediaSupport;->initSucceeded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/kaltura/playkit/player/DummySurfaceWorkaroundTest;->executeTest(Landroid/content/Context;)V

    :try_start_0
    invoke-static {p0}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineClassic(Landroid/content/Context;)V

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineModular()V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/kaltura/playkit/player/MediaSupport;->initSucceeded:Z

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/kaltura/playkit/player/MediaSupport;->runCallback(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V
    :try_end_0
    .catch Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Widevine Modular needs provisioning"

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    new-instance p0, Lcom/kaltura/playkit/player/MediaSupport$1;

    invoke-direct {p0, p1}, Lcom/kaltura/playkit/player/MediaSupport$1;-><init>(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V

    invoke-static {p0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public static playReady()Z
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static provisionWidevine()V
    .locals 6
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x12
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/media/MediaDrm;

    sget-object v2, Lcom/kaltura/playkit/player/MediaSupport;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {v1, v2}, Landroid/media/MediaDrm;-><init>(Ljava/util/UUID;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaDrm;->getProvisionRequest()Landroid/media/MediaDrm$ProvisionRequest;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/media/MediaDrm$ProvisionRequest;->getDefaultUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&signedRequest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/media/MediaDrm$ProvisionRequest;->getData()[B

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v0}, Lcom/kaltura/playkit/Utils;->executePost(Ljava/lang/String;[BLjava/util/Map;)[B

    move-result-object v0

    const-string v2, "RESULT"

    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v0}, Landroid/media/MediaDrm;->provideProvisionResponse([B)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    :try_start_2
    sget-object v2, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v3, "Provision Widevine failed"

    invoke-virtual {v2, v3, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaDrm;->release()V

    :cond_0
    throw v0
.end method

.method private static runCallback(Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;ZLjava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->supportedDrmSchemes()Ljava/util/Set;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-interface {p0, v0, p1, p2}, Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;->onDrmInitComplete(Ljava/util/Set;ZLjava/lang/Exception;)V

    goto :goto_1

    :cond_0
    sget-boolean p0, Lcom/kaltura/playkit/player/MediaSupport;->initSucceeded:Z

    if-nez p0, :cond_3

    if-eqz p2, :cond_1

    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string p2, "DRM provisioning has failed, but nobody was looking. supportedDrmSchemes may be missing Widevine Modular."

    invoke-virtual {p0, p2}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning was"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    const-string p1, " "

    goto :goto_0

    :cond_2
    const-string p1, " not "

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "performed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    :cond_3
    :goto_1
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Supported DRM schemes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static supportedDrmSchemes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/kaltura/playkit/PKDrmParams$Scheme;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->WidevineClassic:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->playReady()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kaltura/playkit/PKDrmParams$Scheme;->PlayReadyCENC:Lcom/kaltura/playkit/PKDrmParams$Scheme;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public static supportedDrmSchemes(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set<",
            "Lcom/kaltura/playkit/PKDrmParams$Scheme;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Warning: MediaSupport.supportedDrmSchemes(Context) is deprecated"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineClassic(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->checkWidevineModular()V
    :try_end_0
    .catch Lcom/kaltura/playkit/player/MediaSupport$DrmNotProvisionedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object p0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "Widevine Modular needs provisioning"

    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/PKLog;->e(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/kaltura/playkit/player/MediaSupport;->supportedDrmSchemes()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static widevineClassic()Z
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Widevine Classic DRM is not initialized; assuming not supported"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineClassic:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static widevineModular()Z
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "Widevine Modular DRM is not initialized; assuming not supported"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/player/MediaSupport;->widevineModular:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
