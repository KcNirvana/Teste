.class public Lcom/miui/weather2/tools/c;
.super Lcom/miui/weather2/tools/bs;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/miui/weather2/tools/bs;-><init>(Landroid/view/View;Lcom/miui/weather2/structures/InfoDataBean;)V

    iput-object p1, p0, Lcom/miui/weather2/tools/c;->a:Landroid/view/View;

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/miui/weather2/tools/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/tools/c;->e()V

    return-void
.end method

.method static synthetic b(Lcom/miui/weather2/tools/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/tools/c;->a:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "Wth2:AdDislikeViewTrigger"

    const-string v1, "closeAd()"

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/weather2/tools/c;->e:Landroid/view/View;

    new-instance v1, Lcom/miui/weather2/tools/e;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/e;-><init>(Lcom/miui/weather2/tools/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 5

    iget-object v0, p0, Lcom/miui/weather2/tools/c;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/miui/weather2/tools/d;

    invoke-direct {v1, p0}, Lcom/miui/weather2/tools/d;-><init>(Lcom/miui/weather2/tools/c;)V

    const-string v2, "weather2_adinstall"

    iget-object v3, p0, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v3}, Lcom/miui/weather2/structures/InfoDataBean;->getTagId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/weather2/tools/c;->f:Lcom/miui/weather2/structures/InfoDataBean;

    invoke-virtual {v4}, Lcom/miui/weather2/structures/InfoDataBean;->getEx()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/a/a;->a(Landroid/content/Context;Lcom/xiaomi/ad/feedback/IAdFeedbackListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/tools/c;->e()V

    :cond_0
    return-void
.end method
