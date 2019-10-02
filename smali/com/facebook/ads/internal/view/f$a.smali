.class public Lcom/facebook/ads/internal/view/f$a;
.super Lcom/facebook/ads/internal/o/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/facebook/ads/internal/adapters/b/q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/adapters/b/q;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/ads/internal/o/d;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f$a;->a:Lcom/facebook/ads/internal/adapters/b/q;

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/adapters/b/q;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$a;->a:Lcom/facebook/ads/internal/adapters/b/q;

    return-object v0
.end method
