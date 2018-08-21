.class public Lcom/miui/payment/ui/monthly/MonthPresenterImpl;
.super Ljava/lang/Object;
.source "MonthPresenterImpl.java"

# interfaces
.implements Lcom/miui/payment/ui/monthly/MonthPresenter;


# static fields
.field private static final MAX_SHOW_MONTH_NUMBER:I = 0xc

.field private static final TAG:Ljava/lang/String; = "MonthPresenterImpl"


# instance fields
.field private hasLoadAllMonthAmountTotal:Z

.field private mFocusMonthIndex:I

.field private mMaxMonthAmountTotal:D

.field private mMaxShowMonthCount:I

.field private mMonthAmountTotalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc

    iput v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    iput-boolean v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->hasLoadAllMonthAmountTotal:Z

    iput v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->initMonthTotalList()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getMonthTotalInterval(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->initMonthTotalList()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->setupMonthAmountTotal(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadMonthCategoryDetail()V

    return-void
.end method

.method static synthetic access$402(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->hasLoadAllMonthAmountTotal:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->bindMonthAccountTotal()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;Lcom/miui/payment/data/TransactionTotal;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->bindMonthCategoryDetail(Lcom/miui/payment/data/TransactionTotal;)V

    return-void
.end method

.method private bindMonthAccountTotal()V
    .locals 6

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    iget v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/data/TransactionTotal;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    iget v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-direct {p0, v2}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonth(I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/miui/payment/ui/monthly/MonthViewInteraction;->bindStatementHeader(JLcom/miui/payment/data/TransactionTotal;)V

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    iget v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    iget-wide v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxMonthAmountTotal:D

    iget-object v3, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    invoke-interface {v1, v2, v4, v5, v3}, Lcom/miui/payment/ui/monthly/MonthViewInteraction;->bindStatementColumnChart(IDLjava/util/List;)V

    :cond_0
    return-void
.end method

.method private bindMonthCategoryDetail(Lcom/miui/payment/data/TransactionTotal;)V
    .locals 3

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-direct {p0, v2}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonth(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    invoke-interface {v2, v0, v1, p1}, Lcom/miui/payment/ui/monthly/MonthViewInteraction;->bindStatementCategoryDetail(JLcom/miui/payment/data/TransactionTotal;)V

    :cond_0
    return-void
.end method

.method private getFocusMonth(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private getFocusMonthIndex(J)I
    .locals 3

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private getMonthTotalInterval(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v1}, Lcom/miui/payment/data/TransactionTotal;->getDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/payment/utils/DateUtil;->getMonthInterval(J)I

    move-result v0

    iget v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    if-le v0, v1, :cond_0

    iput v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    :cond_0
    return-void
.end method

.method private initMonthTotalList()V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxShowMonthCount:I

    if-ge v1, v4, :cond_0

    invoke-static {v0}, Lcom/miui/payment/utils/DateUtil;->getMonthSubstituteTime(Ljava/util/Calendar;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthList:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/miui/payment/data/TransactionTotal;->createEmptyTransactionsTotal(J)Lcom/miui/payment/data/TransactionTotal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x2

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxMonthAmountTotal:D

    return-void
.end method

.method private loadAllMonthAccountTotal()V
    .locals 3

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/payment/data/source/TransactionRepository;->queryAllMonthAmountTotalWithRx()Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$1;-><init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$2;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$2;-><init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private loadMonthCategoryDetail()V
    .locals 4

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    iget v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-direct {p0, v1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonth(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthStatementWithRx(J)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$3;-><init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl$4;-><init>(Lcom/miui/payment/ui/monthly/MonthPresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private setupMonthAmountTotal(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionTotal;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v3}, Lcom/miui/payment/data/TransactionTotal;->getDate()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonthIndex(J)I

    move-result v2

    if-ltz v2, :cond_2

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    invoke-interface {v5, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMonthAmountTotalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/payment/data/TransactionTotal;

    invoke-virtual {v3}, Lcom/miui/payment/data/TransactionTotal;->getAmountCNYTotal()D

    move-result-wide v0

    iget-wide v6, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxMonthAmountTotal:D

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v5

    if-lez v5, :cond_4

    iput-wide v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mMaxMonthAmountTotal:D

    goto :goto_1
.end method


# virtual methods
.method public loadDefaultMonthStatement()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->hasLoadAllMonthAmountTotal:Z

    iget v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    invoke-direct {p0, v0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonth(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadMonthStatement(J)V

    return-void
.end method

.method public loadMonthStatement(J)V
    .locals 5

    invoke-static {p1, p2}, Lcom/miui/payment/utils/DateUtil;->getMonthSubstituteTime(J)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->getFocusMonthIndex(J)I

    move-result v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mFocusMonthIndex:I

    iget-boolean v1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->hasLoadAllMonthAmountTotal:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->bindMonthAccountTotal()V

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadMonthCategoryDetail()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->loadAllMonthAccountTotal()V

    goto :goto_0
.end method

.method public bridge synthetic subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V
    .locals 0
    .param p1    # Lcom/miui/payment/ui/base/IViewInteraction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->subscribe(Lcom/miui/payment/ui/monthly/MonthViewInteraction;)V

    return-void
.end method

.method public subscribe(Lcom/miui/payment/ui/monthly/MonthViewInteraction;)V
    .locals 0
    .param p1    # Lcom/miui/payment/ui/monthly/MonthViewInteraction;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthPresenterImpl;->mViewInteraction:Lcom/miui/payment/ui/monthly/MonthViewInteraction;

    return-void
.end method
