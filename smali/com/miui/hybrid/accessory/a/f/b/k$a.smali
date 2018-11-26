.class public Lcom/miui/hybrid/accessory/a/f/b/k$a;
.super Lcom/miui/hybrid/accessory/a/f/b/a$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/a$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/hybrid/accessory/a/f/b/a$a;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public bDr(Lcom/miui/hybrid/accessory/a/f/c/b;)Lcom/miui/hybrid/accessory/a/f/b/c;
    .locals 3

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/j;

    iget-boolean v1, p0, Lcom/miui/hybrid/accessory/a/f/b/k$a;->a:Z

    iget-boolean v2, p0, Lcom/miui/hybrid/accessory/a/f/b/k$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/miui/hybrid/accessory/a/f/b/j;-><init>(Lcom/miui/hybrid/accessory/a/f/c/b;ZZ)V

    iget v1, p0, Lcom/miui/hybrid/accessory/a/f/b/k$a;->c:I

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/miui/hybrid/accessory/a/f/b/k$a;->c:I

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/a;->bDs(I)V

    goto :goto_0
.end method
