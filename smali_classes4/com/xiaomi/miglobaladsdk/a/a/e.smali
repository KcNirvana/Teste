.class public Lcom/xiaomi/miglobaladsdk/a/a/e;
.super Ljava/lang/Object;
.source "MiAdBlacklistConfig.java"


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->a:J

    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->b:J

    iput-wide v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->c:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->a:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->d:Ljava/lang/String;

    return-void
.end method

.method public b(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->b:J

    return-void
.end method

.method public c(J)V
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/e;->c:J

    return-void
.end method
