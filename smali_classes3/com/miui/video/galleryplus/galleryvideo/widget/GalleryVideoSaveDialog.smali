.class public Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "GalleryVideoSaveDialog.java"


# static fields
.field private static final HANDLER_WHAT:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private mLayoutView:Landroid/view/View;

.field private mPercent:Landroid/widget/TextView;

.field private mProgress:I

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mProgress:I

    return p0
.end method

.method private getDelay(I)I
    .locals 1

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 v0, 0x32

    if-ge p1, v0, :cond_1

    const/16 p1, 0xc8

    goto :goto_0

    :cond_1
    const/16 v0, 0x46

    if-ge p1, v0, :cond_2

    const/16 p1, 0x190

    goto :goto_0

    :cond_2
    const/16 p1, 0x1f4

    :goto_0
    return p1
.end method


# virtual methods
.method public completeSave(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mPercent:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/galleryplus/R$string;->slid_fail_message:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public initFindViews()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$layout;->gallery_video_save_dialog:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mLayoutView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_percent:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mPercent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mLayoutView:Landroid/view/View;

    sget v1, Lcom/miui/video/galleryplus/R$id;->gallery_video_progress:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mProgressBar:Landroid/widget/ProgressBar;

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;

    invoke-direct {v0, p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    return-void
.end method

.method public initViewsValue()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->setProgress(I)V

    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mProgress:I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->getDelay(I)I

    move-result v0

    const/16 v1, 0x5f

    if-ge p1, v1, :cond_1

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    int-to-long v2, v0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method
