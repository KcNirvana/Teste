.class Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;
.super Ljava/lang/Object;
.source "FlybirdEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

.field final synthetic val$paramsObj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    iput-object p2, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->val$paramsObj:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    :try_start_0
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->val$paramsObj:Ljava/lang/String;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->ismNeedForbidDuplicateState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->access$000(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x258

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v3, "param"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "param"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->access$002(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;J)J

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;->this$0:Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->access$100(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
