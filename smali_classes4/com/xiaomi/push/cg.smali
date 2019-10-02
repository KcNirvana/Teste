.class public Lcom/xiaomi/push/cg;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public a:J

.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/ce;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Lcom/xiaomi/push/ce;->a:J

    iput-wide v0, p0, Lcom/xiaomi/push/cg;->a:J

    iget p1, p1, Lcom/xiaomi/push/ce;->a:I

    iput p1, p0, Lcom/xiaomi/push/cg;->a:I

    return-void
.end method
