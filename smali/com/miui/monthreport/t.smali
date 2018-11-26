.class final Lcom/miui/monthreport/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aZZ:Lcom/miui/monthreport/i;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/t;->aZZ:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/monthreport/t;->aZZ:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvk(Lcom/miui/monthreport/i;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/t;->aZZ:Lcom/miui/monthreport/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/monthreport/i;->bvn(Lcom/miui/monthreport/i;Z)Z

    new-instance v0, Lcom/miui/monthreport/k;

    iget-object v1, p0, Lcom/miui/monthreport/t;->aZZ:Lcom/miui/monthreport/i;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/miui/monthreport/k;-><init>(Lcom/miui/monthreport/i;Lcom/miui/monthreport/k;)V

    invoke-static {}, Lcom/miui/monthreport/i;->-get1()Ljava/util/concurrent/Executor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/miui/monthreport/k;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
