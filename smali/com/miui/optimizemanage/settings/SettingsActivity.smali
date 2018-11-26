.class public Lcom/miui/optimizemanage/settings/SettingsActivity;
.super Lcom/miui/common/a/d;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private onCreateFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/optimizemanage/settings/b;

    invoke-direct {v0}, Lcom/miui/optimizemanage/settings/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_settings_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->onCreateFragment()Landroid/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/miui/common/a/d;->onResume()V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/miui/optimizemanage/settings/b;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/settings/b;->zn()V

    return-void
.end method

.method public zx()I
    .locals 1

    invoke-static {p0}, Lcom/miui/optimizemanage/memoryclean/d;->xn(Landroid/content/Context;)I

    move-result v0

    return v0
.end method
