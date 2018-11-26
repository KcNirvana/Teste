.class public Lcom/miui/antispam/ui/activity/CallLogListActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/CallLogListActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/CallLogListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/CallLogListActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/CallLogListActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0300a1

    invoke-virtual {v1, v2}, Lmiui/app/ActionBar;->setCustomView(I)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "number"

    const-string/jumbo v3, "number"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "number_presentation"

    const-string/jumbo v3, "number_presentation"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_1

    new-instance v0, Lcom/miui/antispam/ui/b/d;

    invoke-direct {v0}, Lcom/miui/antispam/ui/b/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/antispam/ui/b/d;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/CallLogListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
