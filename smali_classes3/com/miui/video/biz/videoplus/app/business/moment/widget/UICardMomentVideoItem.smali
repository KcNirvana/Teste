.class public Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;
.super Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;
.source "UICardMomentVideoItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mCheckButton:Landroid/widget/ImageView;

.field private mCoverBitmap:Landroid/graphics/Bitmap;

.field private mDurationText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mListener:Lcom/miui/video/framework/impl/IActionListener;

.field private mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

.field private mMediaEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

.field private mPosition:I

.field private mSource:Landroid/widget/TextView;

.field private mVideoViewLayout:Landroid/widget/RelativeLayout;

.field private mVolumnButton:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;ILcom/miui/video/framework/impl/IActionListener;)V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$layout;->ui_moment_video_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/video/biz/videoplus/ui/UIRecyclerBase;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mPosition:I

    iput-object p4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    return-void
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCoverBitmap:Landroid/graphics/Bitmap;

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

.method private startActivity()V
    .locals 10

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findPosition(Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mPosition:I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setTransAnimBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "action_detail_page"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->setCurrPageList(Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    iget v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/video/biz/videoplus/router/ServiceHolder;->getLocalPlayerService()Lcom/miui/video/base/routers/localplayer/LocalPlayerService;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mContext:Landroid/content/Context;

    sget-object v8, Lcom/miui/video/base/statistics/StatisticsConstant;->sPlayFrom:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-interface/range {v4 .. v9}, Lcom/miui/video/base/routers/localplayer/LocalPlayerService;->startLocalPlayerActivity(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private updateCheckButtonStatus()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->check(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getGroupName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->uncheck(Ljava/lang/String;Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateView(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V
    .locals 11

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMomentItemEntity:Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExt()Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getExtList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntityList:Ljava/util/List;

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVolumnButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getWidth()I

    move-result v0

    :goto_2
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    if-le v1, v0, :cond_3

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    mul-float v3, v3, v1

    sub-float/2addr v0, v3

    float-to-int v0, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/videoplus/R$dimen;->size_620:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_3
    int-to-float v1, v0

    div-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVideoViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVideoViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/miui/video/biz/videoplus/R$color;->c_white:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    div-int/lit8 v6, v0, 0x2

    div-int/lit8 v7, v1, 0x2

    sget v8, Lcom/miui/video/biz/videoplus/R$color;->default_image_color:I

    iget-object v9, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mImageView:Landroid/widget/ImageView;

    new-instance v10, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem$1;

    invoke-direct {v10, p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem$1;-><init>(Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;)V

    invoke-static/range {v5 .. v10}, Lcom/miui/video/biz/videoplus/app/utils/glide/CustomVideoGlide;->into(Ljava/lang/String;IIILandroid/widget/ImageView;Lcom/bumptech/glide/request/RequestListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/TimeUtils;->stringForTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mDurationText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mSource:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$string;->source:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mMediaEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v1}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/biz/videoplus/app/utils/DataMapUtils;->getSrouce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public initFindViews()V
    .locals 1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->cover:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mImageView:Landroid/widget/ImageView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->video_view_layout:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVideoViewLayout:Landroid/widget/RelativeLayout;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->duration:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mDurationText:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->source:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mSource:Landroid/widget/TextView;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->volumn:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVolumnButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mVolumnButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->check_button:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->check_button:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->updateCheckButtonStatus()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->updateCheckButtonStatus()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->startActivity()V

    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/app/business/moment/utils/MomentEditor;->isInEditMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mListener:Lcom/miui/video/framework/impl/IActionListener;

    const-string v1, "KEY_EDIT_MODE_OPEN"

    invoke-interface {p1, v1, v0, p0}, Lcom/miui/video/framework/impl/IActionListener;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mCheckButton:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->updateCheckButtonStatus()V

    const/4 p1, 0x1

    return p1
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    const-string p2, "ACTION_SET_VALUE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->mPosition:I

    instance-of p1, p3, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    if-eqz p1, :cond_2

    check-cast p3, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;->getList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;->getList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/entities/RowEntity;->getList()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/app/business/moment/widget/UICardMomentVideoItem;->updateView(Lcom/miui/video/biz/videoplus/app/business/moment/entity/MomentItemEntity;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
