.class public abstract Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIEditedRecyclerBase;
.source "UIVideoPosterFourColumn.java"


# static fields
.field private static final MIN_SHOW_PROGRESS_TIME:I = 0x3e8

.field private static final PROGRESS_MAX_SIZE:I = 0x64


# instance fields
.field private itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

.field private mBitmapWeakReference:Landroid/graphics/Bitmap;

.field private mOffset:I

.field private vChecked:Landroid/widget/CheckBox;

.field private vContainer:Landroid/view/View;

.field private vGalleryPoster:Landroid/widget/ImageView;

.field private vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

.field private vSubTitle:Landroid/widget/TextView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_video_poster_four_column:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIEditedRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mBitmapWeakReference:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic lambda$onUIRefresh$33(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->setViewChecked()V

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mUIClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onUIRefresh$34(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;Landroid/view/View;)Z
    .locals 1

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->openEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->setViewChecked()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private setProgress(I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    int-to-float p1, p1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr p1, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setProgress(I)V

    return-void
.end method

.method private setViewChecked()V
    .locals 2

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->onCheckedChange()V

    :cond_0
    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v2
.end method

.method public getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    return-object v0
.end method

.method public getPosterBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mBitmapWeakReference:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_progress_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vContainer:Landroid/view/View;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_subtitle:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vSubTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_img:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vGalleryPoster:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_checked:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    return-void
.end method

.method public initViewsEvent()V
    .locals 0

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/4 v0, 0x4

    const/16 v1, 0x3e8

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne p1, p3, :cond_3

    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    move-object v4, p3

    check-cast v4, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    move-object p1, p3

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1, v3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setIndex(I)V

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mOffset:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->setProgress(I)V

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mOffset:I

    if-le p1, v1, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    invoke-virtual {p1, v3}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setVisibility(I)V

    :cond_3
    :goto_1
    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setIndex(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/miui/video/base/database/CLVDatabase;->getInstance()Lcom/miui/video/base/database/CLVDatabase;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/video/base/database/CLVDatabase;->queryPlayPosition(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mOffset:I

    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vSubTitle:Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTime(J)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getSize()J

    move-result-wide v4

    sget-object p3, Lcom/miui/video/framework/utils/FormatUtils;->NUMERIAL_2:Ljava/text/DecimalFormat;

    invoke-static {v4, v5, p3}, Lcom/miui/video/framework/utils/FormatUtils;->formatSize(JLjava/text/DecimalFormat;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mOffset:I

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->setProgress(I)V

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->mOffset:I

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    invoke-virtual {p1, v3}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setVisibility(I)V

    goto :goto_3

    :cond_5
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vProgress:Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/HorizontalProgressBar;->setVisibility(I)V

    :goto_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vGalleryPoster:Landroid/widget/ImageView;

    new-instance p3, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn$1;

    invoke-direct {p3, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;)V

    invoke-static {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vGalleryPoster:Landroid/widget/ImageView;

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn$2;

    invoke-direct {v5, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    :goto_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vContainer:Landroid/view/View;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIVideoPosterFourColumn$hr4wyUtQHDNOJNlthvnICWMMO8I;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIVideoPosterFourColumn$hr4wyUtQHDNOJNlthvnICWMMO8I;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->vContainer:Landroid/view/View;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIVideoPosterFourColumn$vdqxIicbjUeTBn5yQFdQXxI9J4g;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIVideoPosterFourColumn$vdqxIicbjUeTBn5yQFdQXxI9J4g;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_7
    return-void
.end method

.method public setItemEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIVideoPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    return-object p0
.end method
