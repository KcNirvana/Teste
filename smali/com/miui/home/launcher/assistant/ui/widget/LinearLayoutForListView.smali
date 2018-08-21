.class public Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutForListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->bindView()V

    return-void
.end method

.method private bindView()V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->removeAllViews()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->removeView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->setOrientation(I)V

    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    invoke-direct {p0}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->bindView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/LinearLayoutForListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
