.class public Lcom/miui/permcenter/permissions/f;
.super Landroid/app/Fragment;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private Pn:Ljava/util/ArrayList;

.field private Po:Lcom/miui/permcenter/permissions/g;

.field private Pp:Z

.field private Pq:Landroid/widget/ListView;

.field private Pr:Z

.field private Ps:Ljava/util/ArrayList;

.field private mEmptyView:Landroid/view/View;

.field protected mSearchActionMode:Lmiui/view/SearchActionMode;

.field private mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

.field private mSearchInputView:Landroid/widget/TextView;

.field private mSearchTextWatcher:Landroid/text/TextWatcher;

.field private mSearchView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/permcenter/permissions/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/permcenter/permissions/f;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/permissions/t;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/t;-><init>(Lcom/miui/permcenter/permissions/f;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchTextWatcher:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/permcenter/permissions/u;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/permissions/u;-><init>(Lcom/miui/permcenter/permissions/f;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    return-void
.end method

.method private Qh()Lcom/miui/permcenter/c;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/miui/common/b/k;->aIA(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    new-instance v0, Lcom/miui/permcenter/c;

    invoke-direct {v0}, Lcom/miui/permcenter/c;-><init>()V

    const-string/jumbo v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/c;->setPackageName(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.miui.hybrid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/c;->setLabel(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/permcenter/permissions/f;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "constructHybridPermissionInfo error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v4
.end method

.method private Qi()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0c0046

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->mSearchInputView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Qk()V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private Ql()V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070685

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070686

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070663

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    return-void
.end method

.method static synthetic Qm(Lcom/miui/permcenter/permissions/f;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pq:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic Qn(Lcom/miui/permcenter/permissions/f;)Landroid/text/TextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchTextWatcher:Landroid/text/TextWatcher;

    return-object v0
.end method

.method static synthetic Qo(Lcom/miui/permcenter/permissions/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Qp(Lcom/miui/permcenter/permissions/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/permcenter/permissions/f;->Pp:Z

    return p1
.end method

.method static synthetic Qq(Lcom/miui/permcenter/permissions/f;)Lcom/miui/permcenter/c;
    .locals 1

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Qh()Lcom/miui/permcenter/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Qr(Lcom/miui/permcenter/permissions/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Qk()V

    return-void
.end method

.method static synthetic Qs(Lcom/miui/permcenter/permissions/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->updateData()V

    return-void
.end method

.method static synthetic Qt(Lcom/miui/permcenter/permissions/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/permissions/f;->updateSearchResult(Ljava/lang/String;)V

    return-void
.end method

.method private updateData()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionMode:Lmiui/view/SearchActionMode;

    invoke-interface {v0}, Lmiui/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v2}, Lcom/miui/permcenter/permissions/g;->clear()V

    iget-object v2, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/permissions/g;->Sj(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Qi()V

    :goto_2
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v2, v0}, Lcom/miui/permcenter/permissions/g;->Sj(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/g;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/g;->Sj(Ljava/util/Collection;)V

    goto :goto_2
.end method

.method private updateSearchResult(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Qk()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->Su()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/g;->clear()V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->Ps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/permcenter/permissions/g;->Sj(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v0}, Lcom/miui/permcenter/permissions/g;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public Qj(Landroid/content/Loader;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pq:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pn:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v0, p2}, Lcom/miui/permcenter/permissions/g;->Sj(Ljava/util/Collection;)V

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/f;->Pp:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/permcenter/permissions/f;->Pr:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Ql()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/permissions/f;->Qi()V

    return-void
.end method

.method public exitSearchMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionMode:Lmiui/view/SearchActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Lcom/miui/permcenter/permissions/g;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/permcenter/permissions/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pq:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/miui/permcenter/permissions/f;->Po:Lcom/miui/permcenter/permissions/g;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionModeCallback:Lmiui/view/SearchActionMode$Callback;

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/f;->startSearchMode(Lmiui/view/SearchActionMode$Callback;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/permcenter/permissions/f;->Pr:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/permcenter/permissions/v;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/permissions/v;-><init>(Lcom/miui/permcenter/permissions/f;Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v0, 0x7f030138

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0367

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pq:Landroid/widget/ListView;

    const v0, 0x7f0a004d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mEmptyView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->Pq:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a00bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchView:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchView:Landroid/view/View;

    const v2, 0x1020009

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchInputView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/c;

    invoke-virtual {v0}, Lcom/miui/permcenter/c;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.miui.hybrid.action.PERMISSION_PREFERENCES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/permissions/f;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/miui/permcenter/permissions/PermissionsEditorActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, ":miui:starting_window_label"

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string/jumbo v2, "extra_pkgname"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/miui/permcenter/permissions/f;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/permissions/f;->Qj(Landroid/content/Loader;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method public startSearchMode(Lmiui/view/SearchActionMode$Callback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/permcenter/permissions/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/app/Activity;

    invoke-virtual {v0, p1}, Lmiui/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    check-cast v0, Lmiui/view/SearchActionMode;

    iput-object v0, p0, Lcom/miui/permcenter/permissions/f;->mSearchActionMode:Lmiui/view/SearchActionMode;

    :cond_0
    return-void
.end method
