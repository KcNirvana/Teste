.class Lcom/kaltura/playkit/player/PlayerController$4;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/PlayerController;->initStateChangeListener()Lcom/kaltura/playkit/player/PlayerEngine$StateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/PlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$4;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/kaltura/playkit/PlayerState;Lcom/kaltura/playkit/PlayerState;)V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$4;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$300(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$4;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-static {v0}, Lcom/kaltura/playkit/player/PlayerController;->access$300(Lcom/kaltura/playkit/player/PlayerController;)Lcom/kaltura/playkit/PKEvent$Listener;

    move-result-object v0

    new-instance v1, Lcom/kaltura/playkit/PlayerEvent$StateChanged;

    invoke-direct {v1, p2, p1}, Lcom/kaltura/playkit/PlayerEvent$StateChanged;-><init>(Lcom/kaltura/playkit/PlayerState;Lcom/kaltura/playkit/PlayerState;)V

    invoke-interface {v0, v1}, Lcom/kaltura/playkit/PKEvent$Listener;->onEvent(Lcom/kaltura/playkit/PKEvent;)V

    :cond_0
    return-void
.end method
