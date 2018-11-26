.class final Lcom/miui/securityscan/cards/r;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Cn:Lcom/miui/securityscan/cards/m;

.field final synthetic Co:Z

.field final synthetic Cp:Lcom/miui/securityscan/cards/l;

.field final synthetic Cq:Ljava/util/List;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/miui/securityscan/cards/m;ZLandroid/content/Context;Lcom/miui/securityscan/cards/l;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/cards/r;->Cn:Lcom/miui/securityscan/cards/m;

    iput-boolean p2, p0, Lcom/miui/securityscan/cards/r;->Co:Z

    iput-object p3, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iput-object p5, p0, Lcom/miui/securityscan/cards/r;->Cq:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/r;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/powercenter/batteryhistory/b;->getInstance()Lcom/miui/powercenter/batteryhistory/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/b;->aTB()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/securityscan/cards/r;->Co:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/i;->aTQ(Landroid/content/Context;Ljava/util/List;)Lcom/miui/powercenter/batteryhistory/j;

    move-result-object v0

    iget-wide v0, v0, Lcom/miui/powercenter/batteryhistory/j;->aHR:J

    iget-object v2, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget-object v3, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const v0, 0x7f0705fb

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/powercenter/batteryhistory/g;->aTL(Landroid/content/Context;Ljava/util/List;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget-object v3, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/securityscan/cards/r;->val$context:Landroid/content/Context;

    invoke-static {v5, v0, v1}, Lcom/miui/powercenter/a/d;->bbf(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const v0, 0x7f0705f9

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/cards/r;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/cards/r;->Cq:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/cards/o;

    iget-object v1, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget-boolean v1, v1, Lcom/miui/securityscan/cards/l;->BF:Z

    iget-object v2, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget v2, v2, Lcom/miui/securityscan/cards/l;->BD:I

    iget-object v3, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget-boolean v3, v3, Lcom/miui/securityscan/cards/l;->BE:Z

    iget-object v4, p0, Lcom/miui/securityscan/cards/r;->Cp:Lcom/miui/securityscan/cards/l;

    iget-object v5, v4, Lcom/miui/securityscan/cards/l;->BG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/miui/securityscan/cards/o;->onPowerCenterChange(ZIZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
