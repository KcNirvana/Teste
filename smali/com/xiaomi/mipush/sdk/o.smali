.class public Lcom/xiaomi/mipush/sdk/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:D

.field private c:Lcom/xiaomi/metoknlp/geofencing/a;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/mipush/sdk/o;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mipush/sdk/o;->b:D

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/o;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/mipush/sdk/o;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/geofencing/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->d:Landroid/content/Context;

    const-string v2, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/xiaomi/j/a/n;)Z
    .locals 12

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->m()Lcom/xiaomi/j/a/p;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->o()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->m()Lcom/xiaomi/j/a/p;

    move-result-object v4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/o;->c:Lcom/xiaomi/metoknlp/geofencing/a;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/o;->d:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/xiaomi/j/a/p;->c()D

    move-result-wide v2

    invoke-virtual {v4}, Lcom/xiaomi/j/a/p;->a()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->o()D

    move-result-wide v6

    double-to-float v6, v6

    const-wide/16 v7, -0x1

    const-string v9, "com.xiaomi.xmsf"

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/xiaomi/j/a/n;->s()Lcom/xiaomi/j/a/k;

    move-result-object v11

    invoke-virtual {v11}, Lcom/xiaomi/j/a/k;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {v0 .. v11}, Lcom/xiaomi/metoknlp/geofencing/a;->a(Landroid/content/Context;DDFJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
