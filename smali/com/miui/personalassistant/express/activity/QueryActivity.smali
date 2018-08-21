.class public Lcom/miui/personalassistant/express/activity/QueryActivity;
.super Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;
.source "QueryActivity.java"

# interfaces
.implements Lcom/miui/personalassistant/express/fragment/ExpressInquiryListener;


# static fields
.field private static final REQUEST_CTA_DIALOG:I = 0x1


# instance fields
.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;-><init>()V

    return-void
.end method

.method private initActionBar(Landroid/os/Bundle;)V
    .locals 2

    const v1, 0x1b0b0132

    invoke-virtual {p0, v1}, Lcom/miui/personalassistant/express/activity/QueryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/personalassistant/express/activity/QueryActivity;->mTitle:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "companyName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/miui/personalassistant/express/activity/QueryActivity;->mTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method private initViews()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/personalassistant/express/activity/QueryActivity;->parseIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->initActionBar(Landroid/os/Bundle;)V

    const-string/jumbo v1, "express"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "QueryFragment"

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/QueryActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/miui/personalassistant/express/activity/QueryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "DetailFragment"

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/QueryActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/miui/personalassistant/express/activity/QueryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    goto :goto_0
.end method

.method private isShowCTADialog()Z
    .locals 3

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/miui/personalassistant/ui/widget/CTADialog;->isShowDialog(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.miui.personalassistant.action.CTADIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/personalassistant/express/activity/QueryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x0

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v7, "number"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/miui/personalassistant/express/util/CodeConverter;->getInstance()Lcom/miui/personalassistant/express/util/CodeConverter;

    move-result-object v7

    const-string/jumbo v8, "company_code"

    invoke-virtual {v3, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/miui/personalassistant/express/util/CodeConverter;->convertCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "company_name"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "from"

    invoke-virtual {v3, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v4, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-direct {v4}, Lcom/miui/personalassistant/express/bean/ExpressEntry;-><init>()V

    invoke-virtual {v4, v6}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setOrderNumber(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyCode(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setCompanyName(Ljava/lang/String;)V

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "from"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    if-eqz v4, :cond_0

    const-string/jumbo v7, "express"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "express"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    const-string/jumbo v7, "newExpress"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method


# virtual methods
.method public inquiry(Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "DetailFragment"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/miui/personalassistant/express/activity/QueryActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    return-void
.end method

.method protected newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 1

    const-string/jumbo v0, "QueryFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/personalassistant/express/fragment/QueryFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/fragment/QueryFragment;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "DetailFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/miui/personalassistant/express/fragment/DetailFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/fragment/DetailFragment;-><init>()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->initViews()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->setImmersionMenuEnabled(Z)V

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->isShowCTADialog()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/QueryActivity;->initViews()V

    goto :goto_0
.end method
