.class public Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;
.super Landroid/widget/LinearLayout;
.source "PlayerDetailView.java"


# instance fields
.field private items:[Landroid/view/View;

.field private mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

.field private mLandscapePadding:I

.field private mPaddingBottom:I

.field private mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_40:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mLandscapePadding:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/miui/video/biz/videoplus/R$dimen;->dp_100:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mPaddingBottom:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->onOrientationChanged(Z)V

    return-void
.end method

.method private notifyData()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;->getItemsSize()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->items:[Landroid/view/View;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->items:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->items:[Landroid/view/View;

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

    invoke-interface {v3, v0}, Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;->getItemType(I)I

    move-result v3

    invoke-interface {v2, p0, v0, v3}, Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;->getView(Landroid/view/ViewGroup;II)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->items:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->requestLayout()V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->invalidate()V

    return-void
.end method

.method private onOrientationChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mLandscapePadding:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mLandscapePadding:I

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mPaddingBottom:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mPaddingBottom:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public notifyDataChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->notifyData()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->onOrientationChanged(Z)V

    return-void
.end method

.method public setAdapter(Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mAdapter:Lcom/miui/video/biz/videoplus/player/widget/adapter/IBaseAdapter;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->notifyData()V

    return-void
.end method

.method public setScrollView(Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerDetailView;->mScrollView:Lcom/miui/video/biz/videoplus/player/widget/PlayerScrollView;

    return-void
.end method
