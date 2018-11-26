.class public Lcom/miui/hybrid/accessory/a/f/b/h;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lcom/miui/hybrid/accessory/a/f/b/h;->a:I

    return-void
.end method

.method public static bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V
    .locals 1

    sget v0, Lcom/miui/hybrid/accessory/a/f/b/h;->a:I

    invoke-static {p0, p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    return-void
.end method

.method public static bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    const-string/jumbo v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->k()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->l()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->m()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->o()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->p()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->r()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v1, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->e()Lcom/miui/hybrid/accessory/a/f/b/b;

    move-result-object v1

    :goto_2
    iget v2, v1, Lcom/miui/hybrid/accessory/a/f/b/b;->c:I

    if-lt v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->f()V

    goto :goto_0

    :cond_2
    iget-byte v2, v1, Lcom/miui/hybrid/accessory/a/f/b/b;->bhH:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    iget-byte v2, v1, Lcom/miui/hybrid/accessory/a/f/b/b;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :pswitch_a
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->i()Lcom/miui/hybrid/accessory/a/f/b/d;

    move-result-object v1

    :goto_3
    iget v2, v1, Lcom/miui/hybrid/accessory/a/f/b/d;->b:I

    if-lt v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->j()V

    goto :goto_0

    :cond_3
    iget-byte v2, v1, Lcom/miui/hybrid/accessory/a/f/b/d;->bhJ:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_b
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->g()Lcom/miui/hybrid/accessory/a/f/b/e;

    move-result-object v1

    :goto_4
    iget v2, v1, Lcom/miui/hybrid/accessory/a/f/b/e;->b:I

    if-lt v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/a/f/b/c;->h()V

    goto :goto_0

    :cond_4
    iget-byte v2, v1, Lcom/miui/hybrid/accessory/a/f/b/e;->bhK:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDw(Lcom/miui/hybrid/accessory/a/f/b/c;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
