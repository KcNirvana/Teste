.class Lcom/miui/weather2/ActivityAlertDetail$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/weather2/ActivityAlertDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/ActivityAlertDetail$a$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivityAlertDetail;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivityAlertDetail;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/miui/weather2/structures/Alert;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/weather2/ActivityAlertDetail$a;->a(I)Lcom/miui/weather2/structures/Alert;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v0}, Lcom/miui/weather2/ActivityAlertDetail;->a(Lcom/miui/weather2/ActivityAlertDetail;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/weather2/structures/Alert;

    if-nez p2, :cond_2

    new-instance v2, Lcom/miui/weather2/ActivityAlertDetail$a$a;

    invoke-direct {v2, p0, v4}, Lcom/miui/weather2/ActivityAlertDetail$a$a;-><init>(Lcom/miui/weather2/ActivityAlertDetail$a;Lcom/miui/weather2/a;)V

    iget-object v1, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v1}, Lcom/miui/weather2/ActivityAlertDetail;->b(Lcom/miui/weather2/ActivityAlertDetail;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030010

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0f0060

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/ActivityAlertDetail$a$a;->a:Landroid/widget/TextView;

    const v1, 0x7f0f0061

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/miui/weather2/ActivityAlertDetail$a$a;->b:Landroid/widget/ImageView;

    const v1, 0x7f0f0062

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/ActivityAlertDetail$a$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0f0063

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/weather2/ActivityAlertDetail$a$a;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;->a:Landroid/widget/TextView;

    sget-object v3, Lcom/miui/weather2/bf;->d:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    const v4, 0x7f09000a

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getType()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getLevel()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/miui/weather2/ActivityAlertDetail;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-virtual {v2}, Lcom/miui/weather2/ActivityAlertDetail;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/j;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/m;->a(Ljava/lang/String;)Lcom/bumptech/glide/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/j;

    :cond_0
    iget-object v2, v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-virtual {v0, v3}, Lcom/miui/weather2/structures/Alert;->getPubTimeNum(Landroid/content/Context;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/miui/weather2/ActivityAlertDetail$a;->a:Lcom/miui/weather2/ActivityAlertDetail;

    invoke-static {v4, v5, v3}, Lcom/miui/weather2/tools/bi;->a(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/weather2/structures/Alert;->getDetail()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/weather2/ActivityAlertDetail$a$a;

    goto :goto_0
.end method
