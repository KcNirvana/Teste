.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;)V
    .locals 2

    const-string p1, "GalleryPlayerFragment"

    const-string v0, "OnCompletionListener onCompletion :  "

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1602(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;Z)Z

    invoke-static {v0}, Lcom/miui/video/player/service/recommend/RecommendVideoContainer;->isOpenRecommendPage(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;->getInstance()Lcom/miui/video/player/service/recommend/RecommendDataUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/video/player/service/recommend/RecommendDataUtils;->getRecommendData(Lcom/miui/video/player/service/recommend/RecommendDataUtils$RequestResultListener;Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;IZ)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$7;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$300(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;I)V

    :goto_0
    return-void
.end method
