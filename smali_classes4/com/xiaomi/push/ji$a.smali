.class public Lcom/xiaomi/push/ji$a;
.super Lcom/xiaomi/push/iy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/push/iy$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaomi/push/iy$a;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/jm;)Lcom/xiaomi/push/jc;
    .locals 3

    new-instance v0, Lcom/xiaomi/push/ji;

    iget-boolean v1, p0, Lcom/xiaomi/push/ji$a;->a:Z

    iget-boolean v2, p0, Lcom/xiaomi/push/ji$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/xiaomi/push/ji;-><init>(Lcom/xiaomi/push/jm;ZZ)V

    iget p1, p0, Lcom/xiaomi/push/ji$a;->a:I

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/xiaomi/push/ji$a;->a:I

    invoke-virtual {v0, p1}, Lcom/xiaomi/push/iy;->b(I)V

    :cond_0
    return-object v0
.end method
