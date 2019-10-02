.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object p1, p1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mMusicSwitch:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-virtual {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->startMusicAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->onMusicClick(Z)V

    :cond_1
    return-void
.end method
