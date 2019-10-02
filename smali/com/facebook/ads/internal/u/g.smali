.class public Lcom/facebook/ads/internal/u/g;
.super Lcom/facebook/ads/internal/u/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/m/c;)V
    .locals 6

    sget-object v1, Lcom/facebook/ads/internal/u/e$a;->b:Lcom/facebook/ads/internal/u/e$a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/internal/u/e;-><init>(Lcom/facebook/ads/internal/u/e$a;Lcom/facebook/ads/internal/m/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput p2, p0, Lcom/facebook/ads/internal/u/g;->b:I

    iput-object p1, p0, Lcom/facebook/ads/internal/u/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/facebook/ads/internal/m/c;
    .locals 1

    invoke-super {p0}, Lcom/facebook/ads/internal/u/e;->a()Lcom/facebook/ads/internal/m/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/u/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/u/g;->b:I

    return v0
.end method
