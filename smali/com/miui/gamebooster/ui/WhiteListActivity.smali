.class public Lcom/miui/gamebooster/ui/WhiteListActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private j:Ljava/util/ArrayList;

.field private k:Ljava/lang/Object;

.field private l:Lcom/miui/gamebooster/b/a;

.field private m:Landroid/content/pm/PackageManager;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;

.field n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private o:Ljava/util/HashMap;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/gamebooster/ui/WhiteListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/gamebooster/ui/WhiteListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/gamebooster/ui/WhiteListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->o:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/gamebooster/ui/u;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/u;-><init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/gamebooster/ui/v;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/v;-><init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/miui/gamebooster/ui/w;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/w;-><init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/gamebooster/ui/x;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/ui/x;-><init>(Lcom/miui/gamebooster/ui/WhiteListActivity;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-void
.end method

.method static synthetic A(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->m:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic B(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lmiui/view/SearchActionMode$Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-object v0
.end method

.method static synthetic C(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic D(Lcom/miui/gamebooster/ui/WhiteListActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic E(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->u()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/miui/gamebooster/ui/WhiteListActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/ui/WhiteListActivity;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private u()Ljava/util/ArrayList;
    .locals 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/miui/gamebooster/a/p;->gc(Landroid/content/Context;I)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "package_name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "package_uid"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->t(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_2
    invoke-static {p0, v1, v0, v4, v5}, Lcom/miui/gamebooster/a/p;->gb(Landroid/content/Context;Ljava/lang/String;IZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    return-object v3

    :cond_1
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_3
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    move-object v2, v1

    goto :goto_1
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Lcom/miui/gamebooster/model/f;

    invoke-direct {v5}, Lcom/miui/gamebooster/model/f;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/miui/gamebooster/model/f;->mZ(Ljava/util/ArrayList;)V

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/f;->mV()Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/e;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/e;->mR()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    const v2, 0x7f0c0047

    invoke-virtual {v0, v2, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/miui/gamebooster/model/f;->setHeaderTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    invoke-virtual {v0, v3}, Lcom/miui/gamebooster/b/a;->updateData(Ljava/util/List;)V

    return-void
.end method

.method private w()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "map"

    iget-object v2, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->o:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->finish()V

    return-void
.end method

.method static synthetic x(Lcom/miui/gamebooster/ui/WhiteListActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->j:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic y(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/gamebooster/b/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    return-object v0
.end method

.method static synthetic z(Lcom/miui/gamebooster/ui/WhiteListActivity;)Lcom/miui/common/expandableview/WrapPinnedHeaderListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    return-object v0
.end method


# virtual methods
.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->w()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0a025c

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03014b

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->m:Landroid/content/pm/PackageManager;

    :try_start_0
    const-string/jumbo v0, "android.app.AppGlobals"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getPackageManager"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/miui/a/c/a;->btx(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {p0, v4}, Lcom/miui/gamebooster/ui/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchView:Landroid/view/View;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/gamebooster/b/a;

    invoke-direct {v0, p0}, Lcom/miui/gamebooster/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/a;->ti(Landroid/content/pm/PackageManager;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/a;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v4}, Lcom/miui/gamebooster/ui/WhiteListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchView:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/ui/y;

    invoke-direct {v0, p0, p0}, Lcom/miui/gamebooster/ui/y;-><init>(Lcom/miui/gamebooster/ui/WhiteListActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/ui/WhiteListActivity;->v(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->w()V

    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/miui/common/a/d;->onPause()V

    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public t(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v7

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->k:Ljava/lang/Object;

    const-class v1, Landroid/content/pm/ApplicationInfo;

    const-string/jumbo v2, "getApplicationInfo"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/16 v5, 0x2000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/a/c/a;->bty(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v7
.end method

.method public v(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 4

    const/4 v2, 0x0

    iput-object p2, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->j:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/f;

    invoke-virtual {v0}, Lcom/miui/gamebooster/model/f;->getSize()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/ui/WhiteListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0046

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGI(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->l:Lcom/miui/gamebooster/b/a;

    iget-object v1, p0, Lcom/miui/gamebooster/ui/WhiteListActivity;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/gamebooster/b/a;->updateData(Ljava/util/List;)V

    return-void
.end method
