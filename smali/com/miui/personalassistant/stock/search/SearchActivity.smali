.class public Lcom/miui/personalassistant/stock/search/SearchActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/view/View;

.field private mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mSearchAdapter:Lcom/miui/personalassistant/stock/search/SearchAdapter;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchTip:Landroid/widget/TextView;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/stock/search/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/search/SearchActivity$1;-><init>(Lcom/miui/personalassistant/stock/search/SearchActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/stock/search/SearchActivity;Lcom/miui/personalassistant/stock/search/QueryAsyncTask;)Lcom/miui/personalassistant/stock/search/QueryAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/stock/search/SearchActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/stock/search/SearchActivity;)Lcom/miui/personalassistant/stock/search/SearchAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchAdapter:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    return-object v0
.end method

.method private initView()V
    .locals 2

    const v0, 0x1b09030c

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const v0, 0x1b090351

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/stock/search/SearchAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchAdapter:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchAdapter:Lcom/miui/personalassistant/stock/search/SearchAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const v0, 0x1b090352

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchTip:Landroid/widget/TextView;

    return-void
.end method

.method private setupActionBar()V
    .locals 6

    const v5, 0x102002c

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const v3, 0x1b0400f2

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setCustomView(I)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v0}, Lmiui/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mContext:Landroid/content/Context;

    const v4, 0x1b0b0061

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v3, 0x1020009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchEditText:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private showEmptyView(Z)V
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mContext:Landroid/content/Context;

    const v0, 0x1b0400ed

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->setupActionBar()V

    invoke-direct {p0}, Lcom/miui/personalassistant/stock/search/SearchActivity;->initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/stock/search/QueryAsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mQueryAsyncTask:Lcom/miui/personalassistant/stock/search/QueryAsyncTask;

    :cond_0
    iput-object v2, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mContext:Landroid/content/Context;

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onNetworkConnected(Z)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onNetworkConnected(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/stock/search/SearchActivity;->showEmptyView(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchTip:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mSearchTip:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/stock/search/SearchActivity;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method
