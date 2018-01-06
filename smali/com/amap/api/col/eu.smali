.class Lcom/amap/api/col/eu;
.super Lcom/amap/api/col/ft;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/col/em;


# direct methods
.method constructor <init>(Lcom/amap/api/col/em;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/ft;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/eu;->a:Lcom/amap/api/col/em;

    return-void
.end method


# virtual methods
.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/eu;->a:Lcom/amap/api/col/em;

    invoke-virtual {v0}, Lcom/amap/api/col/em;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
