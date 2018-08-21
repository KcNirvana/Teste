.class public Lcom/miui/payment/ui/monthly/MonthStatementLayout;
.super Landroid/widget/LinearLayout;
.source "MonthStatementLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/payment/ui/monthly/MonthViewInteraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;
    }
.end annotation


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCategoryDetailLayout:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

.field private mColumnChartAdapter:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

.field private mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mColumnChartView:Landroid/support/v7/widget/RecyclerView;

.field private mHeaderAmountView:Landroid/widget/TextView;

.field private mHeaderDateView:Landroid/widget/TextView;

.field private mHeaderFocusMonth:J

.field private mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

.field private mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthStatementLayout$1;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout$1;-><init>(Lcom/miui/payment/ui/monthly/MonthStatementLayout;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/monthly/MonthStatementLayout;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->loadMonthStatement(J)V

    return-void
.end method

.method private calculateMonth(JI)J
    .locals 3

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCalendar:Ljava/util/Calendar;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCalendar:Ljava/util/Calendar;

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private init()V
    .locals 1

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;

    invoke-direct {v0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    invoke-interface {v0, p0}, Lcom/miui/payment/ui/monthly/MonthPresenter;->subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V

    return-void
.end method

.method private loadMonthStatement(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    invoke-interface {v0, p1, p2}, Lcom/miui/payment/ui/monthly/MonthPresenter;->loadMonthStatement(J)V

    :cond_0
    return-void
.end method

.method private onMonthChanged(I)V
    .locals 4

    iget-wide v2, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderFocusMonth:J

    invoke-direct {p0, v2, v3, p1}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->calculateMonth(JI)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->loadMonthStatement(J)V

    return-void
.end method

.method private setHeaderDateView(J)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10024

    invoke-static {v1, p1, p2, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public bindStatementCategoryDetail(JLcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCategoryDetailLayout:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    invoke-virtual {v0, p3}, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;->setMonthCategoryDetailData(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method public bindStatementColumnChart(IDLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ID",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartAdapter:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mMonthFocusChangedListener:Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;-><init>(Landroid/content/Context;Lcom/miui/payment/ui/monthly/MonthStatementLayout$MonthFocusChangedListener;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartAdapter:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartAdapter:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartAdapter:Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/payment/ui/monthly/MonthColumnChartAdapter;->setData(IDLjava/util/List;)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    return-void
.end method

.method public bindStatementHeader(JLcom/miui/payment/data/TransactionTotal;)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->setHeaderData(JLcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method public loadDefaultMonthStatement()V
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mPresenter:Lcom/miui/payment/ui/monthly/MonthPresenter;

    invoke-interface {v0}, Lcom/miui/payment/ui/monthly/MonthPresenter;->loadDefaultMonthStatement()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->onMonthChanged(I)V

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->onMonthChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090333
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x1b090334

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderDateView:Landroid/widget/TextView;

    const v0, 0x1b090335

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderAmountView:Landroid/widget/TextView;

    const v0, 0x1b090333

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b090336

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1b09030f

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartView:Landroid/support/v7/widget/RecyclerView;

    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mColumnChartLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v0, 0x1b090310

    invoke-virtual {p0, v0}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mCategoryDetailLayout:Lcom/miui/payment/ui/monthly/MonthCategoryDetailLayout;

    return-void
.end method

.method public setHeaderData(JLcom/miui/payment/data/TransactionTotal;)V
    .locals 5

    iput-wide p1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderFocusMonth:J

    iget-wide v2, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderFocusMonth:J

    invoke-direct {p0, v2, v3}, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->setHeaderDateView(J)V

    if-nez p3, :cond_0

    const-string/jumbo v0, "0.00"

    :goto_0
    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthStatementLayout;->mHeaderAmountView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/miui/payment/data/TransactionTotal;->getFormattedAmountTotal()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
