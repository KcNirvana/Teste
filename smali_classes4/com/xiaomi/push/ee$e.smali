.class public final Lcom/xiaomi/push/ee$e;
.super Lcom/xiaomi/push/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/push/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field private a:I

.field private a:Lcom/xiaomi/push/ee$b;

.field private a:Ljava/lang/String;

.field private a:Z

.field private b:I

.field private b:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private c:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private d:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/push/e;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/push/ee$e;->a:I

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->a:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->b:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->c:Ljava/lang/String;

    iput v0, p0, Lcom/xiaomi/push/ee$e;->b:I

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->d:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->e:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/push/ee$e;->a:Lcom/xiaomi/push/ee$b;

    iput v0, p0, Lcom/xiaomi/push/ee$e;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/push/ee$e;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/ee$e;->d:I

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->b()I

    :cond_0
    iget v0, p0, Lcom/xiaomi/push/ee$e;->d:I

    return v0
.end method

.method public bridge synthetic a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/e;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/xiaomi/push/ee$e;->a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/ee$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/xiaomi/push/ee$b;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->a:Lcom/xiaomi/push/ee$b;

    return-object v0
.end method

.method public a(I)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->a:Z

    iput p1, p0, Lcom/xiaomi/push/ee$e;->a:I

    return-object p0
.end method

.method public a(Lcom/xiaomi/push/b;)Lcom/xiaomi/push/ee$e;
    .locals 1

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/push/ee$e;->a(Lcom/xiaomi/push/b;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->c(I)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_1
    new-instance v0, Lcom/xiaomi/push/ee$b;

    invoke-direct {v0}, Lcom/xiaomi/push/ee$b;-><init>()V

    invoke-virtual {p1, v0}, Lcom/xiaomi/push/b;->a(Lcom/xiaomi/push/e;)V

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->a(Lcom/xiaomi/push/ee$b;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->f(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->e(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->d(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->b(I)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->c(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->b(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->a(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/xiaomi/push/b;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/ee$e;->a(I)Lcom/xiaomi/push/ee$e;

    goto :goto_0

    :sswitch_a
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0x8 -> :sswitch_9
        0x12 -> :sswitch_8
        0x1a -> :sswitch_7
        0x22 -> :sswitch_6
        0x28 -> :sswitch_5
        0x32 -> :sswitch_4
        0x3a -> :sswitch_3
        0x42 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/xiaomi/push/ee$b;)Lcom/xiaomi/push/ee$e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->i:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->a:Lcom/xiaomi/push/ee$b;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->b:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/xiaomi/push/c;)V
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->b(II)V

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Lcom/xiaomi/push/ee$b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)V

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/xiaomi/push/c;->a(II)V

    :cond_9
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->a:Z

    return v0
.end method

.method public b()I
    .locals 3

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->b(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->i()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->a()Lcom/xiaomi/push/ee$b;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(ILcom/xiaomi/push/e;)I

    move-result v0

    add-int/2addr v1, v0

    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->j()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/xiaomi/push/ee$e;->e()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaomi/push/c;->a(II)I

    move-result v0

    add-int/2addr v1, v0

    :cond_9
    iput v1, p0, Lcom/xiaomi/push/ee$e;->d:I

    return v1
.end method

.method public b(I)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->e:Z

    iput p1, p0, Lcom/xiaomi/push/ee$e;->b:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->c:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->b:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/ee$e;->a:I

    return v0
.end method

.method public c(I)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->j:Z

    iput p1, p0, Lcom/xiaomi/push/ee$e;->c:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->d:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->c:Z

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/ee$e;->b:I

    return v0
.end method

.method public d(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->f:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->d:Z

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/push/ee$e;->c:I

    return v0
.end method

.method public e(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->g:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->e:Z

    return v0
.end method

.method public f(Ljava/lang/String;)Lcom/xiaomi/push/ee$e;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/ee$e;->h:Z

    iput-object p1, p0, Lcom/xiaomi/push/ee$e;->f:Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/ee$e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->f:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->g:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->h:Z

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->i:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/push/ee$e;->j:Z

    return v0
.end method
