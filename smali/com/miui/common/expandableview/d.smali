.class public abstract Lcom/miui/common/expandableview/d;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Lcom/miui/common/expandableview/a;


# static fields
.field private static HEADER_VIEW_TYPE:I

.field private static ITEM_VIEW_TYPE:I


# instance fields
.field private mCount:I

.field private mSectionCache:Landroid/util/SparseArray;

.field private mSectionCount:I

.field private mSectionCountCache:Landroid/util/SparseArray;

.field private mSectionPositionCache:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/miui/common/expandableview/d;->HEADER_VIEW_TYPE:I

    sput v0, Lcom/miui/common/expandableview/d;->ITEM_VIEW_TYPE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionPositionCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCountCache:Landroid/util/SparseArray;

    iput v1, p0, Lcom/miui/common/expandableview/d;->mCount:I

    iput v1, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 3

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getCountForSection(I)I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/expandableview/d;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0
.end method

.method private internalGetSectionCount()I
    .locals 1

    iget v0, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/common/expandableview/d;->getSectionCount()I

    move-result v0

    iput v0, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    iget v0, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    return v0
.end method


# virtual methods
.method public final getCount()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/miui/common/expandableview/d;->mCount:I

    if-ltz v1, :cond_0

    iget v0, p0, Lcom/miui/common/expandableview/d;->mCount:I

    return v0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0}, Lcom/miui/common/expandableview/d;->internalGetSectionCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/d;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/miui/common/expandableview/d;->mCount:I

    return v1
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/expandableview/d;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/expandableview/d;->getItemId(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getItemId(II)J
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/common/expandableview/d;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/common/expandableview/d;->getSectionHeaderViewType(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/common/expandableview/d;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public getItemViewType(II)I
    .locals 1

    sget v0, Lcom/miui/common/expandableview/d;->ITEM_VIEW_TYPE:I

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lcom/miui/common/expandableview/d;->internalGetSectionCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/d;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    sub-int v0, p1, v2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/miui/common/expandableview/d;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lcom/miui/common/expandableview/d;->internalGetSectionCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/d;->internalGetCountForSection(I)I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    iget-object v1, p0, Lcom/miui/common/expandableview/d;->mSectionCache:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_2
    return v1
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getSectionHeaderViewType(I)I
    .locals 1

    sget v0, Lcom/miui/common/expandableview/d;->HEADER_VIEW_TYPE:I

    return v0
.end method

.method public getSectionHeaderViewTypeCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/miui/common/expandableview/d;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/miui/common/expandableview/d;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/miui/common/expandableview/d;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getViewTypeCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/common/expandableview/d;->getItemViewTypeCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/common/expandableview/d;->getSectionHeaderViewTypeCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isSectionHeader(I)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    invoke-direct {p0}, Lcom/miui/common/expandableview/d;->internalGetSectionCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-ge p1, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/common/expandableview/d;->internalGetCountForSection(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lcom/miui/common/expandableview/d;->mCount:I

    iput v1, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/miui/common/expandableview/d;->mSectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput v1, p0, Lcom/miui/common/expandableview/d;->mCount:I

    iput v1, p0, Lcom/miui/common/expandableview/d;->mSectionCount:I

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
