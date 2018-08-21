.class public Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;
.super Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;
.source "CompanyPickerActivity.java"


# instance fields
.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected newFragmentByTag(Ljava/lang/String;)Lcom/miui/personalassistant/ui/BaseFragment;
    .locals 1

    new-instance v0, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;

    invoke-direct {v0}, Lcom/miui/personalassistant/express/fragment/CompanyPickerFragment;-><init>()V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/personalassistant/express/activity/ExpressBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->setupCustomView()V

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1b0b0130

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "CompanyPickerFragment"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v0, v3}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->showFragment(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Lcom/miui/personalassistant/ui/BaseFragment;

    :cond_0
    return-void
.end method

.method protected setupCustomView()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x1b04007e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mActionBar:Lmiui/app/ActionBar;

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mActionBar:Lmiui/app/ActionBar;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mActionBar:Lmiui/app/ActionBar;

    invoke-virtual {v3, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mActionBar:Lmiui/app/ActionBar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    const v3, 0x1b0900ec

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;->mTitle:Landroid/widget/TextView;

    const v3, 0x1b0900b2

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v3, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/personalassistant/express/activity/CompanyPickerActivity$1;-><init>(Lcom/miui/personalassistant/express/activity/CompanyPickerActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
