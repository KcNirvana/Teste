.class public Lcom/miui/payment/ui/home/HomeLayoutContainer;
.super Landroid/widget/FrameLayout;
.source "HomeLayoutContainer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HomeLayoutContainer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

.field private mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/payment/ui/home/HomeLayoutContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/home/HomeLayoutContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateRecyclerViewDecoration(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v5}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->getTimeString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v5}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->getHeaderCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/payment/data/TransactionItem;

    invoke-virtual {v5}, Lcom/miui/payment/data/TransactionItem;->getTransactionTimeEdit()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->getTimeString(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v5}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->getHeaderCount()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5, v2}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v5}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->getHeaderCount()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;->setFirstDecorationPosition(I)V

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_4
    iput-object v1, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    iget-object v5, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mFloatingBarItemDecoration:Lcom/miui/personalassistant/ui/widget/FloatingBarItemDecoration;

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0
.end method


# virtual methods
.method public getCheckedItemIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->getCheckedItemIds()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMultiChoice()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->getMultiChoice()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->isCurrentYear(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x180

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x380

    invoke-static {p1, p2, v0}, Lmiui/date/DateUtils;->formatDateTime(JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x1b09030c

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->setAllItemChecked(Z)V

    :cond_0
    return-void
.end method

.method public setCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->onNewCurrentMonthTotal(Lcom/miui/payment/data/TransactionTotal;)V

    :cond_0
    return-void
.end method

.method public setMultiChoice(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->setMultiChoice(ZZ)V

    :cond_0
    return-void
.end method

.method public setRecords(Ljava/util/List;)V
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

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->onNewRecordList(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/home/HomeLayoutContainer;->updateRecyclerViewDecoration(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->onNewTodayTotal(Lcom/miui/payment/data/TransactionTotal;)V

    :cond_0
    return-void
.end method

.method public setup(Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;)V
    .locals 3

    new-instance v0, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-direct {v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, p1}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->setOnItemLongClickListener(Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updateMenu()V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomeLayoutContainer;->mHomeRecordsAdapter:Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;

    invoke-virtual {v0}, Lcom/miui/payment/ui/home/list/HomeRecordsAdapter;->updateMenu()V

    :cond_0
    return-void
.end method
