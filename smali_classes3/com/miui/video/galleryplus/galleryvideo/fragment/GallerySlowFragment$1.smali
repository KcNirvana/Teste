.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;
.super Ljava/lang/Object;
.source "GallerySlowFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->lambda$new$17(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->existsFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->deleteDirOrFile(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment$1;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;->access$600(Lcom/miui/video/galleryplus/galleryvideo/fragment/GallerySlowFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->updateMediaStore(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
