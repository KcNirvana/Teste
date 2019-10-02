.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->saveNew960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

.field final synthetic val$dialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

.field final synthetic val$outPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$dialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$800(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryMusicView;->getLeftPercent()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1400()F

    move-result v2

    mul-float v0, v0, v2

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->val$outPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v4}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;

    move-result-object v4

    int-to-long v7, v0

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1500()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v0, v5

    int-to-long v9, v0

    new-instance v11, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;

    invoke-direct {v11, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$5;)V

    const-wide/16 v5, 0x0

    invoke-static/range {v1 .. v11}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLcom/miui/extravideo/interpolation/VideoInterpolator$OnSaveListener;)Z

    return-void
.end method
