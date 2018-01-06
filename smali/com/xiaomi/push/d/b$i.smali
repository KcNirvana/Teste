.class public final Lcom/xiaomi/push/d/b$i;
.super Lcom/a/b/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/a/b/a/a;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/a/b/a/e;-><init>()V

    sget-object v0, Lcom/a/b/a/a;->a:Lcom/a/b/a/a;

    iput-object v0, p0, Lcom/xiaomi/push/d/b$i;->b:Lcom/a/b/a/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/d/b$i;->c:I

    return-void
.end method

.method public static b([B)Lcom/xiaomi/push/d/b$i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/a/b/a/d;
        }
    .end annotation

    new-instance v0, Lcom/xiaomi/push/d/b$i;

    invoke-direct {v0}, Lcom/xiaomi/push/d/b$i;-><init>()V

    invoke-virtual {v0, p0}, Lcom/xiaomi/push/d/b$i;->a([B)Lcom/a/b/a/e;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/push/d/b$i;

    check-cast v0, Lcom/xiaomi/push/d/b$i;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/d/b$i;->c:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/d/b$i;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/d/b$i;->c:I

    return v0
.end method

.method public synthetic a(Lcom/a/b/a/b;)Lcom/a/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/d/b$i;->b(Lcom/a/b/a/b;)Lcom/xiaomi/push/d/b$i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/a/b/a/a;)Lcom/xiaomi/push/d/b$i;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/d/b$i;->a:Z

    iput-object p1, p0, Lcom/xiaomi/push/d/b$i;->b:Lcom/a/b/a/a;

    return-object p0
.end method

.method public a(Lcom/a/b/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/push/d/b$i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/d/b$i;->d()Lcom/a/b/a/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/b/a/c;->a(ILcom/a/b/a/a;)V

    :cond_0
    return-void
.end method

.method public b()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/push/d/b$i;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/d/b$i;->d()Lcom/a/b/a/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/b/a/c;->b(ILcom/a/b/a/a;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/xiaomi/push/d/b$i;->c:I

    return v0
.end method

.method public b(Lcom/a/b/a/b;)Lcom/xiaomi/push/d/b$i;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/a/b/a/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/d/b$i;->a(Lcom/a/b/a/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/a/b/a/b;->h()Lcom/a/b/a/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/d/b$i;->a(Lcom/a/b/a/a;)Lcom/xiaomi/push/d/b$i;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public d()Lcom/a/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/d/b$i;->b:Lcom/a/b/a/a;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/d/b$i;->a:Z

    return v0
.end method
