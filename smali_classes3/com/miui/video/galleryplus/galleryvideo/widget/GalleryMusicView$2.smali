.class Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;
.super Ljava/lang/Object;
.source "GalleryMusicView.java"

# interfaces
.implements Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$OnMusicListStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startMusicList()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->access$400(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView$OnMusicListStartListener;->startMusicList()V

    :cond_0
    return-void
.end method
