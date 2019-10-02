.class Lcom/facebook/ads/internal/view/f/b$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f/b;


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f/b$d;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/f/b;Lcom/facebook/ads/internal/view/f/b$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/f/b$d;-><init>(Lcom/facebook/ads/internal/view/f/b;)V

    return-void
.end method


# virtual methods
.method public onCTAClick()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$d;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->g(Lcom/facebook/ads/internal/view/f/b;)V

    return-void
.end method
