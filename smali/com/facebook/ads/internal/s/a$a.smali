.class public Lcom/facebook/ads/internal/s/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/s/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:D

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/facebook/ads/internal/s/f;

.field private f:Lcom/facebook/ads/internal/s/g;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-wide p1, p0, Lcom/facebook/ads/internal/s/a$a;->b:D

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/s/f;)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/s/a$a;->e:Lcom/facebook/ads/internal/s/f;

    return-object p0
.end method

.method public a(Lcom/facebook/ads/internal/s/g;)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/s/a$a;->f:Lcom/facebook/ads/internal/s/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/s/a$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/facebook/ads/internal/s/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ads/internal/s/a$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/s/a$a;->d:Ljava/util/Map;

    return-object p0
.end method

.method public a(Z)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/s/a$a;->g:Z

    return-object p0
.end method

.method public a()Lcom/facebook/ads/internal/s/a;
    .locals 10

    new-instance v9, Lcom/facebook/ads/internal/s/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/s/a$a;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/facebook/ads/internal/s/a$a;->b:D

    iget-object v4, p0, Lcom/facebook/ads/internal/s/a$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/ads/internal/s/a$a;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/facebook/ads/internal/s/a$a;->e:Lcom/facebook/ads/internal/s/f;

    iget-object v7, p0, Lcom/facebook/ads/internal/s/a$a;->f:Lcom/facebook/ads/internal/s/g;

    iget-boolean v8, p0, Lcom/facebook/ads/internal/s/a$a;->g:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/internal/s/a;-><init>(Ljava/lang/String;DLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/s/f;Lcom/facebook/ads/internal/s/g;Z)V

    return-object v9
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/ads/internal/s/a$a;
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/s/a$a;->c:Ljava/lang/String;

    return-object p0
.end method
