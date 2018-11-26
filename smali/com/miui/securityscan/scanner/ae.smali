.class final Lcom/miui/securityscan/scanner/ae;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic FE:Lcom/miui/securityscan/scanner/z;

.field final synthetic FF:Lcom/miui/securityscan/c/e;

.field final synthetic FG:Z


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/z;Lcom/miui/securityscan/c/e;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/ae;->FE:Lcom/miui/securityscan/scanner/z;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/ae;->FF:Lcom/miui/securityscan/c/e;

    iput-boolean p3, p0, Lcom/miui/securityscan/scanner/ae;->FG:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "SystemCheckManager startScan run()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ae;->FE:Lcom/miui/securityscan/scanner/z;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/z;->Fn(Lcom/miui/securityscan/scanner/z;)Lcom/miui/common/f/a;

    move-result-object v0

    const-string/jumbo v1, "com.miui.guardprovider.action.antivirusservice"

    const-string/jumbo v2, "com.miui.guardprovider"

    new-instance v3, Lcom/miui/securityscan/scanner/A;

    iget-object v4, p0, Lcom/miui/securityscan/scanner/ae;->FE:Lcom/miui/securityscan/scanner/z;

    invoke-static {v4}, Lcom/miui/securityscan/scanner/z;->Fo(Lcom/miui/securityscan/scanner/z;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/securityscan/scanner/ae;->FF:Lcom/miui/securityscan/c/e;

    iget-boolean v6, p0, Lcom/miui/securityscan/scanner/ae;->FG:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/securityscan/scanner/A;-><init>(Landroid/content/Context;Lcom/miui/securityscan/c/e;Z)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/common/f/a;->aMn(Ljava/lang/String;Ljava/lang/String;Lcom/miui/common/f/b;)Z

    return-void
.end method
