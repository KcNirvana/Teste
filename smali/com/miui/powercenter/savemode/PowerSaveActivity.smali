.class public Lcom/miui/powercenter/savemode/PowerSaveActivity;
.super Lcom/miui/common/a/a;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/PowerSaveActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/savemode/PowerSaveActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method public onCreateFragment()Landroid/app/Fragment;
    .locals 1

    new-instance v0, Lcom/miui/powercenter/savemode/b;

    invoke-direct {v0}, Lcom/miui/powercenter/savemode/b;-><init>()V

    return-object v0
.end method
