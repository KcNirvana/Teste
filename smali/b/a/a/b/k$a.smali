.class public Lb/a/a/b/k$a;
.super Lb/a/a/b/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lb/a/a/b/a$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lb/a/a/b/a$a;-><init>(ZZI)V

    return-void
.end method


# virtual methods
.method public a(Lb/a/a/c/d;)Lb/a/a/b/e;
    .locals 3

    new-instance v0, Lb/a/a/b/k;

    iget-boolean v1, p0, Lb/a/a/b/k$a;->a:Z

    iget-boolean v2, p0, Lb/a/a/b/k$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lb/a/a/b/k;-><init>(Lb/a/a/c/d;ZZ)V

    iget v1, p0, Lb/a/a/b/k$a;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lb/a/a/b/k$a;->c:I

    invoke-virtual {v0, v1}, Lb/a/a/b/a;->c(I)V

    :cond_0
    return-object v0
.end method
