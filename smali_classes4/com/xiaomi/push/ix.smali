.class public Lcom/xiaomi/push/ix;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xiaomi/push/jc;

.field private final a:Lcom/xiaomi/push/jj;

.field private final a:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/xiaomi/push/iy$a;

    invoke-direct {v0}, Lcom/xiaomi/push/iy$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/xiaomi/push/ix;-><init>(Lcom/xiaomi/push/je;)V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/push/je;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/ix;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lcom/xiaomi/push/jj;

    iget-object v1, p0, Lcom/xiaomi/push/ix;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lcom/xiaomi/push/jj;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/xiaomi/push/ix;->a:Lcom/xiaomi/push/jj;

    iget-object v0, p0, Lcom/xiaomi/push/ix;->a:Lcom/xiaomi/push/jj;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/je;->a(Lcom/xiaomi/push/jm;)Lcom/xiaomi/push/jc;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/push/ix;->a:Lcom/xiaomi/push/jc;

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/push/ir;)[B
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ix;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lcom/xiaomi/push/ix;->a:Lcom/xiaomi/push/jc;

    invoke-interface {p1, v0}, Lcom/xiaomi/push/ir;->b(Lcom/xiaomi/push/jc;)V

    iget-object p1, p0, Lcom/xiaomi/push/ix;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method
