.class public Lcom/miui/applicationlock/ConfirmAccountActivity;
.super Lcom/miui/common/a/d;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aem:Z

.field private aen:Z

.field private aeo:Z

.field private aep:Landroid/accounts/Account;

.field private aeq:Landroid/widget/ImageView;

.field private aer:Lcom/miui/applicationlock/utils/e;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/a/d;-><init>()V

    return-void
.end method

.method private akj(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/applicationlock/utils/e;)V
    .locals 8

    const/4 v3, 0x0

    const-string/jumbo v0, "com.xiaomi"

    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi"

    const-string/jumbo v2, "passportapi"

    new-instance v6, Lcom/miui/applicationlock/p;

    invoke-direct {v6, p0, p3, p1}, Lcom/miui/applicationlock/p;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/utils/e;Landroid/app/Activity;)V

    move-object v4, p2

    move-object v5, p1

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private akk()V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aem:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_binding_result"

    :goto_0
    const-string/jumbo v1, "logged_in_binding"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajs(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aer:Lcom/miui/applicationlock/utils/e;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/applicationlock/utils/e;->aep(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070864

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/common/b/o;->aIY(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "binding_result"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->aft(Lmiui/security/SecurityManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/utils/m;->afu(Lmiui/security/SecurityManager;Ljava/lang/String;)V

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aer:Lcom/miui/applicationlock/utils/e;

    invoke-direct {p0, p0, v0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akj(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/applicationlock/utils/e;)V

    goto :goto_1
.end method

.method private akl()V
    .locals 6

    const/4 v4, 0x0

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aeq:Landroid/widget/ImageView;

    const v0, 0x7f0a015a

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a015d

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a015c

    invoke-virtual {p0, v2}, Lcom/miui/applicationlock/ConfirmAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/b;->adR(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aep:Landroid/accounts/Account;

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/applicationlock/utils/e;->getInstance(Landroid/content/Context;)Lcom/miui/applicationlock/utils/e;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aer:Lcom/miui/applicationlock/utils/e;

    const-string/jumbo v1, "security"

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/security/SecurityManager;

    iput-object v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->mSecurityManager:Lmiui/security/SecurityManager;

    const-string/jumbo v1, "account"

    invoke-virtual {p0, v1}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aep:Landroid/accounts/Account;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aen:Z

    iget-boolean v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aen:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aep:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aep:Landroid/accounts/Account;

    const-string/jumbo v5, "acc_user_name"

    invoke-virtual {v1, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07080a

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    :goto_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akm()V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "account_dialog_extra_data"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aem:Z

    return-void

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    const v1, 0x7f07080b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f070808

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private akm()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.xiaomi.account"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/miui/applicationlock/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/applicationlock/a;-><init>(Lcom/miui/applicationlock/ConfirmAccountActivity;Lcom/miui/applicationlock/a;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/applicationlock/ConfirmAccountActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private akn()V
    .locals 2

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aen:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aem:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "app_binding_result"

    :goto_0
    const-string/jumbo v1, "logged_in_skip"

    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajs(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "binding_result"

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aem:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "app_binding_result"

    :goto_2
    iget-boolean v1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aeo:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "not_logged_cancel_login_skip"

    :goto_3
    invoke-static {v0, v1}, Lcom/miui/applicationlock/b/a;->ajs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "binding_result"

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "not_logged_skip"

    goto :goto_3
.end method

.method static synthetic ako(Lcom/miui/applicationlock/ConfirmAccountActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aem:Z

    return v0
.end method

.method static synthetic akp(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aep:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic akq(Lcom/miui/applicationlock/ConfirmAccountActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aeq:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic akr(Lcom/miui/applicationlock/ConfirmAccountActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/ConfirmAccountActivity;->aeo:Z

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akk()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akn()V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "extra_data"

    const-string/jumbo v2, "not_home_start"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a015c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/common/a/d;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/miui/applicationlock/ConfirmAccountActivity;->akl()V

    return-void
.end method
