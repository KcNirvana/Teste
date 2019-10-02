.class Lcom/kaltura/playkit/PlayerLoader;
.super Lcom/kaltura/playkit/PlayerDecoratorBase;
.source "PlayerLoader.java"


# static fields
.field private static final log:Lcom/kaltura/playkit/PKLog;


# instance fields
.field private context:Landroid/content/Context;

.field private loadedPlugins:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/kaltura/playkit/LoadedPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private messageBus:Lcom/kaltura/playkit/MessageBus;

.field private playerController:Lcom/kaltura/playkit/player/PlayerController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PlayerLoader"

    invoke-static {v0}, Lcom/kaltura/playkit/PKLog;->get(Ljava/lang/String;)Lcom/kaltura/playkit/PKLog;

    move-result-object v0

    sput-object v0, Lcom/kaltura/playkit/PlayerLoader;->log:Lcom/kaltura/playkit/PKLog;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerLoader;->context:Landroid/content/Context;

    new-instance p1, Lcom/kaltura/playkit/MessageBus;

    invoke-direct {p1}, Lcom/kaltura/playkit/MessageBus;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    return-void
.end method

.method static synthetic access$000(Lcom/kaltura/playkit/PlayerLoader;)Lcom/kaltura/playkit/MessageBus;
    .locals 0

    iget-object p0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    return-object p0
.end method

