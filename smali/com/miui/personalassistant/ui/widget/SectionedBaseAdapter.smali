.class public abstract Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SectionedBaseAdapter.java"

# interfaces
.implements Lcom/miui/personalassistant/ui/widget/PinnedHeaderListView$PinnedSectionedHeaderAdapter;


# static fields
.field private static HEADER_VIEW_TYPE:I

.field private static ITEM_VIEW_TYPE:I


# instance fields
.field private mCount:I

.field private mSectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionCount:I

.field private mSectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->HEADER_VIEW_TYPE:I

    sput v0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->ITEM_VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getCountForSection(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private internalGetSectionCount()I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    iget v2, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    if-ltz v2, :cond_0

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    goto :goto_0
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItemId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getItemId(II)J
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionHeaderViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItemViewType(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemViewType(II)I
    .locals 1

    sget v0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->ITEM_VIEW_TYPE:I

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 8

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int v6, v5, v3

    add-int/lit8 v4, v6, 0x1

    if-lt p1, v5, :cond_1

    if-ge p1, v4, :cond_1

    sub-int v6, p1, v5

    add-int/lit8 v2, v6, -0x1

    iget-object v6, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 7

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int v5, v4, v2

    add-int/lit8 v3, v5, 0x1

    if-lt p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    iget-object v5, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v4, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getSectionHeaderViewType(I)I
    .locals 1

    sget v0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->HEADER_VIEW_TYPE:I

    return v0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getViewTypeCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSectionHeader(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetSectionCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    if-ne p1, v1, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    if-lt p1, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->internalGetCountForSection(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mCount:I

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;->mSectionCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
