.class Lcom/facebook/ads/internal/adapters/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/h/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/f;->a(Landroid/content/Context;Lcom/facebook/ads/a/a;Lorg/json/JSONObject;Lcom/facebook/ads/internal/s/c;Landroid/os/Bundle;Ljava/util/EnumSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/f$6;->a:Lcom/facebook/ads/internal/adapters/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/f$6;->a:Lcom/facebook/ads/internal/adapters/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/f;->b:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/f$6;->a:Lcom/facebook/ads/internal/adapters/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/f;->b(Lcom/facebook/ads/internal/adapters/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/f$6;->a:Lcom/facebook/ads/internal/adapters/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/f;->b:Lcom/facebook/ads/internal/view/i/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/f$6;->a:Lcom/facebook/ads/internal/adapters/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/f;->b(Lcom/facebook/ads/internal/adapters/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->setVideoURI(Ljava/lang/String;)V

    return-void
.end method
