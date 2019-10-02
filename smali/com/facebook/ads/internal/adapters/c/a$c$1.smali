.class Lcom/facebook/ads/internal/adapters/c/a$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/c/a$c;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/c/a$c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/c/a$c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c$1;->a:Lcom/facebook/ads/internal/adapters/c/a$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/c/a$c$1;->a:Lcom/facebook/ads/internal/adapters/c/a$c;

    iget-boolean v0, v0, Lcom/facebook/ads/internal/adapters/c/a$c;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/c/a$c$1;->a:Lcom/facebook/ads/internal/adapters/c/a$c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/c/a$c;->a(Lcom/facebook/ads/internal/adapters/c/a$c;Landroid/webkit/WebResourceError;)V

    :cond_0
    return-void
.end method
