.class final Lcom/miui/powercenter/quickoptimize/Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFm:Lcom/miui/powercenter/quickoptimize/P;

.field final synthetic aFn:Lcom/miui/powercenter/quickoptimize/r;

.field final synthetic aFo:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/quickoptimize/P;Lcom/miui/powercenter/quickoptimize/r;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/quickoptimize/Q;->aFm:Lcom/miui/powercenter/quickoptimize/P;

    iput-object p2, p0, Lcom/miui/powercenter/quickoptimize/Q;->aFn:Lcom/miui/powercenter/quickoptimize/r;

    iput-object p3, p0, Lcom/miui/powercenter/quickoptimize/Q;->aFo:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/quickoptimize/Q;->aFn:Lcom/miui/powercenter/quickoptimize/r;

    iget-object v1, p0, Lcom/miui/powercenter/quickoptimize/Q;->aFo:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/miui/powercenter/quickoptimize/r;->aOk(Ljava/util/List;)V

    return-void
.end method
