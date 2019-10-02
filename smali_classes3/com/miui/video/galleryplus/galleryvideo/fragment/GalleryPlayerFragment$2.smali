.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;
.super Ljava/lang/Object;
.source "GalleryPlayerFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$2;I)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;J)V

    return-void
.end method
