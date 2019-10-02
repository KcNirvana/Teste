.class Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;
.super Landroid/os/AsyncTask;
.source "UGCVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReleasePlayerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lorg/videolan/libvlc/VlcMediaPlayer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lorg/videolan/libvlc/VlcMediaPlayer;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lorg/videolan/libvlc/VlcMediaPlayer;->release()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lorg/videolan/libvlc/VlcMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$ReleasePlayerTask;->doInBackground([Lorg/videolan/libvlc/VlcMediaPlayer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
