.class public Lcom/facebook/ads/internal/adapters/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7eca759d791ce105L


# instance fields
.field private final a:Lcom/facebook/ads/internal/adapters/b/h;

.field private final b:Lcom/facebook/ads/internal/adapters/b/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/b/h;Lcom/facebook/ads/internal/adapters/b/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/b/b;->a:Lcom/facebook/ads/internal/adapters/b/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/b/b;->b:Lcom/facebook/ads/internal/adapters/b/h;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/adapters/b/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/b;->a:Lcom/facebook/ads/internal/adapters/b/h;

    return-object v0
.end method

.method public b()Lcom/facebook/ads/internal/adapters/b/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/b/b;->b:Lcom/facebook/ads/internal/adapters/b/h;

    return-object v0
.end method
