.class public Lcom/xiaomi/mipush/sdk/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/mipush/sdk/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/xiaomi/mipush/sdk/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ac;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/ac;->b:Ljava/util/Map;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/al;)V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/al;->k()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaomi/j/a/al;->f()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/ac;->a:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/e$a;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/xiaomi/j/a/al;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/e;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/e;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Lcom/xiaomi/mipush/sdk/e;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/e$a;)V

    :cond_0
    iget-object v0, p1, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lcom/xiaomi/j/a/al;->h:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    sget-object v0, Lcom/xiaomi/j/a/g;->a:Lcom/xiaomi/j/a/g;

    iget-object v0, v0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/j/a/al;->f:J

    iget-object v4, p1, Lcom/xiaomi/j/a/al;->g:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    invoke-virtual {v1, v6, v0}, Lcom/xiaomi/mipush/sdk/ad;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ae;)V

    :cond_1
    return-void

    :cond_2
    move-object v1, v5

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/xiaomi/j/a/as;)V
    .locals 6

    const/4 v1, 0x0

    sget-object v0, Lcom/xiaomi/j/a/g;->b:Lcom/xiaomi/j/a/g;

    iget-object v0, v0, Lcom/xiaomi/j/a/g;->j:Ljava/lang/String;

    iget-wide v2, p1, Lcom/xiaomi/j/a/as;->f:J

    iget-object v4, p1, Lcom/xiaomi/j/a/as;->g:Ljava/lang/String;

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/ar;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mipush/sdk/ae;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/j/a/as;->h()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    invoke-virtual {v2, v1, v0}, Lcom/xiaomi/mipush/sdk/ad;->b(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/ae;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/af;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/ac;->c:Lcom/xiaomi/mipush/sdk/ad;

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/mipush/sdk/ad;->a(Ljava/lang/String;Lcom/xiaomi/mipush/sdk/af;)V

    goto :goto_0
.end method
