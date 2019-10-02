.class Lcom/kaltura/playkit/player/PlayerController$1;
.super Lcom/kaltura/playkit/player/PlayerView;
.source "PlayerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/PlayerController;->initializeRootPlayerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/PlayerController;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/PlayerController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/PlayerController$1;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    invoke-direct {p0, p2}, Lcom/kaltura/playkit/player/PlayerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public hideVideoSubtitles()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$1;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$100(Lcom/kaltura/playkit/player/PlayerController;Z)V

    return-void
.end method

.method public hideVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$1;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$000(Lcom/kaltura/playkit/player/PlayerController;Z)V

    return-void
.end method

.method public showVideoSubtitles()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$1;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$100(Lcom/kaltura/playkit/player/PlayerController;Z)V

    return-void
.end method

.method public showVideoSurface()V
    .locals 2

    iget-object v0, p0, Lcom/kaltura/playkit/player/PlayerController$1;->this$0:Lcom/kaltura/playkit/player/PlayerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kaltura/playkit/player/PlayerController;->access$000(Lcom/kaltura/playkit/player/PlayerController;Z)V

    return-void
.end method
