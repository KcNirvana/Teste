.class public Lcom/miui/applicationlock/TransitionHelper;
.super Landroid/app/Activity;
.source ""


# instance fields
.field private aei:Z

.field private aej:Lcom/miui/applicationlock/utils/e;

.field private aek:Ljava/lang/String;

.field private ael:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static akg(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "android.provider.MiuiSettings$Secure"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "hasCommonPassword"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static akh(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/miui/applicationlock/TransitionHelper;->akg(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "TransitionHelper"

    const-string/jumbo v3, "isScreenLockOpen error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aki()V
    .locals 3

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_enterway"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->aek:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->ael:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "from"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->ael:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const v1, 0xf98a7

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/TransitionHelper;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aei:Z

    if-nez v0, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "forbide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "external_app_name"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const v1, 0xf98b4

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/TransitionHelper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCoding"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf98b2

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/TransitionHelper;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v3, 0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aei:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    const-string/jumbo v0, "external_app_name"

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Lcom/miui/applicationlock/TransitionHelper;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->finish()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "external_app_name"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/TransitionHelper;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_1
    if-eq p2, v0, :cond_3

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v3}, Lcom/miui/applicationlock/utils/e;->aes(Z)V

    :goto_2
    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->finish()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/utils/e;->aes(Z)V

    goto :goto_2

    :sswitch_2
    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "external_app_name"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v1, v4}, Lcom/miui/applicationlock/utils/e;->aes(Z)V

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/TransitionHelper;->startActivity(Landroid/content/Intent;)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->finish()V

    goto/16 :goto_0

    :sswitch_3
    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lmiui/security/SecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0, v4}, Lcom/miui/applicationlock/utils/e;->aes(Z)V

    if-eqz p3, :cond_6

    const-string/jumbo v0, "external_app_name"

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Lcom/miui/applicationlock/TransitionHelper;->startActivity(Landroid/content/Intent;)V

    :cond_6
    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->finish()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0xf9897 -> :sswitch_0
        0xf98a7 -> :sswitch_1
        0xf98b2 -> :sswitch_2
        0xf98b4 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "enter_way"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aek:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->ael:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aek:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/applicationlock/b/a;->ajr(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    const-string/jumbo v0, "security"

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/TransitionHelper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {p0}, Lcom/miui/applicationlock/TransitionHelper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "external_app_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/e;->aeq()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->aej:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {v1}, Lcom/miui/applicationlock/utils/e;->aer()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/applicationlock/TransitionHelper;->aei:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aei:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/miui/applicationlock/utils/m;->afq(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/miui/applicationlock/TransitionHelper;->aki()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/miui/applicationlock/TransitionHelper;->aei:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "HappyCodingMain"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0xf9897

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/TransitionHelper;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/LockChooseAccessControl;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "forbide"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "external_app_name"

    iget-object v2, p0, Lcom/miui/applicationlock/TransitionHelper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const v1, 0xf9897

    invoke-virtual {p0, v0, v1}, Lcom/miui/applicationlock/TransitionHelper;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
