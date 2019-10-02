.class public Lcom/facebook/ads/NativeAdViewAttributes;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/facebook/ads/internal/t/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/t/j;

    invoke-direct {v0}, Lcom/facebook/ads/internal/t/j;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    return-void
.end method

.method constructor <init>(Lcom/facebook/ads/internal/t/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/facebook/ads/internal/t/j;

    invoke-direct {v0, p1}, Lcom/facebook/ads/internal/t/j;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lcom/facebook/ads/internal/t/j;

    invoke-direct {v0}, Lcom/facebook/ads/internal/t/j;-><init>()V

    const-string v1, "Error retrieving native ui configuration data"

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/o/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/o/a;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/o/b;->a(Lcom/facebook/ads/internal/o/a;)V

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    return-void
.end method


# virtual methods
.method a()Lcom/facebook/ads/internal/t/j;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->j()Z

    move-result v0

    return v0
.end method

.method public getAutoplayOnMobile()Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->k()Z

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->b()I

    move-result v0

    return v0
.end method

.method public getButtonBorderColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->g()I

    move-result v0

    return v0
.end method

.method public getButtonColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->e()I

    move-result v0

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->f()I

    move-result v0

    return v0
.end method

.method public getDescriptionTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->d()I

    move-result v0

    return v0
.end method

.method public getDescriptionTextSize()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->i()I

    move-result v0

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->c()I

    move-result v0

    return v0
.end method

.method public getTitleTextSize()I
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->h()I

    move-result v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/t/j;->a()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public setAutoplay(Z)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->b(Z)V

    return-object p0
.end method

.method public setAutoplayOnMobile(Z)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->a(Z)V

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->a(I)V

    return-object p0
.end method

.method public setButtonBorderColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->f(I)V

    return-object p0
.end method

.method public setButtonColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->d(I)V

    return-object p0
.end method

.method public setButtonTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->e(I)V

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->c(I)V

    return-object p0
.end method

.method public setTitleTextColor(I)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->b(I)V

    return-object p0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Lcom/facebook/ads/NativeAdViewAttributes;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/NativeAdViewAttributes;->a:Lcom/facebook/ads/internal/t/j;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/t/j;->a(Landroid/graphics/Typeface;)V

    return-object p0
.end method
