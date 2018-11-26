.class final Lcom/miui/powercenter/quickoptimize/D;
.super Lcom/miui/securitycenter/memory/IMemoryScanCallback$Stub;
.source ""


# instance fields
.field final synthetic aEU:Lcom/miui/powercenter/quickoptimize/C;

.field final synthetic aEV:Lcom/miui/powercenter/quickoptimize/o;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/C;Lcom/miui/powercenter/quickoptimize/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/D;->aEU:Lcom/miui/powercenter/quickoptimize/C;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/D;->aEV:Lcom/miui/powercenter/quickoptimize/o;

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/IMemoryScanCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public aQK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aQL(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/D;->aEV:Lcom/miui/powercenter/quickoptimize/o;

    invoke-interface {v0, p1}, Lcom/miui/powercenter/quickoptimize/o;->aPu(Ljava/util/List;)V

    return-void
.end method

.method public aQM(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aQN()V
    .locals 0

    return-void
.end method
