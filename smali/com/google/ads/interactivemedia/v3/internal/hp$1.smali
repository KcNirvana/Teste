.class Lcom/google/ads/interactivemedia/v3/internal/hp$1;
.super Lcom/google/ads/interactivemedia/v3/internal/hp$b;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/hp;->a(Lcom/google/ads/interactivemedia/v3/internal/fz;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/hw;ZZ)Lcom/google/ads/interactivemedia/v3/internal/hp$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/reflect/Field;

.field final synthetic b:Z

.field final synthetic c:Lcom/google/ads/interactivemedia/v3/internal/gp;

.field final synthetic d:Lcom/google/ads/interactivemedia/v3/internal/fz;

.field final synthetic e:Lcom/google/ads/interactivemedia/v3/internal/hw;

.field final synthetic f:Z

.field final synthetic g:Lcom/google/ads/interactivemedia/v3/internal/hp;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/hp;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/ads/interactivemedia/v3/internal/gp;Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/hw;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->g:Lcom/google/ads/interactivemedia/v3/internal/hp;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->a:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->b:Z

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->c:Lcom/google/ads/interactivemedia/v3/internal/gp;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->d:Lcom/google/ads/interactivemedia/v3/internal/fz;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->e:Lcom/google/ads/interactivemedia/v3/internal/hw;

    iput-boolean p10, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->f:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/hp$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method a(Lcom/google/ads/interactivemedia/v3/internal/hx;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->c:Lcom/google/ads/interactivemedia/v3/internal/gp;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/gp;->read(Lcom/google/ads/interactivemedia/v3/internal/hx;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->f:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method a(Lcom/google/ads/interactivemedia/v3/internal/hz;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->c:Lcom/google/ads/interactivemedia/v3/internal/gp;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ht;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->d:Lcom/google/ads/interactivemedia/v3/internal/fz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->c:Lcom/google/ads/interactivemedia/v3/internal/gp;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->e:Lcom/google/ads/interactivemedia/v3/internal/hw;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/hw;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ht;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fz;Lcom/google/ads/interactivemedia/v3/internal/gp;Ljava/lang/reflect/Type;)V

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/gp;->write(Lcom/google/ads/interactivemedia/v3/internal/hz;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/hp$1;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