.method private loadPlugin(Ljava/lang/String;Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)Lcom/kaltura/playkit/PKPlugin;
    .locals 0

    invoke-static {p1}, Lcom/kaltura/playkit/PlayKitManager;->createPlugin(Ljava/lang/String;)Lcom/kaltura/playkit/PKPlugin;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/kaltura/playkit/PKPlugin;->onLoad(Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method

.method private releasePlayer()V
    .locals 1

    invoke-virtual {p0}, Lcom/kaltura/playkit/PlayerLoader;->getPlayer()Lcom/kaltura/playkit/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->destroy()V

    return-void
.end method

.method private releasePlugins()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kaltura/playkit/PlayerLoader;->getPlayer()Lcom/kaltura/playkit/Player;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kaltura/playkit/LoadedPlugin;

    iget-object v4, v3, Lcom/kaltura/playkit/LoadedPlugin;->decorator:Lcom/kaltura/playkit/PlayerDecorator;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/kaltura/playkit/LoadedPlugin;->decorator:Lcom/kaltura/playkit/PlayerDecorator;

    if-ne v4, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const-string v5, "Decorator/layer mismatch"

    invoke-static {v4, v5}, Lcom/kaltura/playkit/Assert;->checkState(ZLjava/lang/Object;)V

    instance-of v4, v1, Lcom/kaltura/playkit/PlayerDecorator;

    if-eqz v4, :cond_1

    check-cast v1, Lcom/kaltura/playkit/PlayerDecorator;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PlayerDecorator;->getPlayer()Lcom/kaltura/playkit/Player;

    move-result-object v1

    :cond_1
    iget-object v3, v3, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    invoke-virtual {v3}, Lcom/kaltura/playkit/PKPlugin;->onDestroy()V

    iget-object v3, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/kaltura/playkit/PlayerLoader;->setPlayer(Lcom/kaltura/playkit/Player;)V

    return-void
.end method


# virtual methods
.method public varargs addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    invoke-virtual {v0, p1, p2}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 4
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Enum;

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/kaltura/playkit/MessageBus;->listen(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public destroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/kaltura/playkit/PlayerLoader;->stop()V

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerLoader;->releasePlugins()V

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerLoader;->releasePlayer()V

    return-void
.end method

.method public load(Lcom/kaltura/playkit/PKPluginConfigs;)V
    .locals 8
    .param p1    # Lcom/kaltura/playkit/PKPluginConfigs;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/kaltura/playkit/player/PlayerController;

    iget-object v1, p0, Lcom/kaltura/playkit/PlayerLoader;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->playerController:Lcom/kaltura/playkit/player/PlayerController;

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->playerController:Lcom/kaltura/playkit/player/PlayerController;

    iget-object v1, p0, Lcom/kaltura/playkit/PlayerLoader;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/plugins/playback/KalturaPlaybackRequestAdapter;->install(Lcom/kaltura/playkit/Player;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->playerController:Lcom/kaltura/playkit/player/PlayerController;

    new-instance v1, Lcom/kaltura/playkit/PlayerLoader$1;

    invoke-direct {v1, p0}, Lcom/kaltura/playkit/PlayerLoader$1;-><init>(Lcom/kaltura/playkit/PlayerLoader;)V

    invoke-virtual {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->setEventListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->playerController:Lcom/kaltura/playkit/player/PlayerController;

    invoke-virtual {p1}, Lcom/kaltura/playkit/PKPluginConfigs;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    iget-object v6, p0, Lcom/kaltura/playkit/PlayerLoader;->context:Landroid/content/Context;

    move-object v1, p0

    move-object v2, v7

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/kaltura/playkit/PlayerLoader;->loadPlugin(Ljava/lang/String;Lcom/kaltura/playkit/Player;Ljava/lang/Object;Lcom/kaltura/playkit/MessageBus;Landroid/content/Context;)Lcom/kaltura/playkit/PKPlugin;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/kaltura/playkit/PlayerLoader;->log:Lcom/kaltura/playkit/PKLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Plugin not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kaltura/playkit/PKLog;->w(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/kaltura/playkit/PKPlugin;->getPlayerDecorator()Lcom/kaltura/playkit/PlayerDecorator;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/kaltura/playkit/PlayerDecorator;->setPlayer(Lcom/kaltura/playkit/Player;)V

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    new-instance v4, Lcom/kaltura/playkit/LoadedPlugin;

    invoke-direct {v4, v1, v2}, Lcom/kaltura/playkit/LoadedPlugin;-><init>(Lcom/kaltura/playkit/PKPlugin;Lcom/kaltura/playkit/PlayerDecorator;)V

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/kaltura/playkit/PlayerLoader;->setPlayer(Lcom/kaltura/playkit/Player;)V

    return-void
.end method

.method public onApplicationPaused()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/LoadedPlugin;

    iget-object v1, v1, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKPlugin;->onApplicationPaused()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/kaltura/playkit/PlayerLoader;->getPlayer()Lcom/kaltura/playkit/Player;

    move-result-object v0

    invoke-interface {v0}, Lcom/kaltura/playkit/Player;->onApplicationPaused()V

    return-void
.end method

.method public onApplicationResumed()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/LoadedPlugin;

    iget-object v1, v1, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    invoke-virtual {v1}, Lcom/kaltura/playkit/PKPlugin;->onApplicationResumed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepare(Lcom/kaltura/playkit/PKMediaConfig;)V
    .locals 2
    .param p1    # Lcom/kaltura/playkit/PKMediaConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->playerController:Lcom/kaltura/playkit/player/PlayerController;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/player/PlayerController;->setMedia(Lcom/kaltura/playkit/PKMediaConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecoratorBase;->prepare(Lcom/kaltura/playkit/PKMediaConfig;)V

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kaltura/playkit/LoadedPlugin;

    iget-object v1, v1, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    invoke-virtual {v1, p1}, Lcom/kaltura/playkit/PKPlugin;->onUpdateMedia(Lcom/kaltura/playkit/PKMediaConfig;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public varargs removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    invoke-virtual {v0, p1, p2}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method

.method public removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 1
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    invoke-virtual {v0, p1}, Lcom/kaltura/playkit/MessageBus;->removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    return-void
.end method

.method public removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 4
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->messageBus:Lcom/kaltura/playkit/MessageBus;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Enum;

    sget-object v2, Lcom/kaltura/playkit/PlayerEvent$Type;->STATE_CHANGED:Lcom/kaltura/playkit/PlayerEvent$Type;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Lcom/kaltura/playkit/MessageBus;->remove(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method

.method public updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kaltura/playkit/PlayerLoader;->loadedPlugins:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kaltura/playkit/LoadedPlugin;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/kaltura/playkit/LoadedPlugin;->plugin:Lcom/kaltura/playkit/PKPlugin;

    invoke-virtual {p1, p2}, Lcom/kaltura/playkit/PKPlugin;->onUpdateConfig(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
