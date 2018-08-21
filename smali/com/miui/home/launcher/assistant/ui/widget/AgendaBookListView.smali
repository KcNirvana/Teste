.class public Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;
.super Landroid/widget/LinearLayout;
.source "AgendaBookListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->init()V

    return-void
.end method


# virtual methods
.method public bindView()V
    .locals 4

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->removeAllViews()V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, v1, v2, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->setOrientation(I)V

    return-void
.end method

.method public reBindView()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->removeAllViews()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->bindView()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;-><init>(Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView;->mDataSetObserver:Lcom/miui/home/launcher/assistant/ui/widget/AgendaBookListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
