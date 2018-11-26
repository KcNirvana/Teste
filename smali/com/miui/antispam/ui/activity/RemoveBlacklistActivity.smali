.class public Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;
.super Lcom/miui/antispam/ui/activity/b;
.source ""


# instance fields
.field private RL:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/b;-><init>()V

    return-void
.end method

.method private Te()V
    .locals 3

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->RL:[Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/antispam/ui/activity/w;

    invoke-direct {v0, p0}, Lcom/miui/antispam/ui/activity/w;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/antispam/ui/activity/w;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic Tf(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->RL:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Tg(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->Te()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/antispam/ui/activity/b;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "numbers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->RL:[Ljava/lang/String;

    const-string/jumbo v1, "needConfirm"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/t;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/t;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/u;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/u;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/activity/v;

    invoke-direct {v1, p0}, Lcom/miui/antispam/ui/activity/v;-><init>(Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/miui/antispam/ui/activity/RemoveBlacklistActivity;->Te()V

    goto :goto_0
.end method
