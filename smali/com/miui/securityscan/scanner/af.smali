.class final Lcom/miui/securityscan/scanner/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FH:Lcom/miui/securityscan/scanner/z;

.field final synthetic FI:Ljava/util/List;

.field final synthetic FJ:Lcom/miui/securityscan/scanner/m;

.field final synthetic FK:Lcom/miui/securityscan/c/f;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/z;Ljava/util/List;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/f;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/af;->FH:Lcom/miui/securityscan/scanner/z;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/af;->FI:Ljava/util/List;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/af;->FJ:Lcom/miui/securityscan/scanner/m;

    iput-object p4, p0, Lcom/miui/securityscan/scanner/af;->FK:Lcom/miui/securityscan/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "SystemCheckManager startOptimize run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/af;->FI:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/GroupModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/af;->FJ:Lcom/miui/securityscan/scanner/m;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/securityscan/scanner/af;->FJ:Lcom/miui/securityscan/scanner/m;

    invoke-interface {v2, v0}, Lcom/miui/securityscan/scanner/m;->DI(Lcom/miui/securityscan/model/GroupModel;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/securityscan/scanner/af;->FK:Lcom/miui/securityscan/c/f;

    invoke-interface {v0}, Lcom/miui/securityscan/c/f;->Gr()V

    return-void
.end method
