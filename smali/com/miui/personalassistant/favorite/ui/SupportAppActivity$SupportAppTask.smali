.class Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;
.super Landroid/os/AsyncTask;
.source "SupportAppActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportAppTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/miui/personalassistant/favorite/request/HttpRequest;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/favorite/request/HttpRequest;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/personalassistant/favorite/request/HttpRequest;->reqSupportApp()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity$SupportAppTask;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v3, "app_support_timestamp"

    const-wide/16 v6, 0x0

    invoke-static {v0, v3, v6, v7}, Lcom/miui/personalassistant/favorite/util/PrefUtil;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    const-string/jumbo v3, "appList"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->access$100(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;->access$200(Lcom/miui/personalassistant/favorite/ui/SupportAppActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "SupportAppActivity"

    const-string/jumbo v4, "JSONException "

    invoke-static {v3, v4, v1}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
