.class final Lcom/miui/applicationlock/utils/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic abR:Lmiui/security/SecurityManager;

.field final synthetic abS:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/security/SecurityManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/utils/D;->abR:Lmiui/security/SecurityManager;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/D;->abS:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/utils/D;->abR:Lmiui/security/SecurityManager;

    iget-object v1, p0, Lcom/miui/applicationlock/utils/D;->abS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/security/SecurityManager;->removeAccessControlPass(Ljava/lang/String;)V

    return-void
.end method
