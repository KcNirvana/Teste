.class Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;
.super Landroid/os/AsyncTask;
.source "AccountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/express/receiver/AccountReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsubscribeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

.field final synthetic this$0:Lcom/miui/personalassistant/express/receiver/AccountReceiver;


# direct methods
.method private constructor <init>(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->this$0:Lcom/miui/personalassistant/express/receiver/AccountReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/personalassistant/express/receiver/AccountReceiver;Lcom/miui/personalassistant/express/receiver/AccountReceiver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;-><init>(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    iget-object v3, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->this$0:Lcom/miui/personalassistant/express/receiver/AccountReceiver;

    invoke-static {v3}, Lcom/miui/personalassistant/express/receiver/AccountReceiver;->access$100(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/personalassistant/express/Preferences;->getBindedPhones(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->this$0:Lcom/miui/personalassistant/express/receiver/AccountReceiver;

    invoke-static {v4}, Lcom/miui/personalassistant/express/receiver/AccountReceiver;->access$100(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "3"

    invoke-static {v4, v0, v5}, Lcom/miui/personalassistant/express/RemoteRequestManager;->getPhoneSubscribeRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/personalassistant/request/core/JSONRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    iget-object v4, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/core/JSONRequest;->getStatus()I

    move-result v2

    const-string/jumbo v4, "express_phone_unsubscribe"

    const-string/jumbo v5, "account"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/express/util/StatUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->mJSONRequest:Lcom/miui/personalassistant/request/core/JSONRequest;

    invoke-virtual {v4}, Lcom/miui/personalassistant/request/core/JSONRequest;->requestData()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "success"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "AccountReceiver"

    const-string/jumbo v5, "onPostExecute: unsubscribe success"

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->this$0:Lcom/miui/personalassistant/express/receiver/AccountReceiver;

    invoke-static {v4}, Lcom/miui/personalassistant/express/receiver/AccountReceiver;->access$100(Lcom/miui/personalassistant/express/receiver/AccountReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/personalassistant/express/Preferences;->deleteBindedPhones(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "errorMsg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "AccountReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPostExecute: unsubscribe failed , errorMsg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AccountReceiver"

    const-string/jumbo v5, "onPostExecute: "

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "AccountReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPostExecute: request failed , errorCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/receiver/AccountReceiver$UnsubscribeTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
