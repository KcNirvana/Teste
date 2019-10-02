.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GalleryPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->initAiMusicAnimation()V
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mAnimationMusic:Landroid/view/View;

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$3;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/video/base/utils/AIMusicSPHelper;->getInstance(Landroid/content/Context;)Lcom/miui/video/base/utils/AIMusicSPHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/base/utils/AIMusicSPHelper;->setFirstMusic()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
