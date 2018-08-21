.class Lcom/miui/personalassistant/util/AlipayUtil$5$1;
.super Ljava/lang/Object;
.source "AlipayUtil.java"

# interfaces
.implements Lcom/miui/personalassistant/request/core/IDataStatusChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/personalassistant/util/AlipayUtil$5;->onDataStatusChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;


# direct methods
.method constructor <init>(Lcom/miui/personalassistant/util/AlipayUtil$5;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/util/AlipayUtil$5$1;->this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCacheGot(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDataStatusChanged(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v4, "AlipayUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getUserInfo onDataStatusChanged="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/personalassistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "alipay_user_info_share_response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lcom/miui/personalassistant/model/AlipayUserInfo;

    const-string/jumbo v4, "avatar"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "nick_name"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mobile"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/miui/personalassistant/model/AlipayUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$5$1;->this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;

    iget-object v4, v4, Lcom/miui/personalassistant/util/AlipayUtil$5;->val$context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/miui/personalassistant/model/AlipayUserInfo;->saveUserInfo(Landroid/content/Context;Lcom/miui/personalassistant/model/AlipayUserInfo;)V

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$5$1;->this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;

    iget-object v4, v4, Lcom/miui/personalassistant/util/AlipayUtil$5;->val$handler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$5$1;->this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;

    iget-object v4, v4, Lcom/miui/personalassistant/util/AlipayUtil$5;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x6

    iput v4, v2, Landroid/os/Message;->what:I

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/personalassistant/util/AlipayUtil$5$1;->this$0:Lcom/miui/personalassistant/util/AlipayUtil$5;

    iget-object v4, v4, Lcom/miui/personalassistant/util/AlipayUtil$5;->val$handler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "AlipayUtil"

    const-string/jumbo v5, "JSONException"

    invoke-static {v4, v5, v0}, Lcom/miui/personalassistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
