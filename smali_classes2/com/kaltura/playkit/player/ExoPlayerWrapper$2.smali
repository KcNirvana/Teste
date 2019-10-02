.class Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;
.super Ljava/lang/Object;
.source "ExoPlayerWrapper.java"

# interfaces
.implements Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kaltura/playkit/player/ExoPlayerWrapper;->initDrmSessionListener()Lcom/kaltura/playkit/drm/DeferredDrmSessionManager$DrmSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;


# direct methods
.method constructor <init>(Lcom/kaltura/playkit/player/ExoPlayerWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/kaltura/playkit/PKError;)V
    .locals 1

    iget-object v0, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    invoke-static {v0, p1}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$702(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PKError;)Lcom/kaltura/playkit/PKError;

    const-string p1, "ExoPlayerWrapper"

    const-string v0, "ERROR_NOT_FOUND_DRM_PLUGIN"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/kaltura/playkit/player/ExoPlayerWrapper$2;->this$0:Lcom/kaltura/playkit/player/ExoPlayerWrapper;

    sget-object v0, Lcom/kaltura/playkit/PlayerEvent$Type;->ERROR_NOT_FOUND_DRM_PLUGIN:Lcom/kaltura/playkit/PlayerEvent$Type;

    invoke-static {p1, v0}, Lcom/kaltura/playkit/player/ExoPlayerWrapper;->access$600(Lcom/kaltura/playkit/player/ExoPlayerWrapper;Lcom/kaltura/playkit/PlayerEvent$Type;)V

    return-void
.end method
