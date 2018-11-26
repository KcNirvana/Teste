.class public final Lcom/miui/hybrid/accessory/a/f/c/a;
.super Lcom/miui/hybrid/accessory/a/f/c/b;


# instance fields
.field private b:I

.field private bhO:[B

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/hybrid/accessory/a/f/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    return-void
.end method

.method public a([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/hybrid/accessory/a/f/c/a;->bDx([BII)V

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->bhO:[B

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    return v0
.end method

.method public bDx([BII)V
    .locals 1

    iput-object p1, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->bhO:[B

    iput p2, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->c:I

    return-void
.end method

.method public bDy([BII)I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/c/a;->c()I

    move-result v0

    if-gt p3, v0, :cond_0

    :goto_0
    if-gtz p3, :cond_1

    :goto_1
    return p3

    :cond_0
    move p3, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->bhO:[B

    iget v1, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, p3}, Lcom/miui/hybrid/accessory/a/f/c/a;->a(I)V

    goto :goto_1
.end method

.method public c()I
    .locals 2

    iget v0, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->c:I

    iget v1, p0, Lcom/miui/hybrid/accessory/a/f/c/a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
