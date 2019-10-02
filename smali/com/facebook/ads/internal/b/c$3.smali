.class Lcom/facebook/ads/internal/b/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/protocol/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/protocol/a;

.field final synthetic b:Lcom/facebook/ads/internal/b/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/protocol/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c$3;->b:Lcom/facebook/ads/internal/b/c;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/c$3;->a:Lcom/facebook/ads/internal/protocol/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c$3;->b:Lcom/facebook/ads/internal/b/c;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/c;->c:Lcom/facebook/ads/internal/adapters/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c$3;->a:Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method
