.class Lcom/miui/weather2/view/WeatherScrollView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/weather2/model/ag$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/view/WeatherScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/WeatherScrollView;


# direct methods
.method private constructor <init>(Lcom/miui/weather2/view/WeatherScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/weather2/view/WeatherScrollView;Lcom/miui/weather2/view/at;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherScrollView$a;-><init>(Lcom/miui/weather2/view/WeatherScrollView;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/weather2/structures/InfoBean;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getStatus()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    iget-object v0, v0, Lcom/miui/weather2/view/WeatherScrollView;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0, p2}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/view/WeatherScrollView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0, p3}, Lcom/miui/weather2/view/WeatherScrollView;->b(Lcom/miui/weather2/view/WeatherScrollView;Z)Z

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-static {v0}, Lcom/miui/weather2/view/WeatherScrollView;->b(Lcom/miui/weather2/view/WeatherScrollView;)V

    invoke-virtual {p1}, Lcom/miui/weather2/structures/InfoBean;->getCards()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/InfoCardBean;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherScrollView$a;->a:Lcom/miui/weather2/view/WeatherScrollView;

    invoke-virtual {v2, v0}, Lcom/miui/weather2/view/WeatherScrollView;->a(Lcom/miui/weather2/structures/InfoCardBean;)V

    goto :goto_0

    :cond_0
    return-void
.end method
