.class public Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;
.super Landroid/widget/LinearLayout;
.source "MonthCategoryDetailLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;,
        Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;,
        Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$CategoryDetailListAdapter;
    }
.end annotation


# instance fields
.field private mBarChartAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;

.field private mBarChartListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mBarChartListView:Landroid/widget/ListView;

.field private mCategoryDetailView:Landroid/view/View;

.field private mCategoryDetailViewStub:Landroid/view/ViewStub;

.field private mEmptyView:Landroid/view/View;

.field private mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

.field private mPieChartLabelAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

.field private mPieChartLabelListView:Landroid/widget/ListView;

.field private mPieChartView:Lcom/miui/payment/ui/view/PieChartView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;-><init>(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;-><init>(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$1;-><init>(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;)Lcom/miui/payment/data/TransactionTotal;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    return-object v0
.end method

.method private initCategoryDetailViewStub()V
    .locals 3

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    const v2, 0x1b09031f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/ui/view/PieChartView;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartView:Lcom/miui/payment/ui/view/PieChartView;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    const v2, 0x1b090320

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    const v2, 0x1b090321

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

    invoke-direct {v1, v0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;

    invoke-direct {v1, v0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private setupDetailList(DLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mBarChartAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$BarChartAdapter;->setCategoryDetailData(DLjava/util/List;)V

    return-void
.end method

.method private setupPieChartView(DLjava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal$CategoryTotal;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartView:Lcom/miui/payment/ui/view/PieChartView;

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v12, v13}, Lcom/miui/payment/ui/view/PieChartView;->setData(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

    const-wide/16 v14, 0x0

    sget-object v13, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v12, v14, v15, v13}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->setCategoryDetailData(DLjava/util/List;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;

    new-instance v10, Lcom/miui/payment/ui/view/PieChartView$PieChartData;

    invoke-direct {v10}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;-><init>()V

    invoke-virtual {v7}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getAmountCNYTotal()D

    move-result-wide v4

    invoke-virtual {v10, v4, v5}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->setValue(D)V

    invoke-virtual {v7}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/miui/payment/data/TransactionTotal$CategoryTotal;->getCategory()I

    move-result v12

    invoke-static {v8, v12}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryColor(Landroid/content/Context;I)I

    move-result v12

    invoke-virtual {v10, v12}, Lcom/miui/payment/ui/view/PieChartView$PieChartData;->setColor(I)V

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartView:Lcom/miui/payment/ui/view/PieChartView;

    invoke-virtual {v12, v11}, Lcom/miui/payment/ui/view/PieChartView;->setData(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mPieChartLabelAdapter:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-virtual {v12, v0, v1, v2}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout$PieChartLabelAdapter;->setCategoryDetailData(DLjava/util/List;)V

    goto :goto_0
.end method

.method private showCategoryDetailView()V
    .locals 5

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mEmptyView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->initCategoryDetailViewStub()V

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v3}, Lcom/miui/payment/data/TransactionTotal;->getAmountCNYTotal()D

    move-result-wide v0

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v3}, Lcom/miui/payment/data/TransactionTotal;->getCategoryTotalList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->setupPieChartView(DLjava/util/List;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->setupDetailList(DLjava/util/List;)V

    return-void
.end method

.method private showEmptyView()V
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mEmptyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b090323

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mEmptyView:Landroid/view/View;

    const v0, 0x1b090324

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mCategoryDetailViewStub:Landroid/view/ViewStub;

    return-void
.end method

.method public setMonthCategoryDetailData(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 4

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->mMonthTotal:Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v0}, Lcom/miui/payment/data/TransactionTotal;->getAmountCNYTotal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->showEmptyView()V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->showCategoryDetailView()V

    goto :goto_0
.end method
