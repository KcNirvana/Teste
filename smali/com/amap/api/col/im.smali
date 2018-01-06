.class Lcom/amap/api/col/im;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/im$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/col/im;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/im$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/im;

    invoke-direct {v0}, Lcom/amap/api/col/im;-><init>()V

    sput-object v0, Lcom/amap/api/col/im;->a:Lcom/amap/api/col/im;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/im;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a()Lcom/amap/api/col/im;
    .locals 1

    sget-object v0, Lcom/amap/api/col/im;->a:Lcom/amap/api/col/im;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/api/col/im$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/im;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/im;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/im$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/im$a;->K()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/col/im$a;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/im;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
