.class final Lcom/miui/applicationlock/Y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ajG:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/Y;->ajG:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/Y;->ajG:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0}, Lcom/miui/applicationlock/ConfirmAccessControl;->anl(Lcom/miui/applicationlock/ConfirmAccessControl;)Lmiui/security/SecurityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/applicationlock/Y;->ajG:Lcom/miui/applicationlock/ConfirmAccessControl;

    iget-object v1, v1, Lcom/miui/applicationlock/ConfirmAccessControl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    return-void
.end method
