.class public Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GalleryItemDecoration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GalleryItemDecoration"


# instance fields
.field private mDividerPadding:I

.field private mGalleryFolderEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginTop:I

.field private mPadding:I

.field private mSpanCount:I

.field private mSpanSize4Position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;I)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mSpanSize4Position:I

    iput p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mSpanCount:I

    invoke-virtual {p2}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryListEntity;->getList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mGalleryFolderEntities:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_16_67:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mMarginTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_13:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_47:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mDividerPadding:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mGalleryFolderEntities:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    sub-int/2addr p3, v0

    if-ne p2, p3, :cond_0

    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mDividerPadding:I

    iput p3, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p3

    const/16 v1, 0xc

    if-ne p3, v1, :cond_4

    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p3, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mGalleryFolderEntities:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result p4

    if-ne p4, v0, :cond_1

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShowValue()I

    move-result p1

    if-ne p1, v0, :cond_a

    iput p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mSpanSize4Position:I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result p2

    const/4 p4, 0x5

    if-ne p2, p4, :cond_2

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result p2

    if-ne p2, v1, :cond_a

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getShowValue()I

    move-result p2

    if-ne p2, v0, :cond_3

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mDividerPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_4
    invoke-virtual {p4}, Landroid/support/v7/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_a

    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mGalleryFolderEntities:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_5

    return-void

    :cond_5
    iget-object p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mGalleryFolderEntities:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;

    invoke-virtual {p3}, Lcom/miui/video/biz/videoplus/app/business/gallery/entities/GalleryFolderEntity;->getLayoutType()I

    move-result p3

    const/4 p4, 0x3

    if-ne p3, p4, :cond_a

    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mSpanSize4Position:I

    add-int/lit8 p3, p3, 0x2

    if-gt p2, p3, :cond_6

    const/4 p3, 0x0

    iput p3, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_6
    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mMarginTop:I

    iput p3, p1, Landroid/graphics/Rect;->top:I

    :goto_0
    iget p3, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mSpanSize4Position:I

    rem-int/lit8 p3, p3, 0x2

    if-nez p3, :cond_8

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_7
    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_8
    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_9
    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/business/gallery/widget/GalleryItemDecoration;->mPadding:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_a
    :goto_1
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    return-void
.end method
