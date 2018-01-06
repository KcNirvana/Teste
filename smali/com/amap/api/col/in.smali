.class public Lcom/amap/api/col/in;
.super Lcom/amap/api/a/k;
.source "SourceFile"


# instance fields
.field private m:F

.field private n:F

.field private o:Lcom/amap/api/col/n;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/a/k;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/in;
    .locals 1

    new-instance v0, Lcom/amap/api/col/in;

    invoke-direct {v0}, Lcom/amap/api/col/in;-><init>()V

    return-object v0
.end method

.method public static a(F)Lcom/amap/api/col/in;
    .locals 2

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->f:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    iput p0, v0, Lcom/amap/api/col/in;->d:F

    return-object v0
.end method

.method static a(Lcom/amap/api/col/n;FFF)Lcom/amap/api/col/in;
    .locals 2

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->l:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    iput-object p0, v0, Lcom/amap/api/col/in;->o:Lcom/amap/api/col/n;

    iput p1, v0, Lcom/amap/api/col/in;->d:F

    iput p2, v0, Lcom/amap/api/col/in;->n:F

    iput p3, v0, Lcom/amap/api/col/in;->m:F

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/col/in;
    .locals 2

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->i:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    iput-object p0, v0, Lcom/amap/api/col/in;->f:Lcom/amap/api/maps2d/a/c;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/col/in;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->c:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    new-instance v1, Lcom/amap/api/maps2d/a/c;

    invoke-direct {v1, p0, v2, v2, v2}, Lcom/amap/api/maps2d/a/c;-><init>(Lcom/amap/api/maps2d/a/h;FFF)V

    iput-object v1, v0, Lcom/amap/api/col/in;->f:Lcom/amap/api/maps2d/a/c;

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/a/h;F)Lcom/amap/api/col/in;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps2d/a/c;->a()Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a/c$a;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/c$a;->a(F)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/c$a;->a()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/col/in;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/amap/api/maps2d/a/h;FFF)Lcom/amap/api/col/in;
    .locals 1

    invoke-static {}, Lcom/amap/api/maps2d/a/c;->a()Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps2d/a/c$a;->a(Lcom/amap/api/maps2d/a/h;)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/maps2d/a/c$a;->a(F)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amap/api/maps2d/a/c$a;->c(F)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/maps2d/a/c$a;->b(F)Lcom/amap/api/maps2d/a/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/c$a;->a()Lcom/amap/api/maps2d/a/c;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/in;->a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/col/in;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lcom/amap/api/col/in;
    .locals 2

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->b:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    return-object v0
.end method

.method public static c()Lcom/amap/api/col/in;
    .locals 2

    invoke-static {}, Lcom/amap/api/col/in;->a()Lcom/amap/api/col/in;

    move-result-object v0

    sget-object v1, Lcom/amap/api/a/k$a;->e:Lcom/amap/api/a/k$a;

    iput-object v1, v0, Lcom/amap/api/col/in;->a:Lcom/amap/api/a/k$a;

    return-object v0
.end method
