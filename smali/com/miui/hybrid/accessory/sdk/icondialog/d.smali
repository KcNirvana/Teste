.class Lcom/miui/hybrid/accessory/sdk/icondialog/d;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic bhm:J

.field final synthetic bhn:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;JLjava/util/Map;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->b:Ljava/util/List;

    iput-wide p3, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bhm:J

    iput-object p5, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bhn:Ljava/util/Map;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bCA(Ljava/lang/Void;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/hybrid/accessory/sdk/icondialog/e;->a(Z)Z

    return-void
.end method

.method protected varargs bCz([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->b:Ljava/util/List;

    iget-wide v2, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bhm:J

    iget-object v4, p0, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bhn:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/hybrid/accessory/sdk/icondialog/e;->bCC(Landroid/content/Context;Ljava/util/List;JLjava/util/Map;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bCz([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->bCA(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/hybrid/accessory/sdk/icondialog/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miui/hybrid/accessory/sdk/icondialog/e;->a(Z)Z

    return-void

    :cond_0
    const-string/jumbo v0, "IconDialogLauncher"

    const-string/jumbo v1, "IconDataFetcher is pulling data from server, ignore repeat show request."

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/b/a;->bCR(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/miui/hybrid/accessory/sdk/icondialog/d;->cancel(Z)Z

    return-void
.end method
