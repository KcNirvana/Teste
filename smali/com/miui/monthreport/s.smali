.class final Lcom/miui/monthreport/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/monthreport/e;


# instance fields
.field final synthetic aZY:Lcom/miui/monthreport/i;


# direct methods
.method constructor <init>(Lcom/miui/monthreport/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/s;->aZY:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buQ(ZLandroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/monthreport/j;

    iget-object v1, p0, Lcom/miui/monthreport/s;->aZY:Lcom/miui/monthreport/i;

    iget-object v2, p0, Lcom/miui/monthreport/s;->aZY:Lcom/miui/monthreport/i;

    invoke-static {v2}, Lcom/miui/monthreport/i;->bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/miui/monthreport/j;-><init>(Lcom/miui/monthreport/i;Landroid/content/Context;Landroid/location/Location;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/monthreport/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
