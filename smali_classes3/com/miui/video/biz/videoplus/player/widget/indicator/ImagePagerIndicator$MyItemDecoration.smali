.class Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "ImagePagerIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyItemDecoration"
.end annotation


# instance fields
.field private currentPosition:I

.field private focusOffsetRatio:F

.field private positionOffset:F


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->setCurrentItem(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->setPositionOffset(F)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->setFocusOffsetRatio(F)V

    return-void
.end method

.method private setCurrentItem(I)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->currentPosition:I

    return-void
.end method

.method private setFocusOffsetRatio(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    return-void
.end method

.method private setPositionOffset(F)V
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->positionOffset:F

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 5

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getMeasuredWidth()I

    move-result p4

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-eqz v1, :cond_8

    if-ltz v0, :cond_8

    if-ge v0, v1, :cond_8

    if-gtz p4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object p2

    check-cast p2, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;

    if-eqz p2, :cond_7

    invoke-static {p2}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;->access$800(Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyViewHolder;)Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    const/4 p2, 0x1

    if-ne v1, p2, :cond_2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    move p3, p4

    goto/16 :goto_1

    :cond_2
    iget p3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->currentPosition:I

    if-ne v0, p3, :cond_3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1000()I

    move-result p3

    int-to-float p3, p3

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->positionOffset:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float p3, p3, v2

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1000()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->positionOffset:F

    sub-float/2addr v3, v4

    mul-float v2, v2, v3

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_3
    iget p3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->currentPosition:I

    add-int/2addr p3, p2

    if-ne v0, p3, :cond_4

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1000()I

    move-result p3

    int-to-float p3, p3

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->positionOffset:F

    mul-float p3, p3, v2

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    mul-float p3, p3, v2

    float-to-int p3, p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1000()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->positionOffset:F

    mul-float v2, v2, v3

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator$MyItemDecoration;->focusOffsetRatio:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v2

    :goto_0
    if-nez v0, :cond_6

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    move p3, p4

    :cond_5
    move p4, v2

    goto :goto_1

    :cond_6
    sub-int/2addr v1, p2

    if-ne v0, v1, :cond_5

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$900()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    :goto_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result p2

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result p4

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/widget/indicator/ImagePagerIndicator;->access$1100()I

    move-result v0

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_7
    :goto_2
    return-void

    :cond_8
    :goto_3
    return-void
.end method
