.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;
.super Lcom/miui/video/framework/base/ui/UIBase;
.source "UITinyMomentItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/miui/video/framework/impl/IActionListener;


# static fields
.field public static ACTION_SET_CLICK:Ljava/lang/String; = "action_set_click"

.field public static ACTION_SET_NULL:Ljava/lang/String; = "action_set_null"

.field public static ACTION_START_ACTIVITY:Ljava/lang/String; = "action_start_activity"


# instance fields
.field private mCheckView:Landroid/widget/ImageView;

.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mPosition:I

.field private mTimeView:Landroid/widget/TextView;

.field private mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/framework/impl/IActionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/framework/base/ui/UIBase;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    new-instance p1, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCoverBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method private findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v2}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private loadImage(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-static {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result p1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mVideoBitmapRequestListener:Lcom/bumptech/glide/request/RequestListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomImageGlide;->into(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getMomentItemEntity()Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    return-object v0
.end method

.method public initFindViews()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$layout;->ui_image:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->addView(Landroid/view/View;)V

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->v_img:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mImageView:Landroid/widget/ImageView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->time:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    sget v1, Lcom/miui/video/biz/videoplus/R$id;->check_button:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setChecked(Z)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->check(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->uncheck(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    :goto_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v0, "action_zoom_in"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, p0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v2, "KEY_EDIT_MODE_OPEN"

    invoke-interface {v0, v2, v1, p0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 3

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x4

    const/16 v1, 0x8

    if-eqz p2, :cond_4

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mImageView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-eqz p1, :cond_7

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    iput-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->loadImage(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->isChecked()Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->isImage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getDesc()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string p3, "0"

    invoke-static {p3, p1}, Lcom/miui/video/framework/utils/TxtUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->parse(Ljava/lang/String;I)Lcom/miui/video/biz/videoplus/player/VideoInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/VideoInfo;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :cond_3
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string p3, "action_if _need_long_click"

    invoke-interface {p1, p3, p2, p0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_SET_NULL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCheckView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_SET_CLICK:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    sget-object p2, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->ACTION_START_ACTIVITY:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->startActivity()V

    :cond_0
    return-void
.end method

.method public startActivity()V
    .locals 10

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mPosition:I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "action_detail_page"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setTransAnimBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->mItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/video/biz/videoplus/router/ServiceHolder;->getLocalPlayerService()Lcom/miui/video/base/routers/localplayer/LocalPlayerService;

    move-result-object v4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UITinyMomentItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v8, Lcom/miui/video/base/statistics/StatisticsConstant;->sPlayFrom:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-interface/range {v4 .. v9}, Lcom/miui/video/base/routers/localplayer/LocalPlayerService;->startLocalPlayerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method
