.class public abstract Lcom/kaltura/playkit/PlayerDecorator;
.super Lcom/kaltura/playkit/PlayerDecoratorBase;
.source "PlayerDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/kaltura/playkit/PlayerDecoratorBase;->addEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public final addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecoratorBase;->addStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object p1

    return-object p1
.end method

.method public final destroy()V
    .locals 0

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;->destroy()V

    return-void
.end method

.method final getPlayer()Lcom/kaltura/playkit/Player;
    .locals 1

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;->getPlayer()Lcom/kaltura/playkit/Player;

    move-result-object v0

    return-object v0
.end method

.method public final getView()Lcom/kaltura/playkit/player/PlayerView;
    .locals 1

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;->getView()Lcom/kaltura/playkit/player/PlayerView;

    move-result-object v0

    return-object v0
.end method

.method public final onApplicationPaused()V
    .locals 0

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;->onApplicationPaused()V

    return-void
.end method

.method public final onApplicationResumed()V
    .locals 0

    invoke-super {p0}, Lcom/kaltura/playkit/PlayerDecoratorBase;->onApplicationResumed()V

    return-void
.end method

.method public final varargs removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/kaltura/playkit/PlayerDecoratorBase;->removeEventListener(Lcom/kaltura/playkit/PKEvent$Listener;[Ljava/lang/Enum;)V

    return-void
.end method

.method public final removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecoratorBase;->removeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    return-void
.end method

.method public final removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V
    .locals 0
    .param p1    # Lcom/kaltura/playkit/PKEvent$Listener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecoratorBase;->removeStateChangeListener(Lcom/kaltura/playkit/PKEvent$Listener;)V

    return-void
.end method

.method final setPlayer(Lcom/kaltura/playkit/Player;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/kaltura/playkit/PlayerDecoratorBase;->setPlayer(Lcom/kaltura/playkit/Player;)V

    return-void
.end method

.method public final updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/kaltura/playkit/PlayerDecoratorBase;->updatePluginConfig(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
