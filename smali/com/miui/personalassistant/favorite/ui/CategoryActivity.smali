.class public Lcom/miui/personalassistant/favorite/ui/CategoryActivity;
.super Lmiui/app/Activity;
.source "CategoryActivity.java"


# instance fields
.field private mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

.field private mCategory:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

.field private mSearchPanelTip:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    return-void
.end method

.method private analysis(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Favorite"

    invoke-static {v0, p1}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private init()V
    .locals 3

    const-string/jumbo v0, ""

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "content_category"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mCategory:Ljava/lang/String;

    const-string/jumbo v1, "article"

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b01c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "favorite_article_view"

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->analysis(Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x1b090223

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mSearchPanelTip:Landroid/widget/TextView;

    const v1, 0x1b0900ee

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    return-void

    :cond_1
    const-string/jumbo v1, "video"

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b01c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "favorite_video_view"

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->analysis(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "shopping"

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b01c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "favorite_product_view"

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->analysis(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateUI()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mRecordDao:Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/favorite/db/FavoriteRecordDao;->queryByCategory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mSearchPanelTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mSearchPanelTip:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    new-instance v1, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    const-string/jumbo v2, "category"

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    iget-object v1, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->mAdapter:Lcom/miui/personalassistant/favorite/adapter/FavoriteListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

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

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->updateUI()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b040086

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->init()V

    invoke-direct {p0}, Lcom/miui/personalassistant/favorite/ui/CategoryActivity;->updateUI()V

    return-void
.end method
