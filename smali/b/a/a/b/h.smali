.class public Lb/a/a/b/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7fffffff

    sput v0, Lb/a/a/b/h;->a:I

    return-void
.end method

.method public static a(Lb/a/a/b/e;B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    sget v0, Lb/a/a/b/h;->a:I

    invoke-static {p0, p1, v0}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    return-void
.end method

.method public static a(Lb/a/a/b/e;BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lb/a/a/f;
        }
    .end annotation

    const/4 v0, 0x0

    if-gtz p2, :cond_0

    new-instance v0, Lb/a/a/f;

    const-string v1, "Maximum skip depth exceeded"

    invoke-direct {v0, v1}, Lb/a/a/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lb/a/a/b/e;->q()Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lb/a/a/b/e;->r()B

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lb/a/a/b/e;->s()S

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lb/a/a/b/e;->t()I

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lb/a/a/b/e;->u()J

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lb/a/a/b/e;->v()D

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lb/a/a/b/e;->x()Ljava/nio/ByteBuffer;

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Lb/a/a/b/e;->g()Lb/a/a/b/j;

    :goto_1
    invoke-virtual {p0}, Lb/a/a/b/e;->i()Lb/a/a/b/b;

    move-result-object v0

    iget-byte v1, v0, Lb/a/a/b/b;->b:B

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lb/a/a/b/e;->h()V

    goto :goto_0

    :cond_1
    iget-byte v0, v0, Lb/a/a/b/b;->b:B

    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, v0, v1}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    invoke-virtual {p0}, Lb/a/a/b/e;->j()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lb/a/a/b/e;->k()Lb/a/a/b/d;

    move-result-object v1

    :goto_2
    iget v2, v1, Lb/a/a/b/d;->c:I

    if-ge v0, v2, :cond_2

    iget-byte v2, v1, Lb/a/a/b/d;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    iget-byte v2, v1, Lb/a/a/b/d;->b:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lb/a/a/b/e;->l()V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lb/a/a/b/e;->o()Lb/a/a/b/i;

    move-result-object v1

    :goto_3
    iget v2, v1, Lb/a/a/b/i;->b:I

    if-ge v0, v2, :cond_3

    iget-byte v2, v1, Lb/a/a/b/i;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lb/a/a/b/e;->p()V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lb/a/a/b/e;->m()Lb/a/a/b/c;

    move-result-object v1

    :goto_4
    iget v2, v1, Lb/a/a/b/c;->b:I

    if-ge v0, v2, :cond_4

    iget-byte v2, v1, Lb/a/a/b/c;->a:B

    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, v2, v3}, Lb/a/a/b/h;->a(Lb/a/a/b/e;BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lb/a/a/b/e;->n()V

    goto :goto_0

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
