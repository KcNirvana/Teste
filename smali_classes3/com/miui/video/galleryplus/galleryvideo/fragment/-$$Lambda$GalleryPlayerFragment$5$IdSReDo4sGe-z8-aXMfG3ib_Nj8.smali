.class public final synthetic Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$1:I

    iput p3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$1:I

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/-$$Lambda$GalleryPlayerFragment$5$IdSReDo4sGe-z8-aXMfG3ib_Nj8;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;->lambda$onError$28(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryPlayerFragment$5;II)V

    return-void
.end method
