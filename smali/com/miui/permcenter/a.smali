.class public Lcom/miui/permcenter/a;
.super Landroid/widget/BaseAdapter;
.source ""

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field private QT:I

.field private QU:Lcom/miui/permcenter/b;

.field private QV:Z

.field private QW:Ljava/util/List;

.field private QX:Ljava/util/ArrayList;

.field private QY:I

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/a;->mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/a;->QV:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/permcenter/a;->Sl(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method

.method private Sk(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 6

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/a;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/permcenter/a;->createViewHolder(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/permcenter/a;->Qf(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v2, p2

    goto :goto_0
.end method

.method private Sl(Landroid/content/Context;ILjava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/permcenter/a;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/miui/permcenter/a;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/miui/permcenter/a;->QT:I

    iput p2, p0, Lcom/miui/permcenter/a;->QY:I

    iput-object p3, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    return-void
.end method

.method static synthetic Sm(Lcom/miui/permcenter/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic Sn(Lcom/miui/permcenter/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    return-object v0
.end method

.method static synthetic So(Lcom/miui/permcenter/a;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic Sp(Lcom/miui/permcenter/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    return-object p1
.end method

.method static synthetic Sq(Lcom/miui/permcenter/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method protected Qf(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public Sj(Ljava/util/Collection;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/permcenter/a;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    iget-boolean v0, p0, Lcom/miui/permcenter/a;->QV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/a;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clear()V
    .locals 2

    iget-object v1, p0, Lcom/miui/permcenter/a;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    iget-boolean v0, p0, Lcom/miui/permcenter/a;->QV:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/a;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected createViewHolder(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/a;->QT:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/permcenter/a;->Sk(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/a;->QU:Lcom/miui/permcenter/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/permcenter/b;

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/b;-><init>(Lcom/miui/permcenter/a;Lcom/miui/permcenter/b;)V

    iput-object v0, p0, Lcom/miui/permcenter/a;->QU:Lcom/miui/permcenter/b;

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/a;->QU:Lcom/miui/permcenter/b;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/a;->QW:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    iget v0, p0, Lcom/miui/permcenter/a;->QY:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/permcenter/a;->Sk(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/permcenter/a;->QV:Z

    return-void
.end method
