.class Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$RecommendItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "SubscribeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecommendItemDecoration"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment$RecommendItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    const/high16 p2, 0x42ca0000    # 101.0f

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    const/4 p4, 0x2

    if-eq p2, p4, :cond_2

    rem-int/lit8 p2, p2, 0x3

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    const p2, -0x3de66666    # -38.4f

    goto :goto_1

    :cond_2
    :goto_0
    const p2, 0x41fa6666    # 31.3f

    :goto_1
    invoke-static {p2}, Lcom/miui/video/common/library/utils/DeviceUtils;->dip2px(F)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
