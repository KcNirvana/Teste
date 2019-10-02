.class public Lcom/miui/video/biz/ugc/player/UGCPlayerManager;
.super Ljava/lang/Object;
.source "UGCPlayerManager.java"


# static fields
.field private static sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayPosition()J
    .locals 2

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getPlayPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getsInstance(Landroid/content/Context;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
    .locals 1

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    :cond_0
    sget-object p0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    return-object p0
.end method

.method public static releasePlayer()V
    .locals 2

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->release()V

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget-object v1, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v0, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->setOnStatusChangeListener(Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;)V

    sput-object v1, Lcom/miui/video/biz/ugc/player/UGCPlayerManager;->sInstance:Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    return-void
.end method
