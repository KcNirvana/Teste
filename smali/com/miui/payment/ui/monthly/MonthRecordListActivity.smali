.class public Lcom/miui/payment/ui/monthly/MonthRecordListActivity;
.super Lmiui/app/Activity;
.source "MonthRecordListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/payment/ui/monthly/MonthRecordListActivity$ActionModeCallBack;
    }
.end annotation


# static fields
.field public static final INTENT_EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final INTENT_EXTRA_DATE:Ljava/lang/String; = "date"

.field public static final INTENT_EXTRA_EXCLUDE_CATEGORY:Ljava/lang/String; = "exclude_category"

.field private static final TAG:Ljava/lang/String; = "MonthRecordListActivity"


# instance fields
.field private mCategoryCode:I

.field private mDate:J

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeleteRecordDisposable:Lio/reactivex/disposables/Disposable;

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mExcludeCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFilterSortView:Lmiui/widget/FilterSortView;

.field private mIsAllChecked:Z

.field private mIsTimeSortFiltered:Z

.field private mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

.field private mPaymentRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/payment/data/TransactionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

.field private mRecordsDisposable:Lio/reactivex/disposables/Disposable;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTabMoney:Lmiui/widget/FilterSortView$TabView;

.field private mTabTime:Lmiui/widget/FilterSortView$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    new-instance v0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$5;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mPaymentRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mPaymentRecords:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->sortRecords(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->loadRecords()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsAllChecked:Z

    return v0
.end method

.method static synthetic access$702(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsAllChecked:Z

    return p1
.end method

.method static synthetic access$800(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->deleteRecords(Ljava/util/List;)V

    return-void
.end method

.method private deleteRecords(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/payment/data/source/TransactionRepository;->deleteTransactionsWithRx(Ljava/util/List;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$3;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$3;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V

    new-instance v2, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$4;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDeleteRecordDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private loadRecords()V
    .locals 6

    iget v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDate:J

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    aput v5, v1, v4

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/payment/data/source/TransactionRepository;->queryMonthTransactionsByCategoryWithRx(J[I)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$1;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V

    new-instance v2, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$2;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity$2;-><init>(Lcom/miui/payment/ui/monthly/MonthRecordListActivity;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordsDisposable:Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void
.end method

.method private sortRecords(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mPaymentRecords:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1}, Lmiui/widget/FilterSortView$TabView;->isDescending()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/payment/utils/SortUtils;->sortRecordsItemModelsByTime(Ljava/util/List;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mPaymentRecords:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabMoney:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v1}, Lmiui/widget/FilterSortView$TabView;->isDescending()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/payment/utils/SortUtils;->sortRecordsItemModelsByMoney(Ljava/util/List;Z)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    invoke-virtual {v1}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->getMultiChoice()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->setMultiChoice(ZZ)V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    iget-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    invoke-direct {p0, v0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->sortRecords(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    invoke-virtual {v0}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    iget-boolean v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    invoke-direct {p0, v0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->sortRecords(Z)V

    iget-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    invoke-virtual {v0}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1b090325
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x1b0400d3

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->setContentView(I)V

    const v4, 0x1b09030c

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView;

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v5, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v5, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v4, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    invoke-direct {v4}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;-><init>()V

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    invoke-virtual {v4, v5}, Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;->setOnItemLongClickListener(Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;)V

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mRecordListAdapter:Lcom/miui/payment/ui/monthly/MonthRecordListAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v4, 0x1b090328

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/FilterSortView;

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mFilterSortView:Lmiui/widget/FilterSortView;

    const v4, 0x1b09032a

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/FilterSortView$TabView;

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabMoney:Lmiui/widget/FilterSortView$TabView;

    const v4, 0x1b090329

    invoke-virtual {p0, v4}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lmiui/widget/FilterSortView$TabView;

    iput-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabMoney:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v4, p0}, Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v4, p0}, Lmiui/widget/FilterSortView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :try_start_0
    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/widget/FilterSortView$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0c018b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabMoney:Lmiui/widget/FilterSortView$TabView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lmiui/widget/FilterSortView$TabView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0c018b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mFilterSortView:Lmiui/widget/FilterSortView;

    iget-object v5, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v4, v5}, Lmiui/widget/FilterSortView;->setFilteredTab(Lmiui/widget/FilterSortView$TabView;)V

    iput-boolean v9, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mIsTimeSortFiltered:Z

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v4}, Lmiui/widget/FilterSortView$TabView;->isDescending()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mTabTime:Lmiui/widget/FilterSortView$TabView;

    invoke-virtual {v4}, Lmiui/widget/FilterSortView$TabView;->performClick()Z

    :cond_0
    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDate:J

    const-string/jumbo v4, "category"

    invoke-virtual {v1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v4, 0x1b0400df

    invoke-virtual {v0, v4}, Lmiui/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1b090325

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1b090326

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1b090327

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b02b4

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mCategoryCode:I

    invoke-static {p0, v7}, Lcom/miui/payment/utils/CategoryHelper;->getCategoryString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v4, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mDate:J

    const v6, 0x10024

    invoke-static {p0, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->mOnItemLongClickListener:Lcom/miui/payment/ui/recordlist/RecordsAdapter$OnItemLongClickListener;

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    invoke-direct {p0}, Lcom/miui/payment/ui/monthly/MonthRecordListActivity;->loadRecords()V

    return-void
.end method
