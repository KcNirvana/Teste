.class public Lcom/miui/powercenter/autotask/AutoTaskEditActivity;
.super Lcom/miui/powercenter/autotask/x;
.source ""


# instance fields
.field private mOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/x;-><init>()V

    new-instance v0, Lcom/miui/powercenter/autotask/X;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/X;-><init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private aXP()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXQ()Lcom/miui/powercenter/autotask/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/k;->aWh()Z

    move-result v0

    return v0
.end method

.method private aXQ()Lcom/miui/powercenter/autotask/k;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/k;

    return-object v0
.end method

.method static synthetic aXR(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXP()Z

    move-result v0

    return v0
.end method

.method static synthetic aXS(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)Lcom/miui/powercenter/autotask/k;
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXQ()Lcom/miui/powercenter/autotask/k;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected aWD()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method protected aWE()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected aWG()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->aXQ()Lcom/miui/powercenter/autotask/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/autotask/k;->aWz()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/autotask/Y;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/autotask/Y;-><init>(Lcom/miui/powercenter/autotask/AutoTaskEditActivity;)V

    invoke-static {p0, v0}, Lcom/miui/powercenter/autotask/w;->aYK(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/x;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->onCreateFragment()Landroid/app/Fragment;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method

.method public onCreateFragment()Landroid/app/Fragment;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/miui/powercenter/autotask/AutoTaskEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "bundle"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "task"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/AutoTask;

    :cond_0
    new-instance v1, Lcom/miui/powercenter/autotask/k;

    invoke-direct {v1, v0}, Lcom/miui/powercenter/autotask/k;-><init>(Lcom/miui/powercenter/autotask/AutoTask;)V

    return-object v1
.end method
