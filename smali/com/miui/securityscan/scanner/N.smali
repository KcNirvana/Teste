.class final Lcom/miui/securityscan/scanner/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EQ:Lcom/miui/securityscan/scanner/M;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/scanner/M;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/scanner/N;->EQ:Lcom/miui/securityscan/scanner/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/scanner/N;->EQ:Lcom/miui/securityscan/scanner/M;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ej(Lcom/miui/securityscan/scanner/j;)Lcom/miui/common/f/a;

    move-result-object v0

    const-string/jumbo v1, "com.miui.cleanmaster.action.CHECK_GARBAGE_CHECK"

    invoke-virtual {v0, v1}, Lcom/miui/common/f/a;->aMr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/scanner/N;->EQ:Lcom/miui/securityscan/scanner/M;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/M;->EO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/N;->EQ:Lcom/miui/securityscan/scanner/M;

    iget-object v2, v2, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v2}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/miui/securityscan/scanner/B;->FV(Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/scanner/N;->EQ:Lcom/miui/securityscan/scanner/M;

    iget-object v0, v0, Lcom/miui/securityscan/scanner/M;->EP:Lcom/miui/securityscan/scanner/j;

    invoke-static {v0}, Lcom/miui/securityscan/scanner/j;->Ep(Lcom/miui/securityscan/scanner/j;)Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/B;->FW()V

    return-void
.end method
