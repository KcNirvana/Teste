.class public Lcom/miui/optimizemanage/OptimizemanageMainActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public Ae:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Ae:Z

    return-void
.end method

.method private Bp()V
    .locals 3

    new-instance v0, Lcom/miui/optimizemanage/o;

    invoke-direct {v0, p0}, Lcom/miui/optimizemanage/o;-><init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/optimizemanage/o;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public Bo(Lcom/miui/optimizemanage/optimizeresult/d;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/d;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/d;->Bg(Lcom/miui/optimizemanage/optimizeresult/d;)V

    return-void
.end method

.method public Bq(Lcom/miui/optimizemanage/optimizeresult/o;)V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/miui/optimizemanage/d;

    invoke-virtual {v0, p1}, Lcom/miui/optimizemanage/d;->Bh(Lcom/miui/optimizemanage/optimizeresult/o;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a02ed

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x7f0a02ee

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/optimizemanage/settings/SettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->startActivity(Landroid/content/Intent;)V

    const-string/jumbo v0, "speedboost_settings"

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Ax(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030105

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->setContentView(I)V

    invoke-static {p0}, Lcom/miui/optimizemanage/a;->AD(Landroid/content/Context;)V

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/common/b/e;->aHw(Landroid/content/Context;)I

    move-result v1

    const v0, 0x7f0a02ec

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v6, v1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string/jumbo v1, "clean_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "result_fragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/optimizemanage/settings/c;->zQ()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Ae:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizemanage/d;

    invoke-direct {v1}, Lcom/miui/optimizemanage/d;-><init>()V

    const-string/jumbo v2, "result_fragment"

    const v3, 0x7f0a02f1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "1.306.1.7"

    aput-object v1, v0, v6

    const-string/jumbo v1, "1.306.1.8"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/miui/optimizemanage/a;->AL([Ljava/lang/String;)V

    :cond_1
    const v0, 0x7f0a02ed

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02ee

    invoke-virtual {p0, v0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->AB(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, "speedboost_homepage"

    invoke-static {v0}, Lcom/miui/optimizemanage/c/a;->Ax(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/miui/optimizemanage/b;

    invoke-direct {v1}, Lcom/miui/optimizemanage/b;-><init>()V

    const-string/jumbo v2, "clean_fragment"

    const v3, 0x7f0a02f0

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-direct {p0}, Lcom/miui/optimizemanage/OptimizemanageMainActivity;->Bp()V

    goto :goto_0
.end method
