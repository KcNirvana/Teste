.class public Lcom/miui/permcenter/MainAcitivty;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private QS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private Si()V
    .locals 5

    const/16 v3, 0x10

    const/4 v4, -0x2

    invoke-virtual {p0}, Lcom/miui/permcenter/MainAcitivty;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    sget v2, Lmiui/R$drawable;->icon_settings_dark:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    const v2, 0x7f07028d

    invoke-virtual {p0, v2}, Lcom/miui/permcenter/MainAcitivty;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/miui/permcenter/i;

    invoke-direct {v2, p0}, Lcom/miui/permcenter/i;-><init>(Lcom/miui/permcenter/MainAcitivty;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3, v3}, Lmiui/app/ActionBar;->setDisplayOptions(II)V

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const v3, 0x800015

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, ":miui:starting_window_label"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v0, "pl.zdunex25.updater"

    const-string/jumbo v2, "com.miui.permcenter.root.RootAcquiredActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqO()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqP()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/root/RootManagementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MainAcitivty"

    const-string/jumbo v2, "ActivityNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const v0, 0x7f0708d7

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "unlocked"

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.intent.action.PERMISSION_CENTER_SECURITY_WEB_VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/install/PackageManagerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/permissions/AppPermissionsTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, ":miui:starting_window_label"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p0, Lcom/miui/permcenter/MainAcitivty;->QS:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/permcenter/MainAcitivty;->QS:I

    iget v0, p0, Lcom/miui/permcenter/MainAcitivty;->QS:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/permcenter/DebugSettingsAcitivty;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0a0357
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const v1, 0x7f0a035c

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03012d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->setContentView(I)V

    invoke-static {}, Lcom/miui/permcenter/e;->SH()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/miui/permcenter/install/a;->getInstance(Landroid/content/Context;)Lcom/miui/permcenter/install/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/permcenter/install/a;->QE()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/miui/permcenter/MainAcitivty;->Si()V

    :cond_1
    const v0, 0x7f0a0358

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0359

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v1}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a035b

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0357

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/miui/common/b/f;->aHW()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v0, 0x7f0a035d

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqO()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqP()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0a035a

    invoke-virtual {p0, v0}, Lcom/miui/permcenter/MainAcitivty;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v1, "unlocked"

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqQ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/miui/securitycenter/utils/e;->bqR()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    :cond_7
    const v1, 0x7f070659

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_8
    const v1, 0x7f07065a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
