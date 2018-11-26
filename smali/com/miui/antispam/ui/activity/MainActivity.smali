.class public Lcom/miui/antispam/ui/activity/MainActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# instance fields
.field private SQ:Lmiui/app/ActionBar;

.field public SR:Ljava/lang/String;

.field private SS:Landroid/app/NotificationManager;

.field private ST:Lcom/miui/antispam/service/b/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_OTHER:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    return-void
.end method

.method private Un()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SS:Landroid/app/NotificationManager;

    const/16 v1, 0x31e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SS:Landroid/app/NotificationManager;

    const/16 v1, 0x31d

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private Uo(Landroid/os/Bundle;)V
    .locals 6

    const v2, 0x1020002

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/c;

    invoke-direct {v1}, Lcom/miui/antispam/ui/b/c;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/b/b;

    invoke-direct {v1}, Lcom/miui/antispam/ui/b/b;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmiui/app/ActionBar;->setFragmentViewPagerMode(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f07002e

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/ui/b/c;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    const-string/jumbo v1, "call"

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v2

    const v3, 0x7f07002f

    invoke-virtual {v2, v3}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v2

    const-class v3, Lcom/miui/antispam/ui/b/b;

    invoke-virtual/range {v0 .. v5}, Lmiui/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroid/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    goto :goto_0
.end method

.method private Up()V
    .locals 4

    const/4 v3, -0x2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setDisplayOptions(I)V

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_SMS:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    const v1, 0x7f0700d9

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget v1, Lmiui/R$drawable;->icon_settings_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const v1, 0x7f070604

    invoke-virtual {p0, v1}, Lcom/miui/antispam/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/miui/antispam/ui/activity/R;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/R;-><init>(Lcom/miui/antispam/ui/activity/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const v2, 0x800015

    invoke-direct {v1, v3, v3, v2}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->ACTION_SOURCE_CALL:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    const v1, 0x7f0700da

    invoke-virtual {v0, v1}, Lmiui/app/ActionBar;->setTitle(I)V

    goto :goto_0
.end method

.method private Uq(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    invoke-virtual {v2}, Lmiui/app/ActionBar;->getNavigationItemCount()I

    move-result v2

    if-le v2, v0, :cond_1

    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->hasNewAntispam(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "notification_intercept_content"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    if-ne v2, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Lmiui/app/ActionBar;->setSelectedNavigationItem(I)V

    invoke-static {p0, v1}, Landroid/provider/MiuiSettings$AntiSpam;->setHasNewAntispam(Landroid/content/Context;Z)V

    :cond_1
    return-void
.end method

.method private Ur()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/antispam/db/a;->Zw(I)V

    invoke-static {v0}, Lcom/miui/antispam/db/a;->Zv(I)V

    return-void
.end method

.method static synthetic Us(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->Un()V

    return-void
.end method

.method static synthetic Ut(Lcom/miui/antispam/ui/activity/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->Ur()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v0, Landroid/provider/MiuiSettings$AntiSpam;->KEY_ANTISPAM_ACTION_SOURCE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SR:Ljava/lang/String;

    :cond_0
    const-string/jumbo v0, "is_from_intercept_notification"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "notification_block_type"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "antispam_noti_action"

    const/16 v3, 0x11

    if-ne v0, v3, :cond_3

    const-string/jumbo v0, "overseas"

    :goto_0
    const-string/jumbo v3, "click"

    invoke-static {v2, v0, v3}, Lcom/miui/antispam/a/a;->Yu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SQ:Lmiui/app/ActionBar;

    new-instance v0, Lcom/miui/antispam/service/b/a;

    invoke-direct {v0, p0}, Lcom/miui/antispam/service/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->ST:Lcom/miui/antispam/service/b/a;

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/antispam/ui/activity/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->SS:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->Up()V

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/MainActivity;->Uo(Landroid/os/Bundle;)V

    invoke-direct {p0, v1}, Lcom/miui/antispam/ui/activity/MainActivity;->Uq(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/miui/antispam/util/a;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/util/a;->Xp()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/miui/antispam/util/a;->getInstance(Landroid/content/Context;)Lcom/miui/antispam/util/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/antispam/util/a;->Xq()V

    :cond_2
    return-void

    :cond_3
    const-string/jumbo v0, "mainland"

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/miui/antispam/ui/activity/b;->onDestroy()V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->windowDismissed(Landroid/os/IBinder;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/activity/MainActivity;->Uq(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antispam/ui/activity/b;->onPause()V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setHasNewAntispam(Landroid/content/Context;Z)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/miui/antispam/ui/activity/b;->onResume()V

    invoke-static {}, Lcom/miui/antispam/util/g;->XD()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/antispam/ui/activity/S;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/S;-><init>(Lcom/miui/antispam/ui/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/MainActivity;->ST:Lcom/miui/antispam/service/b/a;

    invoke-virtual {v0}, Lcom/miui/antispam/service/b/a;->adc()V

    return-void
.end method
