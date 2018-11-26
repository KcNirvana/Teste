.class final Lcom/miui/securityscan/scanner/U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fg:Lcom/miui/securityscan/scanner/j;

.field final synthetic Fh:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/j;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/U;->Fg:Lcom/miui/securityscan/scanner/j;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/U;->Fh:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/scanner/U;->Fg:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Eq(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/z;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/securityscan/scanner/U;->Fh:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/scanner/z;->Fk(Ljava/util/List;)V

    return-void
.end method
