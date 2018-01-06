.class final La/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:La/x;

.field e:La/x;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x800

    new-array v0, v0, [B

    iput-object v0, p0, La/x;->a:[B

    return-void
.end method


# virtual methods
.method public a()La/x;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, La/x;->d:La/x;

    if-eq v0, p0, :cond_0

    iget-object v0, p0, La/x;->d:La/x;

    :goto_0
    iget-object v2, p0, La/x;->e:La/x;

    iget-object v3, p0, La/x;->d:La/x;

    iput-object v3, v2, La/x;->d:La/x;

    iget-object v2, p0, La/x;->d:La/x;

    iget-object v3, p0, La/x;->e:La/x;

    iput-object v3, v2, La/x;->e:La/x;

    iput-object v1, p0, La/x;->d:La/x;

    iput-object v1, p0, La/x;->e:La/x;

    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(I)La/x;
    .locals 6

    iget v0, p0, La/x;->c:I

    iget v1, p0, La/x;->b:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    if-lez p1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-ge p1, v0, :cond_2

    sget-object v0, La/y;->a:La/y;

    invoke-virtual {v0}, La/y;->a()La/x;

    move-result-object v0

    iget-object v1, p0, La/x;->a:[B

    iget v2, p0, La/x;->b:I

    iget-object v3, v0, La/x;->a:[B

    iget v4, v0, La/x;->b:I

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, La/x;->b:I

    add-int/2addr v1, p1

    iput v1, p0, La/x;->b:I

    iget v1, v0, La/x;->c:I

    add-int/2addr v1, p1

    iput v1, v0, La/x;->c:I

    iget-object v1, p0, La/x;->e:La/x;

    invoke-virtual {v1, v0}, La/x;->a(La/x;)La/x;

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    sget-object v1, La/y;->a:La/y;

    invoke-virtual {v1}, La/y;->a()La/x;

    move-result-object v1

    iget-object v2, p0, La/x;->a:[B

    iget v3, p0, La/x;->b:I

    add-int/2addr v3, p1

    iget-object v4, v1, La/x;->a:[B

    iget v5, v1, La/x;->b:I

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, La/x;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, La/x;->c:I

    iget v2, v1, La/x;->c:I

    add-int/2addr v0, v2

    iput v0, v1, La/x;->c:I

    invoke-virtual {p0, v1}, La/x;->a(La/x;)La/x;

    goto :goto_0
.end method

.method public a(La/x;)La/x;
    .locals 1

    iput-object p0, p1, La/x;->e:La/x;

    iget-object v0, p0, La/x;->d:La/x;

    iput-object v0, p1, La/x;->d:La/x;

    iget-object v0, p0, La/x;->d:La/x;

    iput-object p1, v0, La/x;->e:La/x;

    iput-object p1, p0, La/x;->d:La/x;

    return-object p1
.end method

.method public a(La/x;I)V
    .locals 6

    const/16 v2, 0x800

    const/4 v5, 0x0

    iget v0, p1, La/x;->c:I

    iget v1, p1, La/x;->b:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p2

    if-le v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iget v0, p1, La/x;->c:I

    add-int/2addr v0, p2

    if-le v0, v2, :cond_1

    iget-object v0, p1, La/x;->a:[B

    iget v1, p1, La/x;->b:I

    iget-object v2, p1, La/x;->a:[B

    iget v3, p1, La/x;->c:I

    iget v4, p1, La/x;->b:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, La/x;->c:I

    iget v1, p1, La/x;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, La/x;->c:I

    iput v5, p1, La/x;->b:I

    :cond_1
    iget-object v0, p0, La/x;->a:[B

    iget v1, p0, La/x;->b:I

    iget-object v2, p1, La/x;->a:[B

    iget v3, p1, La/x;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, La/x;->c:I

    add-int/2addr v0, p2

    iput v0, p1, La/x;->c:I

    iget v0, p0, La/x;->b:I

    add-int/2addr v0, p2

    iput v0, p0, La/x;->b:I

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, La/x;->e:La/x;

    if-ne v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, La/x;->e:La/x;

    iget v0, v0, La/x;->c:I

    iget-object v1, p0, La/x;->e:La/x;

    iget v1, v1, La/x;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, La/x;->c:I

    iget v2, p0, La/x;->b:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    const/16 v1, 0x800

    if-le v0, v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, La/x;->e:La/x;

    iget v1, p0, La/x;->c:I

    iget v2, p0, La/x;->b:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, La/x;->a(La/x;I)V

    invoke-virtual {p0}, La/x;->a()La/x;

    sget-object v0, La/y;->a:La/y;

    invoke-virtual {v0, p0}, La/y;->a(La/x;)V

    goto :goto_0
.end method
