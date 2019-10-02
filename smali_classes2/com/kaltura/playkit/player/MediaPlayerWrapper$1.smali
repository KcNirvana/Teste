.class Lcom/kaltura/playkit/player/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Lcom/kaltura/playkit/drm/WidevineClassicDrm$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/MediaPlayerWrapper;->initDrmClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/MediaPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmErrorEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/kaltura/playkit/player/MediaPlayerWrapper$1;->this$0:Lcom/kaltura/playkit/player/MediaPlayerWrapper;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/MediaPlayerWrapper;->access$000(Lcom/kaltura/playkit/player/MediaPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method

.method public onEvent(Landroid/drm/DrmEvent;)V
    .locals 0

    return-void
.end method
