.class public Lcom/miui/personalassistant/express/activity/HistoryActivity;
.super Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;
.source "HistoryActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "HistoryActivity"


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mFromQuery:Z

.field private mViewIndividualHistory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mFromQuery:Z

    return-void
.end method

.method private parseIntent()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v12, "android.intent.action.VIEW"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "express"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    if-eqz v4, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "express"

    invoke-virtual {v1, v12, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v12, "newExpress"

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-boolean v14, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mViewIndividualHistory:Z

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mArguments:Landroid/os/Bundle;

    return-void

    :cond_1
    const-string/jumbo v12, "yellowpage"

    invoke-static {v12, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "inquiry_history"

    invoke-static {v12, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "orderNumber"

    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "companyCode"

    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "companyName"

    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v12, "packageName"

    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v12, "fromQuery"

    invoke-virtual {v11, v12, v13}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mFromQuery:Z

    new-instance v5, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {v5}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>()V

    invoke-virtual {v5, v8}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setOrderNumber(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setSource(Ljava/lang/String;)V

    const-string/jumbo v12, "express"

    invoke-virtual {v1, v12, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    iput-boolean v14, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mViewIndividualHistory:Z

    goto :goto_0
.end method


# virtual methods
.method public inquiry(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v1, "DetailFragment"

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mViewIndividualHistory:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 1

    const-string/jumbo v0, "DetailFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "HistoryFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/personalassistant/express/fragment/HistoryFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/fragment/HistoryFragment;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->parseIntent()V

    iget-object v0, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mFromQuery:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DetailFragment"

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mViewIndividualHistory:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DetailFragment"

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "HistoryFragment"

    iget-object v1, p0, Lcom/miui/personalassistant/express/activity/HistoryActivity;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/HistoryActivity;->finish()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onResume()V

    const-string/jumbo v0, "HistoryActivity"

    const-string/jumbo v1, "onResume: "

    invoke-static {v0, v1}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
