.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->notifyMatchMusicByFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

.field final synthetic val$musicFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;->val$musicFilePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;->this$1:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;

    iget-object v0, v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$1$3;->val$musicFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$900(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Z)V

    return-void
.end method
