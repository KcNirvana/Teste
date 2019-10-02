.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onError$28(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;II)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {v0, p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$1400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;II)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/miui/video/galleryplus/media/IGalleryMediaPlayer;II)Z
    .locals 2

    const-string p1, "GalleryPlayerFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnErrorListener what:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;->access$400(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;)Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;

    move-result-object p1

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;

    invoke-direct {v0, p0, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;II)V

    const-wide/16 p2, 0x96

    invoke-virtual {p1, v0, p2, p3}, Lcom/miui/video/galleryplus/galleryvideo/videoview/GalleryVideoView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
