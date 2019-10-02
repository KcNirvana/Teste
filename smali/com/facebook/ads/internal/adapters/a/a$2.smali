.class Lcom/facebook/ads/internal/adapters/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/c/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/a/a;->a(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/ads/internal/t/e;

.field final synthetic c:Lcom/facebook/ads/internal/adapters/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/a/a;ILcom/facebook/ads/internal/t/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->c:Lcom/facebook/ads/internal/adapters/a/a;

    iput p2, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->a:I

    iput-object p3, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->b:Lcom/facebook/ads/internal/t/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->b:Lcom/facebook/ads/internal/t/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->c:Lcom/facebook/ads/internal/adapters/a/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/a/a;->b(Lcom/facebook/ads/internal/adapters/a/a;)Lcom/facebook/ads/internal/x/a$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/t/e;->a(Lcom/facebook/ads/internal/x/a$a;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/a/a$2;->b:Lcom/facebook/ads/internal/t/e;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/internal/t/e;->a(ZZ)V

    return-void
.end method
