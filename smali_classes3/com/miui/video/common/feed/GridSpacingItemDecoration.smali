.class public Lcom/miui/video/common/feed/GridSpacingItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "GridSpacingItemDecoration.java"


# instance fields
.field private includeEdge:Z

.field private spacing:I

.field private spanCount:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    iput p2, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    iput-boolean p3, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->includeEdge:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    iget p3, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    rem-int p3, p2, p3

    iget-boolean p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->includeEdge:Z

    if-eqz p4, :cond_1

    iget p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    iget v0, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    mul-int v0, v0, p3

    iget v1, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr v0, v1

    sub-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 p3, p3, 0x1

    iget p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    mul-int p3, p3, p4

    iget p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p3, p4

    iput p3, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    if-ge p2, p3, :cond_0

    iget p2, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_0
    iget p2, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    mul-int p4, p4, p3

    iget v0, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->left:I

    iget p4, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    add-int/lit8 p3, p3, 0x1

    iget v0, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    mul-int p3, p3, v0

    iget v0, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    div-int/2addr p3, v0

    sub-int/2addr p4, p3

    iput p4, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spanCount:I

    if-lt p2, p3, :cond_2

    iget p2, p0, Lcom/miui/video/common/feed/GridSpacingItemDecoration;->spacing:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_2
    :goto_0
    return-void
.end method
