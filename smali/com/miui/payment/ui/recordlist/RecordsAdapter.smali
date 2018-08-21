.class public abstract Lcom/miui/payment/ui/recordlist/RecordsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "RecordsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;
    }
.end annotation


# static fields
.field private static final TYPE_HEADER:I = 0x0

.field private static final TYPE_RECORD:I = 0x1


# instance fields
.field private mCheckedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMultiChoice:Z

.field private mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

.field private mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

.field private mOnItemLongClickListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    new-instance v0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;-><init>(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    new-instance v0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;-><init>(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    new-instance v0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$1;-><init>(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    new-instance v0, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$2;-><init>(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->onNewRecordList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/recordlist/RecordsAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mOnItemLongClickListener:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public getCheckedItemIds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordAdapterPosition(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordItem(I)Lcom/miui/payment/data/TransactionItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionItem;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    return-object v2
.end method

.method public abstract getHeaderCount()I
.end method

.method public final getItemCount()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getHeaderCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getHeaderCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMultiChoice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    return v0
.end method

.method public getRecordAdapterPosition(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getHeaderCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method public getRecordItem(I)Lcom/miui/payment/data/TransactionItem;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/data/TransactionItem;

    goto :goto_0
.end method

.method public getRecordsCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IZ)V
.end method

.method public onBindRecordViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5

    instance-of v2, p1, Lcom/miui/payment/ui/recordlist/RecordItemVH;

    if-eqz v2, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/miui/payment/ui/recordlist/RecordItemVH;

    invoke-virtual {p0, p2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordAdapterPosition(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordItem(I)Lcom/miui/payment/data/TransactionItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    iget-object v3, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/payment/ui/recordlist/RecordItemVH;->bindItemView(Lcom/miui/payment/data/TransactionItem;ZZ)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->onBindHeaderViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->onBindRecordViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0
.end method

.method public abstract onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
.end method

.method public onCreateRecordViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1b0400e5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/recordlist/RecordItemVH;

    iget-object v2, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;

    iget-object v3, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mItemViewLongClickListener:Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/miui/payment/ui/recordlist/RecordItemVH;-><init>(Landroid/view/View;Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewClickListener;Lcom/miui/payment/ui/recordlist/ItemVH$ItemViewLongClickListener;)V

    return-object v1
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->onCreateHeaderViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->onCreateRecordViewHolder(Landroid/view/ViewGroup;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_0
.end method

.method public onNewRecordList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mRecords:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3

    iget-boolean v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    if-eqz v1, :cond_3

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method

.method public setMultiChoice(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mOnItemLongClickListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public updateMenu()V
    .locals 3

    iget-boolean v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mIsMultiChoice:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mOnItemLongClickListener:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mOnItemLongClickListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mCheckedSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->mOnItemLongClickListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    invoke-virtual {p0}, Lcom/miui/payment/ui/recordlist/RecordsAdapter;->getRecordsCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1, v0, v2}, Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;->onUpdateMenu(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
