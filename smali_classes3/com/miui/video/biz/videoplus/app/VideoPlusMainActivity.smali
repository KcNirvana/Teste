.class public Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;
.super Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;
.source "VideoPlusMainActivity.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/app/interfaces/IEditModeCheckedAction;


# static fields
.field private static final ACTION_GRANT_PERMISSION:Ljava/lang/String; = "ACTION_GRANT_PERMISSION"

.field private static final ACTION_INITIALIZATION:Ljava/lang/String; = "ACTION_INITIALIZATION"

.field private static final ACTION_SHOW_PAGE:Ljava/lang/String; = "ACTION_SHOW_PAGE"

.field private static final TAB_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VideoPlusMainActivity"

.field public static final USE_OLD_PLAYER:Z = true


# instance fields
.field private defaultSelectedTabTag:Ljava/lang/String;

.field private hasFoldFragment:Z

.field private isScreenshotsFragment:Z

.field private mLastTabTag:Ljava/lang/String;

.field private mLaunchFrom:Ljava/lang/String;

.field private mMode:Ljava/lang/String;

.field private mSelectedCounts:I

.field private mTabEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/entities/TabEntity;",
            ">;"
        }
    .end annotation
.end field

.field mTabOnclickListener:Landroid/view/View$OnClickListener;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/biz/videoplus/app/widget/UITab;",
            ">;"
        }
    .end annotation
.end field

.field private vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

.field private vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->defaultSelectedTabTag:Ljava/lang/String;

    const-string v0, "KEY_EDIT_MODE_EXIT"

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mMode:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    iput-boolean v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isScreenshotsFragment:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mLaunchFrom:Ljava/lang/String;

    new-instance v0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$3;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabOnclickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mLastTabTag:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mLastTabTag:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Lcom/miui/video/common/library/widget/ext/BaseTabHost;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    return p0
.end method

