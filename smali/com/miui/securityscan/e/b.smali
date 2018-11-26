.class public Lcom/miui/securityscan/e/b;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p1}, Lcom/miui/securityscan/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/e/b;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/e/b;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/miui/securityscan/e/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v5

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/e/b;->context:Landroid/content/Context;

    const-string/jumbo v1, "data_config"

    invoke-static {v0, v1}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v0

    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "dataVersion"

    const-string/jumbo v3, "dataVsersionAm"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v3, v4}, Lcom/miui/securityscan/b/c;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/securityscan/e/b;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/appmanager/model/AMDataModel;->bhG(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    iget-object v1, p0, Lcom/miui/securityscan/e/b;->context:Landroid/content/Context;

    const-string/jumbo v2, "app_manager_adv"

    invoke-static {v1, v2, v0}, Lcom/miui/securityscan/utils/j;->Je(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v5

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "LoadAppManagerAdvTask"

    const-string/jumbo v2, "loadAppManagerAdv writeStringToFileDir error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
