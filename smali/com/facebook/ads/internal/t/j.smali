.class public Lcom/facebook/ads/internal/t/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->b:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->c:I

    const v0, -0xb1a99b

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->d:I

    iput v1, p0, Lcom/facebook/ads/internal/t/j;->e:I

    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->f:I

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->g:I

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->h:Z

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplayOnMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->i:Z

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->b:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->c:I

    const v0, -0xb1a99b

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->d:I

    iput v1, p0, Lcom/facebook/ads/internal/t/j;->e:I

    const v0, -0xbd8719

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->f:I

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->g:I

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplay()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->h:Z

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplayOnMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->i:Z

    const-string v0, "background_transparent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "background_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/facebook/ads/internal/t/j;->b:I

    const-string v0, "title_text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->c:I

    const-string v0, "description_text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->d:I

    const-string v0, "button_transparent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "button_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/internal/t/j;->e:I

    const-string v0, "button_border_transparent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    const-string v0, "button_border_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/facebook/ads/internal/t/j;->g:I

    const-string v0, "button_text_color"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/internal/t/j;->f:I

    const-string v0, "android_typeface"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    return-void
.end method

.method public a(Landroid/widget/TextView;)V
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->c:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/j;->i:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->c:I

    return-void
.end method

.method public b(Landroid/widget/TextView;)V
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->d:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/t/j;->h:Z

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->d:I

    return-void
.end method

.method public c(Landroid/widget/TextView;)V
    .locals 2

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->e:I

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/w/b/x;->a(Landroid/view/View;I)V

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->f:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x2

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/j;->a:Landroid/graphics/Typeface;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->d:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->e:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->e:I

    return v0
.end method

.method public e(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->f:I

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->f:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/facebook/ads/internal/t/j;->g:I

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/t/j;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public i()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->h:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/facebook/ads/internal/t/j;->i:Z

    return v0
.end method
