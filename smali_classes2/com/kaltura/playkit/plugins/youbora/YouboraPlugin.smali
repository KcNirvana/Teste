.class public Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;
.super Lcom/kaltura/playkit/PKPlugin;
.source "YouboraPlugin.java"


# static fields
.field private static adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

.field public static final factory:Lcom/kaltura/playkit/PKPlugin$Factory;

.field private static final log:Lcom/kaltura/playkit/PKLog;

.field private static pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;


# instance fields
.field private adAnalytics:Z

.field eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

.field private isAdsMonitoring:Z

.field private isMonitoring:Z

.field private mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

.field private messageBus:Lcom/kaltura/playkit/MessageBus;

.field private player:Lcom/kaltura/playkit/Player;

.field private pluginConfig:Lcom/google/gson/JsonObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "YouboraPlugin"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$1;

    invoke-direct {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$1;-><init>()V

    sput-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->factory:Lcom/kaltura/playkit/PKPlugin$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kaltura/playkit/PKPlugin;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adAnalytics:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isAdsMonitoring:Z

    new-instance v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;

    invoke-direct {v0, p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin$2;-><init>(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)V

    iput-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)Lcom/kaltura/playkit/Player;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;)Lcom/google/gson/JsonObject;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    return-object p0
.end method

.method static synthetic access$200()Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    return-object v0
.end method

.method private loadPlugin()V
    .locals 5

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "loadPlugin"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    const-string v1, "enableSmartAds"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    const-string v1, "enableSmartAds"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    const-string v1, "enableSmartAds"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonPrimitive(Ljava/lang/String;)Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adAnalytics:Z

    :cond_0
    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->eventListener:Lcom/kaltura/playkit/PKEvent$Listener;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Enum;

    const/4 v3, 0x0

    sget-object v4, Lcom/kaltura/playkit/PlayerEvent$Type;->DURATION_CHANGE:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/kaltura/playkit/PlayerEvent$Type;->SOURCE_SELECTED:Lcom/kaltura/playkit/PlayerEvent$Type;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    :cond_1
    return-void
.end method

.method private stopMonitoring()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "stop monitoring"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isAdsMonitoring:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->stopMonitoring()V

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isAdsMonitoring:Z

    :cond_0
    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->stopMonitoring()V

    iput-boolean v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected onApplicationPaused()V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "YOUBORA onApplicationPaused"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->endedAdHandler()V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->resetAdValues()V

    :cond_0
    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->endedHandler()V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->resetValues()V

    :cond_1
    return-void
.end method

.method protected onApplicationResumed()V
    .locals 1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->playHandler()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->stopMonitoring()V

    :cond_0
    return-void
.end method

.method protected onLoad(Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)V
    .locals 1

    sget-object p4, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v0, "onLoad"

    invoke-virtual {p4, v0}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    check-cast p2, Lcom/google/gson/JsonObject;

    iput-object p2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    iput-object p3, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    new-instance p2, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    new-instance p4, Lcom/npaw/youbora/youboralib/data/Options;

    invoke-direct {p4}, Lcom/npaw/youbora/youboralib/data/Options;-><init>()V

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    invoke-direct {p2, p4, p3, v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;-><init>(Ljava/util/Map;Lcom/kaltura/playkit/MessageBus;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)V

    sput-object p2, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->loadPlugin()V

    return-void
.end method

.method protected onUpdateConfig(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "youbora - onUpdateConfig"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->onUpdateConfig()V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {v0}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->onUpdateConfig()V

    :cond_0
    check-cast p1, Lcom/google/gson/JsonObject;

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-static {p1, v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->getConfig(Lcom/google/gson/JsonObject;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->setOptions(Ljava/util/Map;)V

    return-void
.end method

.method protected onUpdateMedia(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 3

    invoke-direct {p0}, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->stopMonitoring()V

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->log:Lcom/kaltura/playkit/PKLog;

    const-string v1, "youbora - onUpdateMedia"

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/PKLog;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginConfig:Lcom/google/gson/JsonObject;

    iget-object v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->mediaConfig:Lcom/kaltura/playkit/PKMediaConfig;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-static {p1, v0, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraConfig;->getConfig(Lcom/google/gson/JsonObject;Lcom/kaltura/playkit/PKMediaConfig;Lcom/kaltura/playkit/Player;)Ljava/util/Map;

    move-result-object p1

    sget-object v0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->setOptions(Ljava/util/Map;)V

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isMonitoring:Z

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-virtual {p1, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->startMonitoring(Ljava/lang/Object;)V

    :cond_0
    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adAnalytics:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isAdsMonitoring:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    iget-object v2, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->messageBus:Lcom/kaltura/playkit/MessageBus;

    invoke-direct {p1, v1, v2}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;-><init>(Lcom/npaw/youbora/plugins/PluginGeneric;Lcom/kaltura/playkit/MessageBus;)V

    sput-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    iget-object v1, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->player:Lcom/kaltura/playkit/Player;

    invoke-virtual {p1, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;->startMonitoring(Ljava/lang/Object;)V

    sget-object p1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->pluginManager:Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;

    sget-object v1, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->adsManager:Lcom/kaltura/playkit/plugins/youbora/YouboraAdManager;

    invoke-virtual {p1, v1}, Lcom/kaltura/playkit/plugins/youbora/YouboraLibraryManager;->setAdnalyzer(Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;)V

    iput-boolean v0, p0, Lcom/kaltura/playkit/plugins/youbora/YouboraPlugin;->isAdsMonitoring:Z

    :cond_1
    return-void
.end method
