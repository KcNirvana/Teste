.class public Lcom/miui/video/biz/pgc/activity/SubscribeActivity;
.super Lcom/miui/video/service/base/VideoBaseAppCompatActivity;
.source "SubscribeActivity.java"


# instance fields
.field public source:Ljava/lang/String;

.field public titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;)Lcom/miui/video/common/library/base/BaseFragment;
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->previewFragment()Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;Lcom/miui/video/common/library/base/BaseFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->startFragment(Lcom/miui/video/common/library/base/BaseFragment;)V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager;->get()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity$1;-><init>(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->previewFragment()Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->startFragment(Lcom/miui/video/common/library/base/BaseFragment;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initTitleBar()V
    .locals 9

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->ui_title_bar:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/service/widget/ui/UITitleBar;

    iput-object v0, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    iget-object v1, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->titleBar:Lcom/miui/video/service/widget/ui/UITitleBar;

    sget v2, Lcom/miui/video/biz/group/pgc/R$drawable;->ic_action_bar_back_black:I

    sget v3, Lcom/miui/video/biz/group/pgc/R$string;->subscriptions:I

    sget v5, Lcom/miui/video/biz/group/pgc/R$dimen;->sp_16:I

    sget v6, Lcom/miui/video/biz/group/pgc/R$color;->black:I

    new-instance v8, Lcom/miui/video/biz/pgc/activity/-$$Lambda$SubscribeActivity$9ZsqNL7gLm_6v3IsVzPqRqfx0M0;

    invoke-direct {v8, p0}, Lcom/miui/video/biz/pgc/activity/-$$Lambda$SubscribeActivity$9ZsqNL7gLm_6v3IsVzPqRqfx0M0;-><init>(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;)V

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/miui/video/service/widget/ui/UITitleBar;->setLeftView(IILjava/lang/String;IIILandroid/view/View$OnClickListener;)Lcom/miui/video/service/widget/ui/UITitleBar;

    return-void
.end method

.method public static synthetic lambda$initTitleBar$20(Lcom/miui/video/biz/pgc/activity/SubscribeActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->onTitleBarBackPressed()V

    return-void
.end method

.method private managementFragment()Lcom/miui/video/common/library/base/BaseFragment;
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;->newInstance()Lcom/miui/video/biz/pgc/fragment/SubscribeManagementFragment;

    move-result-object v0

    return-object v0
.end method

.method private onTitleBarBackPressed()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->finish()V

    return-void
.end method

.method private previewFragment()Lcom/miui/video/common/library/base/BaseFragment;
    .locals 1

    invoke-static {}, Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;->newInstance()Lcom/miui/video/biz/pgc/fragment/SubscribeFragment;

    move-result-object v0

    return-object v0
.end method

.method private startFragment(Lcom/miui/video/common/library/base/BaseFragment;)V
    .locals 4

    sget v0, Lcom/miui/video/biz/group/pgc/R$id;->container:I

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/miui/video/biz/group/pgc/R$id;->container:I

    sget-object v2, Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;->FRAGMENT_SHOW:Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->runFragment(ILandroid/support/v4/app/Fragment;Lcom/miui/video/common/library/base/BaseAppCompatActivity$FragmentType;Z)V

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/video/service/base/VideoBaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "source"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->source:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->initTitleBar()V

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->init()V

    return-void
.end method

.method protected setLayoutResId()I
    .locals 1

    sget v0, Lcom/miui/video/biz/group/pgc/R$layout;->activity_subscribe:I

    return v0
.end method

.method public startManagementFragment()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->managementFragment()Lcom/miui/video/common/library/base/BaseFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/pgc/activity/SubscribeActivity;->startFragment(Lcom/miui/video/common/library/base/BaseFragment;)V

    :cond_0
    return-void
.end method
