.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->updateAIMusicUI(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$10;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method
