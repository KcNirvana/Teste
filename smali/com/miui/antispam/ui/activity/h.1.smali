.class public abstract Lcom/miui/antispam/ui/activity/h;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract Tl()Landroid/app/Fragment;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/h;->setContentView(I)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/h;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/h;->Tl()Landroid/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method
