.class final Lcom/miui/securityscan/scanner/T;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Fd:Lcom/miui/securityscan/scanner/S;

.field final synthetic Fe:Lcom/miui/securityscan/c/d;

.field final synthetic Ff:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/S;Lcom/miui/securityscan/c/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/T;->Fd:Lcom/miui/securityscan/scanner/S;

    iput-object p2, p0, Lcom/miui/securityscan/scanner/T;->Fe:Lcom/miui/securityscan/c/d;

    iput-object p3, p0, Lcom/miui/securityscan/scanner/T;->Ff:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/T;->Fe:Lcom/miui/securityscan/c/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/scanner/T;->Fe:Lcom/miui/securityscan/c/d;

    invoke-virtual {v0}, Lcom/miui/securityscan/c/d;->Ka()V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/T;->Ff:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/a;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/T;->Fd:Lcom/miui/securityscan/scanner/S;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/S;->Fa:Lcom/miui/securityscan/scanner/j;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/a;->bpB()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/scanner/B;->FY(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
