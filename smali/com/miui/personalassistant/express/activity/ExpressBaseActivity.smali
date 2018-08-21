.class public Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;
.super Lcom/miui/personalassistant/ui/BaseActivity;
.source "ExpressBaseActivity.java"


# instance fields
.field public mActionBar:Lmiui/app/ActionBar;

.field private mCustomView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private configureCustomView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const/4 v4, -0x2

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x1b0400e9

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mActionBar:Lmiui/app/ActionBar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmiui/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/16 v2, 0x15

    invoke-direct {v1, v4, v4, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/personalassistant/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->shouldShowCustomView()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->configureCustomView()V

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    const v2, 0x1b090348

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity$1;-><init>(Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x1b040078

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->setContentView(I)V

    return-void
.end method

.method protected onShowHistory()V
    .locals 0

    return-void
.end method

.method protected parseQueryParams()Landroid/os/Bundle;
    .locals 8

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected requireLogin()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldShowCustomView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 4

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/ui/BaseFragment;

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;

    move-result-object v1

    if-eqz p3, :cond_0

    invoke-virtual {v1, p3}, Lcom/miui/personalassistant/ui/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    const v3, 0x1b0900a3

    invoke-virtual {v2, v3, v1, p1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mActionBar:Lmiui/app/ActionBar;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v3, p2}, Lmiui/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v2, p1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0
.end method

.method public showHistory(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->mCustomView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
