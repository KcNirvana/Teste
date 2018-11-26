.class final Lcom/miui/optimizemanage/n;
.super Lcom/miui/common/d/e;
.source ""


# instance fields
.field final synthetic Ao:Lcom/miui/optimizemanage/d;


# direct methods
.method constructor <init>(Lcom/miui/optimizemanage/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizemanage/n;->Ao:Lcom/miui/optimizemanage/d;

    invoke-direct {p0, p2}, Lcom/miui/common/d/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/miui/optimizemanage/optimizeresult/OMDataModel;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/optimizemanage/n;->Ao:Lcom/miui/optimizemanage/d;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "om_adv_data"

    invoke-static {v1, v2}, Lcom/miui/securityscan/utils/j;->Jd(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yF(Lorg/json/JSONObject;)Lcom/miui/optimizemanage/optimizeresult/OMDataModel;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/miui/optimizemanage/n;->Ao:Lcom/miui/optimizemanage/d;

    invoke-virtual {v1}, Lcom/miui/optimizemanage/d;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "data_config"

    invoke-static {v1, v2}, Lcom/miui/securityscan/b/c;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/securityscan/b/c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yG()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "dataVersionOm"

    invoke-virtual {v0}, Lcom/miui/optimizemanage/optimizeresult/OMDataModel;->yG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/miui/securityscan/b/c;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    const-string/jumbo v2, "ResultFragment"

    const-string/jumbo v3, "omdatamodel create error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/optimizemanage/n;->loadInBackground()Lcom/miui/optimizemanage/optimizeresult/OMDataModel;

    move-result-object v0

    return-object v0
.end method
