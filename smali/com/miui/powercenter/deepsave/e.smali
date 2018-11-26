.class public Lcom/miui/powercenter/deepsave/e;
.super Landroid/os/AsyncTask;
.source ""


# instance fields
.field private aNu:Lcom/miui/powercenter/deepsave/d;

.field private aNv:Lcom/miui/powercenter/deepsave/f;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/powercenter/deepsave/f;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/e;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/powercenter/deepsave/e;->aNv:Lcom/miui/powercenter/deepsave/f;

    new-instance v0, Lcom/miui/powercenter/deepsave/d;

    invoke-direct {v0, p1}, Lcom/miui/powercenter/deepsave/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/e;->aNu:Lcom/miui/powercenter/deepsave/d;

    return-void
.end method

.method private bag(Ljava/lang/String;)Ljava/util/List;
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "BatterySaveIdeaLoadTask"

    const-string/jumbo v1, "Response is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "list"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "data"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v4, Lcom/miui/powercenter/deepsave/IdeaModel;

    invoke-direct {v4}, Lcom/miui/powercenter/deepsave/IdeaModel;-><init>()V

    const-string/jumbo v5, "pkgName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "title"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    const-string/jumbo v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    iget-object v3, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method protected baf(Ljava/util/List;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/e;->aNv:Lcom/miui/powercenter/deepsave/f;

    invoke-interface {v0, p1}, Lcom/miui/powercenter/deepsave/f;->bah(Ljava/util/List;)V

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/e;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/e;->aNu:Lcom/miui/powercenter/deepsave/d;

    invoke-virtual {v0}, Lcom/miui/powercenter/deepsave/d;->aZV()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/e;->aNu:Lcom/miui/powercenter/deepsave/d;

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/deepsave/d;->aZU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/deepsave/e;->bag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v0, "channel"

    const-string/jumbo v3, "01-5"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "pkgNames"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/miui/powercenter/deepsave/e;->mContext:Landroid/content/Context;

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "https://adv.sec.intl.miui.com/info/layout"

    :goto_0
    const-string/jumbo v4, "5cdd8678-cddf-4269-ab73-48387445bba6"

    invoke-static {v3, v0, v2, v4}, Lcom/miui/common/network/b;->aLx(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/deepsave/e;->bag(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/miui/powercenter/deepsave/e;->aNu:Lcom/miui/powercenter/deepsave/d;

    invoke-virtual {v3, v1, v0}, Lcom/miui/powercenter/deepsave/d;->bab(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "BatterySaveIdeaLoadTask"

    const-string/jumbo v1, "Save install apps battery idea failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2

    :cond_2
    const-string/jumbo v0, "https://adv.sec.miui.com/info/layout"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BatterySaveIdeaLoadTask"

    const-string/jumbo v2, "BatterySaveIdeaLoadTask error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/deepsave/e;->baf(Ljava/util/List;)V

    return-void
.end method
