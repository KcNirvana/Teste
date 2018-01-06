.class Lcom/amap/api/col/ao;
.super Lcom/amap/api/col/bo;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/amap/api/col/u;

.field final synthetic b:Lcom/amap/api/col/am$a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/am$a;Lcom/amap/api/col/u;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ao;->b:Lcom/amap/api/col/am$a;

    iput-object p2, p0, Lcom/amap/api/col/ao;->a:Lcom/amap/api/col/u;

    invoke-direct {p0}, Lcom/amap/api/col/bo;-><init>()V

    return-void
.end method


# virtual methods
.method public a(III)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ao;->a:Lcom/amap/api/col/u;

    iput-boolean v5, v0, Lcom/amap/api/col/u;->h:Z

    invoke-static {}, Lcom/amap/api/col/aj;->a()Lcom/amap/api/col/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/aj;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/amap/api/col/ao;->b:Lcom/amap/api/col/am$a;

    iget-object v3, v3, Lcom/amap/api/col/am$a;->d:Ljava/lang/String;

    aput-object v3, v2, v7

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ao;->a:Lcom/amap/api/col/u;

    iput-boolean v4, v0, Lcom/amap/api/col/u;->h:Z

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    sget-object v1, Lcom/amap/api/col/it;->i:Ljava/lang/String;

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
