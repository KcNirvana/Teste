.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$2;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$2;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$100(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;I)V

    return-void
.end method
