.class Lcom/a/a/o;
.super Lcom/a/a/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/ai",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/k;


# direct methods
.method constructor <init>(Lcom/a/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/o;->a:Lcom/a/a/k;

    invoke-direct {p0}, Lcom/a/a/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/a/a/d/a;)Ljava/lang/Float;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/d/a;->f()Lcom/a/a/d/c;

    move-result-object v0

    sget-object v1, Lcom/a/a/d/c;->i:Lcom/a/a/d/c;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/a;->j()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/a;->k()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/a/a/d/d;Ljava/lang/Number;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/d;->f()Lcom/a/a/d/d;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/a/a/o;->a:Lcom/a/a/k;

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/a/a/k;->a(Lcom/a/a/k;D)V

    invoke-virtual {p1, p2}, Lcom/a/a/d/d;->a(Ljava/lang/Number;)Lcom/a/a/d/d;

    goto :goto_0
.end method

.method public synthetic read(Lcom/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/o;->a(Lcom/a/a/d/a;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public synthetic write(Lcom/a/a/d/d;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/o;->a(Lcom/a/a/d/d;Ljava/lang/Number;)V

    return-void
.end method
