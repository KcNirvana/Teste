.class public Lcom/miui/personalassistant/favorite/ui/SearchActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final CONTENT_CATEGORY:Ljava/lang/String; = "content_category"


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

.field private mSearchKey:Ljava/lang/String;

.field private mSearchPanelTip:Landroid/widget/LinearLayout;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    new-instance v0, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity$2;-><init>(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/favorite/ui/SearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/favorite/ui/SearchActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->analysisSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->analysisSearchCount()V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchPanelTip:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private analysisSearch(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "query_key"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Favorite"

    const-string/jumbo v2, "favorite_search_key"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private analysisSearchCount()V
    .locals 2

    const-string/jumbo v0, "Favorite"

    const-string/jumbo v1, "favorite_search_click"

    invoke-static {v0, v1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initActionBar()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const v2, 0x1b0400ec

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1b0901ed

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miui/personalassistant/favorite/ui/SearchActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity$1;-><init>(Lcom/miui/personalassistant/favorite/ui/SearchActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1b090350

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b025c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method private initData()V
    .locals 3

    new-instance v0, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    const/4 v1, 0x0

    const-string/jumbo v2, "search"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x1b0900ee

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mListView:Landroid/widget/ListView;

    const v0, 0x1b090223

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchPanelTip:Landroid/widget/LinearLayout;

    return-void
.end method

.method private updateUI()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->queryRecords(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchPanelTip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;->setData(Ljava/util/List;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->mSearchPanelTip:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-eqz p3, :cond_0

    const-string/jumbo v0, "key_update"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->updateUI()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b040089

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/SearchActivity;->initData()V

    return-void
.end method
