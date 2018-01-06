.class public Lcom/miui/weather2/tools/m;
.super Lcom/miui/weather2/tools/bq;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;IZI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/bq;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    iget-object v0, p0, Lcom/miui/weather2/tools/m;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/tools/m;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/weather2/tools/m;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "6"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;Ljava/lang/String;Ljava/lang/String;IZI)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/miui/weather2/tools/bq;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;IZI)V

    iput-object p4, p0, Lcom/miui/weather2/tools/m;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/weather2/tools/m;->k:Ljava/lang/String;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "6"

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f00e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    iget-object v0, p0, Lcom/miui/weather2/tools/m;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/m;->c:Lcom/miui/weather2/structures/InfoDataBean;

    iget v2, p0, Lcom/miui/weather2/tools/m;->f:I

    iget-boolean v3, p0, Lcom/miui/weather2/tools/m;->g:Z

    iget v4, p0, Lcom/miui/weather2/tools/m;->h:I

    iget-object v5, p0, Lcom/miui/weather2/tools/m;->j:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/weather2/tools/m;->k:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Lcom/miui/weather2/structures/InfoDataBean;IZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
