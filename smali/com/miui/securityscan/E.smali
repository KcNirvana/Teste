.class final Lcom/miui/securityscan/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/ui/main/b;


# instance fields
.field final synthetic NN:Lcom/miui/securityscan/D;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/D;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GV()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    iget-object v0, v0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->Ns(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    iget-object v0, v0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->NS(Lcom/miui/securityscan/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    iget-object v0, v0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0}, Lcom/miui/securityscan/MainActivity;->NR(Lcom/miui/securityscan/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    iget-object v0, v0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    invoke-static {v0, v1}, Lcom/miui/securityscan/MainActivity;->Oh(Lcom/miui/securityscan/MainActivity;Z)Z

    iget-object v0, p0, Lcom/miui/securityscan/E;->NN:Lcom/miui/securityscan/D;

    iget-object v0, v0, Lcom/miui/securityscan/D;->NM:Lcom/miui/securityscan/MainActivity;

    iget-object v0, v0, Lcom/miui/securityscan/MainActivity;->LQ:Lcom/miui/securityscan/scanner/w;

    const-wide/16 v2, 0x15e

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/securityscan/scanner/w;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method
