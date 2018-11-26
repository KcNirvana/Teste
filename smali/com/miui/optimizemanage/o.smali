.class final Lcom/miui/optimizemanage/o;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic Ap:Lcom/miui/optimizemanage/OptimizemanageMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/OptimizemanageMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/o;->Ap:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizemanage/o;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/optimizemanage/o;->Ap:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "dataVersion"

    const-string/jumbo v3, "dataVersionOm"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/optimizemanage/o;->Ap:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    invoke-static {v0, v1}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yM(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1.306.1.7"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "1.306.1.8"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/miui/optimizemanage/a;->AJ([Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/optimizemanage/o;->Ap:Lcom/miui/optimizemanage/OptimizemanageMainActivity;

    const-string/jumbo v2, "om_adv_data"

    invoke-static {v1, v2, v0}, Lcom/miui/securityscan/utils/j;->Je(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "OptimizemanageMainActivity"

    const-string/jumbo v2, "loadAppManagerAdv writeStringToFileDir error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
