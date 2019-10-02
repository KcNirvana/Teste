.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GallerySlowFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setVolume(F)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->mVideoView:Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    invoke-virtual {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->setPlaySpeed(F)V

    return-void
.end method
