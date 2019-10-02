.class public Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/utils/media/MediaEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalMediaStateReceiver"
.end annotation


# instance fields
.field private mediaSessionWr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/player/service/utils/media/MiMediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/utils/media/MiMediaSession;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->mediaSessionWr:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->mediaSessionWr:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private pausePlayingVideo()V
    .locals 3

    invoke-static {}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver;->access$100()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/player/service/utils/media/MiMediaSession;

    invoke-virtual {v1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->getCallBack()Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/miui/video/player/service/utils/media/MiMediaSession;->getCallBack()Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;->mediaStateChange(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$LocalMediaStateReceiver;->pausePlayingVideo()V

    :cond_0
    return-void
.end method
