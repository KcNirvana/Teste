.class Lcom/facebook/ads/internal/t/e$a$1;
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

    iput-object p1, p0, Lcom/facebook/ads/internal/t/e$a$1;->a:Lcom/facebook/ads/internal/t/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/t/e$a$1;->a:Lcom/facebook/ads/internal/t/e$a;

    invoke-static {p1}, Lcom/facebook/ads/internal/t/e$a;->a(Lcom/facebook/ads/internal/t/e$a;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "is_two_step"

    const-string v0, "true"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/facebook/ads/internal/t/e$a$1;->a:Lcom/facebook/ads/internal/t/e$a;

    invoke-static {p2, p1}, Lcom/facebook/ads/internal/t/e$a;->a(Lcom/facebook/ads/internal/t/e$a;Ljava/util/Map;)V

    return-void
.end method
