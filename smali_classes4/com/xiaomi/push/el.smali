.class Lcom/xiaomi/push/el;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Lcom/xiaomi/push/ek;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/push/ek;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    iput-object p2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/xiaomi/push/el;->b:Ljava/lang/String;

    iput-object p5, p0, Lcom/xiaomi/push/el;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x3f0

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    const/16 v3, 0x3e9

    const-string v4, "get message"

    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "action"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "awakened_app_packagename"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "awake_app_packagename"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "awake_app"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "awake_type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaomi/push/el;->b:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/xiaomi/push/el;->c:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    invoke-virtual {v6, v4}, Lcom/xiaomi/push/ek;->b(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    invoke-virtual {v4, v5}, Lcom/xiaomi/push/ek;->a(Ljava/lang/String;)V

    new-instance v4, Lcom/xiaomi/push/ej;

    invoke-direct {v4}, Lcom/xiaomi/push/ej;-><init>()V

    invoke-virtual {v4, v2}, Lcom/xiaomi/push/ej;->b(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/xiaomi/push/ej;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/xiaomi/push/ej;->d(Ljava/lang/String;)V

    const-string v3, "service"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    sget-object v2, Lcom/xiaomi/push/em;->b:Lcom/xiaomi/push/em;

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    :goto_0
    invoke-static {v0, v2, v3, v4}, Lcom/xiaomi/push/ek;->a(Lcom/xiaomi/push/ek;Lcom/xiaomi/push/em;Landroid/content/Context;Lcom/xiaomi/push/ej;)V

    goto/16 :goto_3

    :cond_1
    const-string v0, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-virtual {v4, v0}, Lcom/xiaomi/push/ej;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    sget-object v2, Lcom/xiaomi/push/em;->c:Lcom/xiaomi/push/em;

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em;

    iget-object v2, v2, Lcom/xiaomi/push/em;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    sget-object v2, Lcom/xiaomi/push/em;->a:Lcom/xiaomi/push/em;

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/xiaomi/push/em;->d:Lcom/xiaomi/push/em;

    iget-object v2, v2, Lcom/xiaomi/push/em;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Lcom/xiaomi/push/ek;

    sget-object v2, Lcom/xiaomi/push/em;->d:Lcom/xiaomi/push/em;

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A receive a incorrect message with unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v1, v0}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    const-string v3, "A receive a incorrect message with empty type"

    invoke-static {v0, v2, v1, v3}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A receive a incorrect message with incorrect package info"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v1, v3}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/push/el;->a:Ljava/lang/String;

    const-string v3, "A meet a exception when receive the message"

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/xiaomi/push/el;->a:Landroid/content/Context;

    const-string v2, "null"

    const-string v3, "A receive a incorrect message with empty info"

    :goto_2
    invoke-static {v0, v2, v1, v3}, Lcom/xiaomi/push/eg;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    return-void
.end method
