.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->startMusicAnimation()V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;->this$1:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onMusicClick(Z)V

    :cond_0
    return-void
.end method
