.class Lcom/facebook/ads/internal/w/b/t$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/w/b/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/w/b/t;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/w/b/t;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/w/b/t$1;->a:Lcom/facebook/ads/internal/w/b/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/w/b/t$1;->a:Lcom/facebook/ads/internal/w/b/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/w/b/t;->a(Lcom/facebook/ads/internal/w/b/t;Z)V

    return-void
.end method
