.class public Lcom/miui/permcenter/install/PackageManagerActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private QA:Ljava/util/ArrayList;

.field private Qw:Lcom/miui/permcenter/install/f;

.field private Qx:Landroid/content/BroadcastReceiver;

.field private Qy:Landroid/view/View;

.field private Qz:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/permcenter/install/p;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/p;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qx:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private RT()V
    .locals 2

    const v0, 0x7f0a035e

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qy:Landroid/view/View;

    const v0, 0x7f0a0081

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qz:Landroid/widget/TextView;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/permcenter/install/q;

    invoke-direct {v1, p0}, Lcom/miui/permcenter/install/q;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/miui/permcenter/install/f;

    invoke-direct {v0, p0}, Lcom/miui/permcenter/install/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qw:Lcom/miui/permcenter/install/f;

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qw:Lcom/miui/permcenter/install/f;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qw:Lcom/miui/permcenter/install/f;

    invoke-virtual {v0, p0}, Lcom/miui/permcenter/install/f;->RZ(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private RV()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QP()I

    move-result v1

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QQ()Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QJ()V

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qy:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v0, ""

    if-le v1, v5, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f0706a6

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qz:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const v1, 0x7f0706a5

    invoke-virtual {p0, v1, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private RW(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/i;

    invoke-virtual {v0}, Lcom/miui/permcenter/install/i;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v1, v0}, Lcom/miui/permcenter/install/a;->Re(Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic RX(Lcom/miui/permcenter/install/PackageManagerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qy:Landroid/view/View;

    return-object v0
.end method

.method static synthetic RY(Lcom/miui/permcenter/install/PackageManagerActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->RV()V

    return-void
.end method


# virtual methods
.method public RU(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGI(Landroid/view/View;)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qw:Lcom/miui/permcenter/install/f;

    invoke-virtual {v0, p2}, Lcom/miui/permcenter/install/f;->updateData(Ljava/util/List;)V

    return-void
.end method

.method public finish()V
    .locals 3

    invoke-super {p0}, Lcom/miui/common/a/d;->finish()V

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/miui/permcenter/install/a;->removePackage(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/permcenter/a/a;->Qy(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity;->RW(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012e

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/install/PackageManagerActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->RT()V

    invoke-virtual {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iput-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->RV()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.miui.permcenter.install.action_data_change"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/miui/permcenter/install/r;

    invoke-virtual {p0}, Lcom/miui/permcenter/install/PackageManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/permcenter/install/r;-><init>(Lcom/miui/permcenter/install/PackageManagerActivity;Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onDestroy()V

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qx:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->Qw:Lcom/miui/permcenter/install/f;

    invoke-virtual {v0, p3}, Lcom/miui/permcenter/install/f;->isSectionHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/install/g;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1}, Lmiui/widget/SlidingButton;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-direct {p0, v2, v1}, Lcom/miui/permcenter/install/PackageManagerActivity;->RW(Landroid/widget/CompoundButton;Z)V

    iget-object v0, v0, Lcom/miui/permcenter/install/g;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/miui/permcenter/install/PackageManagerActivity;->RU(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "packages"

    iget-object v1, p0, Lcom/miui/permcenter/install/PackageManagerActivity;->QA:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
