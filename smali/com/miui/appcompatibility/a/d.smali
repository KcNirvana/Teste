.class final Lcom/miui/appcompatibility/a/d;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic bak:Lcom/miui/appcompatibility/a/a;

.field final synthetic bal:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/a/a;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/a/d;->bak:Lcom/miui/appcompatibility/a/a;

    iput-object p2, p0, Lcom/miui/appcompatibility/a/d;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/appcompatibility/a/d;->bal:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/appcompatibility/a/d;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/a/d;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v3, "pkg"

    iget-object v4, p0, Lcom/miui/appcompatibility/a/d;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "ver"

    iget-object v4, p0, Lcom/miui/appcompatibility/a/d;->bal:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v2, "AppCompatStateReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "json params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "pkgs"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1}, Lcom/miui/appcompatibility/f;->bxa(Ljava/util/Map;)Lcom/miui/appcompatibility/data/AppCompatibilityData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwf()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwf()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwf()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->getStatus()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/appcompatibility/a/d;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/appcompatibility/b;->getInstance(Landroid/content/Context;)Lcom/miui/appcompatibility/b;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwb()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->getStatus()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/miui/appcompatibility/b;->bwk(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-object v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/a/d;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
