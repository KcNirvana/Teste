.class Lcom/miui/monthreport/j;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aZo:Landroid/location/Location;

.field final synthetic aZp:Lcom/miui/monthreport/i;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/i;Landroid/content/Context;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/j;->aZp:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/monthreport/j;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/monthreport/j;->aZo:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/j;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/monthreport/j;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/monthreport/j;->aZo:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/miui/common/b/e;->aHE(Landroid/content/Context;Landroid/location/Location;)Landroid/location/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/monthreport/m;->bvx(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/monthreport/m;->bvy(J)V

    :cond_0
    return-object v2
.end method
