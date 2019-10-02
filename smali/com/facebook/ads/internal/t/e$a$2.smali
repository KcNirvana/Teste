.class Lcom/facebook/ads/internal/t/e$a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/t/e$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/e$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/e$a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$a$2;->a:Lcom/facebook/ads/internal/t/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a$2;->a:Lcom/facebook/ads/internal/t/e$a;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a$2;->a:Lcom/facebook/ads/internal/t/e$a;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e$a;->a:Lcom/facebook/ads/internal/t/e;

    iget-object p1, p1, Lcom/facebook/ads/internal/t/e;->a:Lcom/facebook/ads/internal/adapters/i;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e$a$2;->a:Lcom/facebook/ads/internal/t/e$a;

    invoke-static {p2}, Lcom/facebook/ads/internal/t/e$a;->a(Lcom/facebook/ads/internal/t/e$a;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/adapters/i;->b(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
