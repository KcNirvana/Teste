.class Lcom/miui/personalassistant/provider/AssistantProvider$1;
.super Ljava/lang/Object;
.source "AssistantProvider.java"

# interfaces
.implements Lcom/sdu/didi/openapi/DIOpenSDK$DDCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/provider/AssistantProvider;->callPriceApi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/provider/AssistantProvider;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/provider/AssistantProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->this$0:Lcom/miui/personalassistant/provider/AssistantProvider;

    iput-object p2, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->val$type:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v4, "AssistantProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "req result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "price"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->this$0:Lcom/miui/personalassistant/provider/AssistantProvider;

    iget-object v5, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->val$type:Ljava/lang/String;

    const-string/jumbo v6, "estimate_price"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6}, Lcom/miui/personalassistant/provider/AssistantProvider;->access$000(Lcom/miui/personalassistant/provider/AssistantProvider;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    iget-object v4, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->this$0:Lcom/miui/personalassistant/provider/AssistantProvider;

    iget-object v5, p0, Lcom/miui/personalassistant/provider/AssistantProvider$1;->val$type:Ljava/lang/String;

    invoke-static {v4, v5, v7}, Lcom/miui/personalassistant/provider/AssistantProvider;->access$000(Lcom/miui/personalassistant/provider/AssistantProvider;Ljava/lang/String;I)V

    goto :goto_0
.end method
