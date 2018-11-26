.class final Lcom/miui/applicationlock/P;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field final synthetic ajv:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x16

    const-string/jumbo v0, "ConfirmAccessControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoi(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anf(Lcom/miui/applicationlock/ConfirmAccessControl;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anP(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/ConfirmAccessControl;->anA(Lcom/miui/applicationlock/ConfirmAccessControl;Z)Z

    :cond_2
    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoi(Lcom/miui/applicationlock/ConfirmAccessControl;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anp(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->ane(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anP(Lcom/miui/applicationlock/ConfirmAccessControl;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/applicationlock/P;->ajv:Lcom/miui/applicationlock/ConfirmAccessControl;

    const-wide/16 v2, 0x96

    invoke-static {v0, v2, v3}, Lcom/miui/applicationlock/ConfirmAccessControl;->aoc(Lcom/miui/applicationlock/ConfirmAccessControl;J)V

    goto :goto_0
.end method
