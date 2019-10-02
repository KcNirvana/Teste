.class public Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "LinearLayoutItemDecoration.java"


# instance fields
.field private mIsVertical:Z

.field private space:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;->space:I

    iput-boolean p2, p0, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;->mIsVertical:Z

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0

    iget-boolean p4, p0, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;->mIsVertical:Z

    if-eqz p4, :cond_0

    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result p2

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/miui/video/common/feed/recyclerview/LinearLayoutItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_1
    :goto_0
    return-void
.end method
