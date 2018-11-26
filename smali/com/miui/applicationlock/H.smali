.class final Lcom/miui/applicationlock/H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ChooseAppToLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const v3, 0xf995c

    iget-object v0, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/TransitionHelper;->akh(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->akZ(Lcom/miui/applicationlock/ChooseAppToLockActivity;)Lcom/miui/applicationlock/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/applicationlock/utils/a;->adM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.MiuiSecurityChooseUnlock"

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->afG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v1, v0, v3}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "com.android.settings.NewFingerprintInternalActivity"

    invoke-static {v0, v1, v2}, Lcom/miui/applicationlock/utils/m;->afG(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/H;->ajn:Lcom/miui/applicationlock/ChooseAppToLockActivity;

    invoke-virtual {v1, v0, v3}, Lcom/miui/applicationlock/ChooseAppToLockActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
