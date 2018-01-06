.class public Lcom/miui/weather2/tools/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/miui/weather2/tools/u;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/weather2/tools/u;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/weather2/tools/bi;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "weather2_stagingad"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "weather2_adevent"

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/miui/weather2/d/a;->i:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/weather2/d/a;->j:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/weather2/d/a;->a:Ljava/lang/String;

    invoke-static {p1, v1, v0}, Lcom/miui/weather2/tools/ba;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    invoke-static {p3}, Lcom/xiaomi/a/d;->a(Landroid/content/Context;)Lcom/xiaomi/a/d;

    move-result-object v0

    invoke-static {p0}, Lcom/xiaomi/a/b;->b(Ljava/lang/String;)Lcom/xiaomi/a/c;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Lcom/xiaomi/a/c;->a(Ljava/util/List;)Lcom/xiaomi/a/c;

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/xiaomi/a/d;->a(Z)V

    sget-object v2, Lcom/miui/weather2/tools/u;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaomi/a/d;->a(Ljava/lang/String;)Lcom/xiaomi/a/m;

    move-result-object v0

    const-string v2, "v"

    const-string v3, "sdk_1.0"

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/a/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/a;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v1, v2, p0}, Lcom/xiaomi/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/a;

    move-result-object v1

    const-string v2, "t"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/a/a;->a(Ljava/lang/String;J)Lcom/xiaomi/a/a;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v1, v2, p1}, Lcom/xiaomi/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/m;->a(Lcom/xiaomi/a/a;)V

    const-string v0, "Wth2:CommercialAnalytics"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "analytics() sConfigKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/miui/weather2/tools/u;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
