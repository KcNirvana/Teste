.class Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;
.super Ljava/lang/Object;
.source "RecommendCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->saveOrderToDB(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

.field final synthetic val$cardSources:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;->val$cardSources:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;->val$cardSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/miui/home/launcher/assistant/module/CardSource;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "prefKey"

    invoke-virtual {v11}, Lcom/miui/home/launcher/assistant/module/CardSource;->getPrefKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v1, "RecommendCardView"

    const-string/jumbo v2, "JSONException"

    invoke-static {v1, v2, v9}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView$2;->this$0:Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/RecommendCardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->getInstance(Landroid/content/Context;)Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;

    move-result-object v0

    const-string/jumbo v1, "com.miui.personalassistant.SETTINGS_ORDER_V9"

    const-string/jumbo v2, "0"

    const-string/jumbo v3, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/launcher/assistant/provider/AssistantContentStorage;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;Z)Z

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->updateSortPreList(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
