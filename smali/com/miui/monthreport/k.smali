.class Lcom/miui/monthreport/k;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic aZq:Lcom/miui/monthreport/i;


# direct methods
.method private constructor <init>(Lcom/miui/monthreport/i;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/k;->aZq:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/monthreport/i;Lcom/miui/monthreport/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/monthreport/k;-><init>(Lcom/miui/monthreport/i;)V

    return-void
.end method


# virtual methods
.method protected bvq(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/monthreport/k;->aZq:Lcom/miui/monthreport/i;

    invoke-static {v0, p1}, Lcom/miui/monthreport/i;->bvm(Lcom/miui/monthreport/i;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lcom/miui/monthreport/k;->aZq:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvp(Lcom/miui/monthreport/i;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/k;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    const/16 v2, -0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/monthreport/k;->aZq:Lcom/miui/monthreport/i;

    invoke-static {v2}, Lcom/miui/monthreport/i;->bvh(Lcom/miui/monthreport/i;)Lcom/miui/monthreport/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/miui/monthreport/f;->buT(J)I

    move-result v0

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Old data cleaned : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/monthreport/k;->aZq:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvh(Lcom/miui/monthreport/i;)Lcom/miui/monthreport/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/monthreport/f;->buV()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/k;->bvq(Ljava/util/List;)V

    return-void
.end method
