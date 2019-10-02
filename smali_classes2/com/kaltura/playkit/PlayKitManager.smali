.class public Lcom/kaltura/playkit/PlayKitManager;
.super Ljava/lang/Object;
.source "PlayKitManager.java"


# static fields
.field public static final CLIENT_TAG:Ljava/lang/String; = "playkit/android-vootdev"

.field public static final VERSION_STRING:Ljava/lang/String; = "vootdev"

.field private static final log:Lcom/kaltura/playkit/PKLog;

.field private static sPluginFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kaltura/playkit/PKPlugin$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private static shouldSendDeviceCapabilitiesReport:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PlayKitManager"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/PlayKitManager;->log:Lcom/kaltura/playkit/PKLog;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kaltura/playkit/PlayKitManager;->shouldSendDeviceCapabilitiesReport:Z

    const-string v0, "PlayKitManager"

    const-string v1, "PlayKit vootdev"

    invoke-static {v0, v1}, Lcom/kaltura/playkit/PKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/PlayKitManager;->sPluginFactories:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createPlugin(Ljava/lang/String;)Lcom/kaltura/playkit/PKPlugin;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/PlayKitManager;->sPluginFactories:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/kaltura/playkit/PKPlugin$Factory;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/kaltura/playkit/PKPlugin$Factory;->newInstance()Lcom/kaltura/playkit/PKPlugin;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static disableDeviceCapabilitiesReport()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kaltura/playkit/PlayKitManager;->shouldSendDeviceCapabilitiesReport:Z

    return-void
.end method

.method public static loadPlayer(Landroid/content/Context;Lcom/kaltura/playkit/PKPluginConfigs;)Lcom/kaltura/playkit/Player;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKPluginConfigs;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/kaltura/playkit/player/MediaSupport;->initializeDrm(Landroid/content/Context;Lcom/kaltura/playkit/player/MediaSupport$DrmInitCallback;)V

    sget-boolean v0, Lcom/kaltura/playkit/PlayKitManager;->shouldSendDeviceCapabilitiesReport:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/kaltura/playkit/PKDeviceCapabilities;->maybeSendReport(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/kaltura/playkit/PlayerLoader;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/PlayerLoader;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/kaltura/playkit/PKPluginConfigs;

    invoke-direct {p1}, Lcom/kaltura/playkit/PKPluginConfigs;-><init>()V

    :goto_0
    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/PlayerLoader;->load(Lcom/kaltura/playkit/PKPluginConfigs;)V

    return-object v0
.end method

.method public static varargs registerPlugins(Landroid/content/Context;[Lcom/kaltura/playkit/PKPlugin$Factory;)V
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-interface {v2}, Lcom/kaltura/playkit/PKPlugin$Factory;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz p0, :cond_1

    sget-object v4, Lcom/kaltura/playkit/PlayKitManager;->sPluginFactories:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v2, p0}, Lcom/kaltura/playkit/PKPlugin$Factory;->warmUp(Landroid/content/Context;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