.method static synthetic access$1102(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    return p1
.end method

.method static synthetic access$1200(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->checkAndRequestThePermission()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->hasFoldFragment:Z

    return p0
.end method

.method static synthetic access$302(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->hasFoldFragment:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isScreenshotsFragment:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->isScreenshotsFragment:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkAndRequestThePermission()V
    .locals 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/miui/video/base/utils/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ACTION_SHOW_PAGE"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/miui/video/base/utils/PermissionUtils;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private initBottomTabs()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabEntities:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    new-instance v1, Lcom/miui/video/biz/videoplus/app/widget/UITab;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/widget/UITab;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v2, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->selector_plus_tab_time:I

    const-string v4, "TimeFragment"

    const-class v5, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->selector_plus_tab_time:I

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_tab_time:I

    sget v5, Lcom/miui/video/biz/videoplus/R$xml;->selector_plus_tab_collapsed_textcolors:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->setViews(Lcom/miui/video/biz/videoplus/app/entities/TabEntity;III)V

    const-string v3, "TimeFragment"

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->setFragmentTag(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    new-instance v2, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->selector_plus_tab_gallery:I

    const-string v4, "GalleryFragment"

    const-class v5, Lcom/miui/video/biz/videoplus/app/fragments/GalleryFragment;

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;-><init>(ILjava/lang/String;Ljava/lang/Class;)V

    sget v3, Lcom/miui/video/biz/videoplus/R$drawable;->selector_plus_tab_gallery:I

    sget v4, Lcom/miui/video/biz/videoplus/R$string;->plus_tab_gallery:I

    sget v5, Lcom/miui/video/biz/videoplus/R$xml;->selector_plus_tab_collapsed_textcolors:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->setViews(Lcom/miui/video/biz/videoplus/app/entities/TabEntity;III)V

    const-string v3, "GalleryFragment"

    invoke-virtual {v1, v3}, Lcom/miui/video/biz/videoplus/app/widget/UITab;->setFragmentTag(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabEntities:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initLocalMediaService()V
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->init(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/db/framework/greendao/GreenDaoDbManager;->initContext(Landroid/content/Context;)V

    return-void
.end method

.method private setBottomTabs()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabEntities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabs:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabEntities:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;

    invoke-virtual {v4}, Lcom/miui/video/biz/videoplus/app/entities/TabEntity;->getFragmentClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mTabOnclickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    invoke-virtual {v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->setShowDividers(I)V

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->defaultSelectedTabTag:Ljava/lang/String;

    const-string v2, "TimeFragment"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    invoke-virtual {v1, v0}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTab(I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordMainTabClickLocal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setCurrentTab(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->finish()V

    sget v0, Lcom/miui/video/biz/videoplus/R$anim;->anim_bottom_in:I

    sget v1, Lcom/miui/video/biz/videoplus/R$anim;->anim_bottom_out:I

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public getPageName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89c6\u9891+\u9996\u9875_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mLaunchFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initFindViews()V
    .locals 4

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    sget v0, Lcom/miui/video/biz/videoplus/R$id;->v_edit_bottombar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/miui/video/biz/videoplus/R$id;->v_fragment_layout:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setup(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$1;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    return-void
.end method

.method public initViewsEvent()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$4;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$5;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;->setEventListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initViewsValue()V
    .locals 3

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->isFirstAccessPlus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "plus_first_access_plus"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$2;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const/16 p3, 0x4d3

    if-eq p1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->checkAndRequestThePermission()V

    :goto_0
    const/16 p1, 0x904

    if-ne p1, p2, :cond_2

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->onPermissionDetailResult(Landroid/app/Activity;)V

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ACTION_SHOW_PAGE"

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->checkAndRequestThePermission()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 5

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mMode:Ljava/lang/String;

    const-string v1, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "ScreenshotsFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getmViews()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->getViewPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;

    if-eqz v3, :cond_0

    const-string v4, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {v0, v4, v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    const-string v0, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {v3, v0, v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/ScreenshotsFolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "FolderFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;

    if-eqz v0, :cond_1

    const-string v3, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/video/biz/videoplus/app/business/gallery/fragment/FolderFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "TimeFragment"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;

    if-eqz v0, :cond_3

    const-string v3, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {v0, v3, v2, v1}, Lcom/miui/video/biz/videoplus/app/fragments/TimeFragment;->onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordLaunchFrom(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object p1

    const-string v0, "tab_position"

    const-string v1, "TimeFragment"

    invoke-virtual {p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->getSharedPreference(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->defaultSelectedTabTag:Ljava/lang/String;

    sget p1, Lcom/miui/video/biz/videoplus/R$layout;->activity_videoplus_main:I

    invoke-virtual {p0, p1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->setContentView(I)V

    const-string p1, "ACTION_INITIALIZATION"

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "launch"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mLaunchFrom:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onDestroy()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/moment/PageListStore;->clear()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->unregisterObservers()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->getInstance()Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/app/business/gallery/FolderListStore;->clear()V

    sget-boolean v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->isNewSeekbarOpen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$8;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$8;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    invoke-static {}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->getInstance()Lcom/miui/video/base/utils/ActvityUpdateUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/utils/ActvityUpdateUtils;->notifyChange()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManager;->recordLaunchFrom(Landroid/content/Intent;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v1, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$6;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$6;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    new-instance v2, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;

    invoke-direct {v2, p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity$7;-><init>(Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;)V

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/video/base/utils/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 0

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onStateNotSaved()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    invoke-super {p0}, Lcom/miui/video/biz/videoplus/activityplus/CoreAppCompatActivity;->onStop()V

    invoke-static {}, Lcom/miui/video/biz/videoplus/app/utils/VideoPlusCommonSpUtils;->getInstance()Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;

    move-result-object v0

    const-string v1, "tab_position"

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vTabHost:Lcom/miui/video/common/library/widget/ext/BaseTabHost;

    invoke-virtual {v2}, Lcom/miui/video/common/library/widget/ext/BaseTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/app/utils/SharePreferenceHelper;->saveSharedPreference(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onUIRefresh(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 7

    const-string p2, "KEY_EDIT_MODE_EXIT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mMode:Ljava/lang/String;

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorBottomOut(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_0
    const-string p2, "KEY_EDIT_MODE_OPEN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/miui/video/common/library/utils/AnimUtils;->animatorBottomIn(Landroid/view/View;JILandroid/view/animation/Interpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_1
    const-string p2, "KEY_EDIT_MODE_CHECKED_CHANGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    :cond_2
    iget-object p1, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->vEditBottombar:Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;

    iget p2, p0, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->mSelectedCounts:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/app/widget/UIEditBottomEventBar;->setEnabled(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public runAction(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    const-string p2, "ACTION_INITIALIZATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string p1, "ACTION_GRANT_PERMISSION"

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p2, "ACTION_GRANT_PERMISSION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->needShowPermissionDetail(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x903

    invoke-static {p0, p1}, Lcom/miui/video/base/utils/PermissionUtils;->startPermissionDetailForResult(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/miui/video/base/utils/PermissionUtils;->isAllPermissionGrant(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "ACTION_SHOW_PAGE"

    invoke-virtual {p0, p1, v0, p3}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->runAction(Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->checkAndRequestThePermission()V

    goto :goto_0

    :cond_3
    const-string p2, "ACTION_SHOW_PAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->syncMediaDatas()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->initBottomTabs()V

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/app/VideoPlusMainActivity;->setBottomTabs()V

    :cond_4
    :goto_0
    return-void
.end method
