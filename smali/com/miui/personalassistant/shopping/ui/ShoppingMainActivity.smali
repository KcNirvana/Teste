.class public Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "ShoppingMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShoppingMainActivity"


# instance fields
.field private isSelectAll:Z

.field private mActionBar:Lmiui/app/ActionBar;

.field private mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

.field private mAllFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

.field private mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

.field private mIvSearch:Landroid/widget/ImageView;

.field private mIvSetting:Landroid/widget/ImageView;

.field private mModifyMenuItem:Landroid/view/MenuItem;

.field private mShareMenuItem:Landroid/view/MenuItem;

.field private mStartMills:J

.field private mViewPager:Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->isSelectAll:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/view/ActionMode;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->asyncDelete(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->updateFragmentAdapter(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->modifyData(Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$202(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mModifyMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$302(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mShareMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->cancelEdit()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->isSelectAll:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->isSelectAll:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->analysisDeleteBatch(I)V

    return-void
.end method

.method private analysisDeleteBatch(I)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "count"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Shopping"

    const-string/jumbo v2, "shopping_main_delete_batch"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private analysisStay()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "stay_mills"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mStartMills:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "Shopping"

    const-string/jumbo v2, "shopping_time"

    invoke-static {v1, v2, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private asyncDelete(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v2}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getCount()I

    move-result v2

    if-ne p1, v2, :cond_0

    const-string/jumbo v2, "key_all_delete_shopping"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/personalassistant/shopping/service/ShoppingDeleteService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/miui/personalassistant/shopping/bean/DataHolder;->getInstance()Lcom/miui/personalassistant/shopping/bean/DataHolder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/miui/personalassistant/shopping/bean/DataHolder;->setData(Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ShoppingMainActivity"

    const-string/jumbo v3, "start DeleteService Exception"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "key_all_delete_shopping"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/personalassistant/util/Preference;->setBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private cancelEdit()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->setEditing(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mViewPager:Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;->setScrollEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_1
    return-void
.end method

.method private initAnalysis()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mStartMills:J

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "shopping_home_view"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "card_more_button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "source"

    const-string/jumbo v3, "card_more_button"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Shopping"

    const-string/jumbo v3, "shopping_home_view"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    :goto_0
    invoke-static {}, Lcom/miui/personalassistant/favorite/util/FavUtil;->analysisDau()V

    return-void

    :cond_0
    const-string/jumbo v2, "source"

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "Shopping"

    const-string/jumbo v3, "shopping_home_view"

    invoke-static {v2, v3, v0}, Lcom/miui/personalassistant/util/MiStatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-direct {v2}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;-><init>()V

    iput-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAllFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAllFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/miui/personalassistant/favorite/adapter/FavTabAdapter;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/miui/personalassistant/favorite/adapter/FavTabAdapter;-><init>(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mViewPager:Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;

    invoke-virtual {v2, v0}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x1b090241

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mViewPager:Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;

    return-void
.end method

.method private modifyData(Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-virtual {v0, p1, p2}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->modifyData(Lcom/miui/personalassistant/shopping/bean/Shopping;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->updateFragment()V

    const v0, 0x1b0b01ea

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    return-void
.end method

.method private setBottomMenuDisable()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mModifyMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return-void
.end method

.method private setSelectAllMenu(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->isSelectAll:Z

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    check-cast v0, Lmiui/view/EditActionMode;

    const v2, 0x102001a

    if-eqz p1, :cond_1

    sget v1, Lmiui/R$string;->deselect_all:I

    :goto_0
    invoke-interface {v0, v2, v1}, Lmiui/view/EditActionMode;->setButton(II)V

    :cond_0
    return-void

    :cond_1
    sget v1, Lmiui/R$string;->select_all:I

    goto :goto_0
.end method

.method private updateFragment()V
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->updateData()V

    return-void
.end method

.method private updateFragmentAdapter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/shopping/bean/Shopping;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    invoke-virtual {v0, p1}, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->delete(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected initActionBar()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTabsMode(Z)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_button_setting_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    const v1, 0x1b0b038b

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$1;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSetting:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setEndView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    sget v1, Lmiui/R$drawable;->action_button_search_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0b052a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$2;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mIvSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setStartView(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1b040105

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->initView()V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->initData()V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->initAnalysis()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mClipboardAsyncTask:Lcom/miui/personalassistant/favorite/request/ClipboardAsyncTask;

    :cond_0
    invoke-static {p0}, Lcom/miui/personalassistant/util/Util;->sendUpdateScreenBroadcast(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->analysisStay()V

    invoke-super {p0}, Lcom/miui/personalassistant/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemLongClick(Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;I)V
    .locals 2

    iput-object p1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mFragment:Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;

    iget-object v0, p1, Lcom/miui/personalassistant/shopping/ui/ShoppingTabFragment;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iput-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->setEditing(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mViewPager:Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/favorite/ui/widget/ScrollEnableViewPager;->setScrollEnabled(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mActionBar:Lmiui/app/ActionBar;

    new-instance v1, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;

    invoke-direct {v1, p0, p2}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity$ActionModeCallback;-><init>(Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;I)V

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    invoke-virtual {v0}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->getEditing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mAdapter:Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/personalassistant/shopping/adapter/ShoppingMainListAdapter;->setEditing(Z)V

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/personalassistant/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public updateMenu(IIZ)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1b0a0007

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    if-ne p2, p1, :cond_0

    invoke-direct {p0, v5}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->setSelectAllMenu(Z)V

    :goto_0
    if-ne p2, v5, :cond_1

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mModifyMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_1
    return-void

    :cond_0
    invoke-direct {p0, v6}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->setSelectAllMenu(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mModifyMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mShareMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->mEditActionMode:Landroid/view/ActionMode;

    const v2, 0x1b0b025d

    invoke-virtual {v1, v2}, Landroid/view/ActionMode;->setTitle(I)V

    invoke-direct {p0}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->setBottomMenuDisable()V

    invoke-direct {p0, v6}, Lcom/miui/personalassistant/shopping/ui/ShoppingMainActivity;->setSelectAllMenu(Z)V

    goto :goto_1
.end method
