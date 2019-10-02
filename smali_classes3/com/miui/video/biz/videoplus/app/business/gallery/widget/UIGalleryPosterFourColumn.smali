.class public abstract Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;
.super Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIEditedRecyclerBase;
.source "UIGalleryPosterFourColumn.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIGalleryPosterFourColumn"


# instance fields
.field private itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

.field private mBitmapWeakReference:Landroid/graphics/Bitmap;

.field private vChecked:Landroid/widget/CheckBox;

.field private vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

.field private vTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_videoplus_gallery_poster_four_column:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIEditedRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->mBitmapWeakReference:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public static synthetic lambda$onUIRefresh$31(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->setViewChecked()V

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->mUIClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onUIRefresh$32(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;Landroid/view/View;)Z
    .locals 1

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->openEditMode()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->setViewChecked()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->mUILongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private setViewChecked()V
    .locals 2

    const-string v0, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->onCheckedChange()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemEntity()Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    return-object v0
.end method

.method public getPosterBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->mBitmapWeakReference:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_gallery_poster:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/feed/ui/card/UIImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_title:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vTitle:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_checked:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    const-string v0, "ACTION_SET_VALUE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne p1, p3, :cond_2

    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p3, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setChecked(Z)Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setIndex(I)V

    return-void

    :cond_2
    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1, p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->setIndex(I)V

    const-string p1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->isEditModeEquals(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isChecked()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vChecked:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :goto_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->isVideo()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vTitle:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getDuration()J

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/miui/video/framework/utils/FormatUtils;->formatPlayTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance p3, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn$1;

    invoke-direct {p3, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;)V

    invoke-static {p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getWidth()I

    move-result v1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    const/4 v4, 0x0

    new-instance v5, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn$2;

    invoke-direct {v5, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn$2;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;)V

    invoke-static/range {v0 .. v5}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;ILcom/bumptech/glide/request/RequestListener;)V

    :goto_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterFourColumn$h0iE_73urTRBfFBg_fDXsN_hPdk;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterFourColumn$h0iE_73urTRBfFBg_fDXsN_hPdk;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->vGalleryPoster:Lcom/miui/video/common/feed/ui/card/UIImageView;

    new-instance p2, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterFourColumn$r_mFxtssHlg5P3b9Tp6rJGeqra4;

    invoke-direct {p2, p0}, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/-$$Lambda$UIGalleryPosterFourColumn$r_mFxtssHlg5P3b9Tp6rJGeqra4;-><init>(Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;)V

    invoke-virtual {p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_5
    return-void
.end method

.method public setItemEntity(Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;)Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/UIGalleryPosterFourColumn;->itemEntity:Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryItemEntity;

    return-object p0
.end method
