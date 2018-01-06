.class Lcom/xiaomi/metoknlp/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/metoknlp/c/p;


# instance fields
.field final synthetic a:Lcom/xiaomi/metoknlp/c/n;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Lcom/xiaomi/metoknlp/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/h;->a:Lcom/xiaomi/metoknlp/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/metoknlp/c/n;Lcom/xiaomi/metoknlp/c/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/c/h;-><init>(Lcom/xiaomi/metoknlp/c/n;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/metoknlp/c/h;->c:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 2

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/h;->b:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/metoknlp/c/h;->c:J

    iput-wide p4, p0, Lcom/xiaomi/metoknlp/c/h;->d:J

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/h;->a:Lcom/xiaomi/metoknlp/c/n;

    invoke-static {v0}, Lcom/xiaomi/metoknlp/c/n;->d(Lcom/xiaomi/metoknlp/c/n;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/metoknlp/c/h;->d:J

    return-wide v0
.end method
