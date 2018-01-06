.class public abstract Landroid/support/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroid/support/a/a/r$i;

.field private b:I


# direct methods
.method private constructor <init>(Landroid/support/a/a/r$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/a/a/o;->b:I

    iput-object p1, p0, Landroid/support/a/a/o;->a:Landroid/support/a/a/r$i;

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/a/a/r$i;Landroid/support/a/a/p;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/a/a/o;-><init>(Landroid/support/a/a/r$i;)V

    return-void
.end method

.method public static a(Landroid/support/a/a/r$i;)Landroid/support/a/a/o;
    .locals 1

    new-instance v0, Landroid/support/a/a/p;

    invoke-direct {v0, p0}, Landroid/support/a/a/p;-><init>(Landroid/support/a/a/r$i;)V

    return-object v0
.end method

.method public static a(Landroid/support/a/a/r$i;I)Landroid/support/a/a/o;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {p0}, Landroid/support/a/a/o;->a(Landroid/support/a/a/r$i;)Landroid/support/a/a/o;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Landroid/support/a/a/o;->b(Landroid/support/a/a/r$i;)Landroid/support/a/a/o;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Landroid/support/a/a/r$i;)Landroid/support/a/a/o;
    .locals 1

    new-instance v0, Landroid/support/a/a/q;

    invoke-direct {v0, p0}, Landroid/support/a/a/q;-><init>(Landroid/support/a/a/r$i;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public a()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/a/a/o;->f()I

    move-result v0

    iput v0, p0, Landroid/support/a/a/o;->b:I

    return-void
.end method

.method public abstract a(I)V
.end method

.method public b()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroid/support/a/a/o;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/a/a/o;->f()I

    move-result v0

    iget v1, p0, Landroid/support/a/a/o;->b:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c()I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method
