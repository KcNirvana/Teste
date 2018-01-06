.class public Lcom/xiaomi/a/m;
.super Lcom/xiaomi/a/e;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/a/a;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xiaomi/a/c;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/a/i$a;->b:Lcom/xiaomi/a/i$a;

    invoke-static {v0}, Lcom/xiaomi/a/i;->a(Lcom/xiaomi/a/i$a;)Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/i;->b(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/i;->a(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/i;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/a/i;->a()Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a;->a()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/i;->b(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/a/a;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/i;->a(Lorg/json/JSONObject;)Lcom/xiaomi/a/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/i;)V

    goto :goto_0
.end method
