.class public Lcom/facebook/ads/internal/u/f;
.super Lcom/facebook/ads/internal/u/e;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v1, Lcom/facebook/ads/internal/u/e$a;->c:Lcom/facebook/ads/internal/u/e$a;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/u/e;-><init>(Lcom/facebook/ads/internal/u/e$a;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/ads/internal/m/c;
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/u/e;->a()Lcom/facebook/ads/internal/m/c;

    move-result-object v0

    return-object v0
.end method
