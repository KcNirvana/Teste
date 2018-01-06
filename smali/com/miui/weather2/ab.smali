.class Lcom/miui/weather2/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/ActivitySetCity;


# direct methods
.method constructor <init>(Lcom/miui/weather2/ActivitySetCity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/ab;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/ab;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->c(Lcom/miui/weather2/ActivitySetCity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ab;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->c(Lcom/miui/weather2/ActivitySetCity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/ab;->a:Lcom/miui/weather2/ActivitySetCity;

    const v1, 0x7f090046

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/ab;->a:Lcom/miui/weather2/ActivitySetCity;

    invoke-static {v0}, Lcom/miui/weather2/ActivitySetCity;->d(Lcom/miui/weather2/ActivitySetCity;)V

    goto :goto_0
.end method
