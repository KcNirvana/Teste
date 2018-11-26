.class Lcom/miui/monthreport/l;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aZr:Lcom/miui/monthreport/o;

.field final synthetic aZs:Lcom/miui/monthreport/i;


# direct methods
.method public constructor <init>(Lcom/miui/monthreport/i;Lcom/miui/monthreport/o;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    return-void
.end method

.method private bvr(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v5

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "error_code"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "error"

    const-string/jumbo v4, "Unknown error"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    iget-object v1, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v1}, Lcom/miui/monthreport/i;->bvh(Lcom/miui/monthreport/i;)Lcom/miui/monthreport/f;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v2}, Lcom/miui/monthreport/o;->bvH()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/monthreport/f;->buS(Ljava/util/List;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/monthreport/i;->bvl(Lcom/miui/monthreport/i;Ljava/lang/Exception;)Ljava/lang/Exception;

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Upload successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private bvs()Z
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/a;->brN()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJq(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/monthreport/m;->bvv()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bvt(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "module"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v3}, Lcom/miui/monthreport/i;->bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/miui/monthreport/n;->aZu:Ljava/lang/String;

    const-string/jumbo v5, "5fdd8678-cddf-4269-bb73-48187445bba7"

    invoke-static {v3, v4, v0, v5}, Lcom/miui/common/network/b;->aLx(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "error_code"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, "code"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    return v2

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/t;->aJs(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvh(Lcom/miui/monthreport/i;)Lcom/miui/monthreport/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/monthreport/f;->buU(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    const/16 v3, 0x4e20

    if-lt v0, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Rejected : many events upload in mobile network"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    return v1
.end method


# virtual methods
.method protected bvu(Ljava/lang/Integer;)V
    .locals 6

    const-wide/32 v4, 0x493e0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v1}, Lcom/miui/monthreport/i;->bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v2}, Lcom/miui/monthreport/o;->bvE()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v0}, Lcom/miui/monthreport/o;->bvF()V

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v0}, Lcom/miui/monthreport/o;->bvG()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v1}, Lcom/miui/monthreport/i;->bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    const/16 v3, 0x66

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v2}, Lcom/miui/monthreport/o;->bvG()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvj(Lcom/miui/monthreport/i;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 5

    const/16 v1, 0x67

    array-length v0, p1

    if-gez v0, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Module %s task is null."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v1}, Lcom/miui/monthreport/i;->bvi(Lcom/miui/monthreport/i;)Ljava/lang/Exception;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/monthreport/o;->bvB(Ljava/lang/String;Ljava/lang/Exception;)Lcom/miui/monthreport/o;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    :cond_1
    iget-object v1, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v1}, Lcom/miui/monthreport/o;->bvC()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Module %s has no data."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/miui/monthreport/l;->bvs()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/miui/monthreport/l;->bvt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/miui/monthreport/i;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Uploading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v3}, Lcom/miui/monthreport/o;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/monthreport/l;->aZs:Lcom/miui/monthreport/i;

    invoke-static {v0}, Lcom/miui/monthreport/i;->bvg(Lcom/miui/monthreport/i;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/miui/monthreport/n;->aZt:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/monthreport/l;->aZr:Lcom/miui/monthreport/o;

    invoke-virtual {v3}, Lcom/miui/monthreport/o;->bvD()Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "5fdd8678-cddf-4269-bb73-48187445bba7"

    invoke-static {v0, v2, v3, v1, v4}, Lcom/miui/common/network/b;->aLy(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/monthreport/l;->bvr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/l;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/monthreport/l;->bvu(Ljava/lang/Integer;)V

    return-void
.end method
