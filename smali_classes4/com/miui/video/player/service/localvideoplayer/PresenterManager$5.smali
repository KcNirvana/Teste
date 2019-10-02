.class Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;
.super Ljava/lang/Object;
.source "PresenterManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->saveSlidePos()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

.field final synthetic val$transCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/PresenterManager;Lorg/videolan/libvlc/MIPlayerTranscoder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;->this$0:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    iput-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;->val$transCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/PresenterManager$5;->val$transCoder:Lorg/videolan/libvlc/MIPlayerTranscoder;

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I

    return-void
.end method
