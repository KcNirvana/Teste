.class final Lcom/miui/appcompatibility/g;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field final synthetic baF:Lcom/miui/appcompatibility/b;


# direct methods
.method constructor <init>(Lcom/miui/appcompatibility/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 11

    const/4 v10, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "AppCompatManager"

    const-string/jumbo v3, "doInBackground()"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    iget-object v3, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-static {v3}, Lcom/miui/appcompatibility/b;->bwH(Lcom/miui/appcompatibility/b;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/appcompatibility/b;->bwJ(Lcom/miui/appcompatibility/b;Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwI(Lcom/miui/appcompatibility/b;)I

    move-result v0

    if-lt v0, v10, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appcompatibility/data/PackageData;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "pkg"

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwa()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "ver"

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/PackageData;->bwb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v3, v7}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "pkgs"

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v4}, Lcom/miui/appcompatibility/f;->bxc(Ljava/util/Map;)Lcom/miui/appcompatibility/data/AppCompatibilityData;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwf()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "AppCompatManager"

    const-string/jumbo v4, "-onPostExecute()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-virtual {v0}, Lcom/miui/appcompatibility/data/AppCompatibilityData;->bwf()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/appcompatibility/b;->bwF(Ljava/util/List;)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwI(Lcom/miui/appcompatibility/b;)I

    move-result v0

    if-lt v0, v10, :cond_5

    :cond_3
    move v0, v1

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AppCompatManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "JSONException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/g;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appcompatibility/g;->baF:Lcom/miui/appcompatibility/b;

    invoke-static {v0}, Lcom/miui/appcompatibility/b;->bwK(Lcom/miui/appcompatibility/b;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/appcompatibility/g;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
