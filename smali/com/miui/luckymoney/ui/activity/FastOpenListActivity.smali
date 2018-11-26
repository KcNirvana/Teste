.class public Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.super Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mChangedItem:I

.field private mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

.field private mEmptyView:Landroid/view/View;

.field private mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

.field mInfos:Ljava/util/ArrayList;

.field private mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLayoutFastOpen:Landroid/view/View;

.field private mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

.field private mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSlidingButtonFastOpen:Lmiui/widget/SlidingButton;


# direct methods
.method static synthetic -get0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)I
    .locals 1

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    return v0
.end method

.method static synthetic -get1(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/config/FastOpenConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lmiui/widget/SlidingButton;
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiui/widget/SlidingButton;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->showOpenDialog()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->updateHeader()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$1;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$2;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$3;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private initData()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    new-instance v2, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-direct {v2, v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;-><init>(Z)V

    new-instance v3, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;-><init>(Z)V

    invoke-static {p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v1

    invoke-static {p0}, Lcom/miui/appmanager/h;->blW(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0, v4, v0, v5}, Lcom/miui/appmanager/h;->blS(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Ljava/util/HashSet;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/miui/luckymoney/config/FastOpenConfig;->isRestrict(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->add(Landroid/content/pm/PackageInfo;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->add(Landroid/content/pm/PackageInfo;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v3}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0, v3}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateData(Ljava/util/List;)V

    return-void
.end method

.method private setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->isFastOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    :goto_0
    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->isFastOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->setTitle(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mChangedItem:I

    neg-int v0, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private showOpenDialog()V
    .locals 5

    new-instance v2, Landroid/app/AlertDialog$Builder;

    sget v0, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v2, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0701c5

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v0, 0x7f0a00b6

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0190

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0701c9

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0701ca

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$4;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    const v1, 0x7f070184

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$5;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    const v1, 0x7f0701cb

    invoke-virtual {v2, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;-><init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateHeader()V
    .locals 5

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mInfos:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-direct {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setSectionTitle(Lcom/miui/luckymoney/model/FastOpenAppInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->getListView()Lcom/miui/common/expandableview/PinnedHeaderListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/common/expandableview/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateHeader(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->aGD()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v2, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->updateHeader(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v1}, Lcom/miui/common/expandableview/PinnedHeaderListView;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p0}, Lcom/miui/luckymoney/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-static {p0}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mEmptyView:Landroid/view/View;

    const v0, 0x7f0a004b

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiui/widget/SlidingButton;

    const v0, 0x7f0a0049

    invoke-virtual {p0, v0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mLayoutFastOpen:Landroid/view/View;

    new-instance v0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mItemCheckedChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListAdapter:Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;

    invoke-virtual {v0, v1}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mListView:Lcom/miui/common/expandableview/WrapPinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcom/miui/common/expandableview/WrapPinnedHeaderListView;->aGJ(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v1}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mSlidingButtonFastOpen:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mLayoutFastOpen:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/miui/luckymoney/stats/MiStatUtil;->recordFastOpenShow()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mCommonConfig:Lcom/miui/luckymoney/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/CommonConfig;->isFastOpenEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a01fc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/widget/SlidingButton;->toggle()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onPause()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    invoke-virtual {v0}, Lcom/miui/luckymoney/config/FastOpenConfig;->saveConfig()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/miui/luckymoney/ui/activity/BaseMiuiActivity;->onResume()V

    invoke-direct {p0}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->initData()V

    return-void
.end method
