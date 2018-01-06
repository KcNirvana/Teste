.class public Lb/a/a/c/b;
.super Lb/a/a/c/d;
.source "SourceFile"


# instance fields
.field private a:Lb/a/a/d;

.field private b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lb/a/a/c/d;-><init>()V

    new-instance v0, Lb/a/a/d;

    invoke-direct {v0, p1}, Lb/a/a/d;-><init>(I)V

    iput-object v0, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 3

    iget-object v0, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->a()[B

    move-result-object v0

    iget-object v1, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->b()I

    move-result v1

    iget v2, p0, Lb/a/a/c/b;->b:I

    sub-int/2addr v1, v2

    if-le p3, v1, :cond_0

    iget-object v1, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->b()I

    move-result v1

    iget v2, p0, Lb/a/a/c/b;->b:I

    sub-int p3, v1, v2

    :cond_0
    if-lez p3, :cond_1

    iget v1, p0, Lb/a/a/c/b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lb/a/a/c/b;->b:I

    add-int/2addr v0, p3

    iput v0, p0, Lb/a/a/c/b;->b:I

    :cond_1
    return p3
.end method

.method public b([BII)V
    .locals 1

    iget-object v0, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    invoke-virtual {v0, p1, p2, p3}, Lb/a/a/d;->write([BII)V

    return-void
.end method

.method public d_()I
    .locals 1

    iget-object v0, p0, Lb/a/a/c/b;->a:Lb/a/a/d;

    invoke-virtual {v0}, Lb/a/a/d;->size()I

    move-result v0

    return v0
.end method
