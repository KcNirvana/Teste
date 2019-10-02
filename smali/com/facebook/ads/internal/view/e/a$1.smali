.class Lcom/facebook/ads/internal/view/e/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/a;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/w/b/w;Ljava/lang/String;Ljava/lang/String;ILcom/facebook/ads/internal/view/i/a;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/s/c;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/ads/internal/view/e/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/a;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a$1;->a:Lcom/facebook/ads/internal/s/c;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/e/a$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/e/a;->a(Lcom/facebook/ads/internal/view/e/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a;->b(Lcom/facebook/ads/internal/view/e/a;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->getEventBus()Lcom/facebook/ads/internal/o/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/view/i/b/b;

    invoke-direct {v1, p1}, Lcom/facebook/ads/internal/view/i/b/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/o/e;->a(Lcom/facebook/ads/internal/o/d;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "touch"

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/a;->c(Lcom/facebook/ads/internal/view/e/a;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/w/b/w;->e()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/w/b/k;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/e/a;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a$1;->a:Lcom/facebook/ads/internal/s/c;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/a$1;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1, v0}, Lcom/facebook/ads/internal/a/c;->a(Landroid/content/Context;Lcom/facebook/ads/internal/s/c;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Lcom/facebook/ads/internal/a/b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/a/b;->a()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-class v0, Lcom/facebook/ads/internal/view/e/a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error executing action"

    goto :goto_0

    :catch_1
    move-exception p1

    const-class v0, Lcom/facebook/ads/internal/view/e/a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while opening "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/a$1;->c:Lcom/facebook/ads/internal/view/e/a;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/a;->a(Lcom/facebook/ads/internal/view/e/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    return-void
.end method
