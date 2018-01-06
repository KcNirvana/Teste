.class Landroid/support/a/a/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/a/a$a;


# instance fields
.field final synthetic a:Landroid/support/a/a/r;


# direct methods
.method constructor <init>(Landroid/support/a/a/r;)V
    .locals 0

    iput-object p1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/support/a/a/r$w;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/support/a/a/r;->a(IZ)Landroid/support/a/a/r$w;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget-object v2, v2, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    iget-object v3, v1, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/support/a/a/b;->c(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/a/a/r;->a(IIZ)V

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iput-boolean v1, v0, Landroid/support/a/a/r;->f:Z

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget-object v0, v0, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-static {v0, p2}, Landroid/support/a/a/r$t;->a(Landroid/support/a/a/r$t;I)I

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/a/a/r;->a(IILjava/lang/Object;)V

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/a/a/r;->g:Z

    return-void
.end method

.method public a(Landroid/support/a/a/a$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/w;->c(Landroid/support/a/a/a$b;)V

    return-void
.end method

.method public b(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/a/a/r;->a(IIZ)V

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/a/a/r;->f:Z

    return-void
.end method

.method public b(Landroid/support/a/a/a$b;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/support/a/a/w;->c(Landroid/support/a/a/a$b;)V

    return-void
.end method

.method public c(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r;->e(II)V

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/a/a/r;->f:Z

    return-void
.end method

.method c(Landroid/support/a/a/a$b;)V
    .locals 5

    iget v0, p1, Landroid/support/a/a/a$b;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget v2, p1, Landroid/support/a/a/a$b;->b:I

    iget v3, p1, Landroid/support/a/a/a$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;II)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget v2, p1, Landroid/support/a/a/a$b;->b:I

    iget v3, p1, Landroid/support/a/a/a$b;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/a/a/r$i;->b(Landroid/support/a/a/r;II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget v2, p1, Landroid/support/a/a/a$b;->b:I

    iget v3, p1, Landroid/support/a/a/a$b;->d:I

    iget-object v4, p1, Landroid/support/a/a/a$b;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-static {v0}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    iget v2, p1, Landroid/support/a/a/a$b;->b:I

    iget v3, p1, Landroid/support/a/a/a$b;->d:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/a/a/r$i;->a(Landroid/support/a/a/r;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public d(II)V
    .locals 2

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/a/r;->d(II)V

    iget-object v0, p0, Landroid/support/a/a/w;->a:Landroid/support/a/a/r;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/a/a/r;->f:Z

    return-void
.end method
