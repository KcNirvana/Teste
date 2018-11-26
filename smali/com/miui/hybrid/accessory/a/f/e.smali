.class public Lcom/miui/hybrid/accessory/a/f/e;
.super Ljava/lang/Object;


# direct methods
.method public static bDB(Lcom/miui/hybrid/accessory/a/f/a;[B)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b;

    new-instance v1, Lcom/miui/hybrid/accessory/a/f/b/k$a;

    array-length v2, p1

    invoke-direct {v1, v3, v3, v2}, Lcom/miui/hybrid/accessory/a/f/b/k$a;-><init>(ZZI)V

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b;-><init>(Lcom/miui/hybrid/accessory/a/f/b/g;)V

    invoke-virtual {v0, p0, p1}, Lcom/miui/hybrid/accessory/a/f/b;->bDA(Lcom/miui/hybrid/accessory/a/f/a;[B)V

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/d;

    const-string/jumbo v1, "the message byte is empty."

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
