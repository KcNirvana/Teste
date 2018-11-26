.class final Lcom/miui/powercenter/deepsave/datamodel/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aNa:Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/datamodel/l;->aNa:Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/datamodel/l;->aNa:Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZl(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;Landroid/content/Context;)V

    const-string/jumbo v0, "save_idea"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bds(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    iget-object v1, v0, Lcom/miui/powercenter/deepsave/IdeaModel;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/datamodel/l;->aNa:Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;->aZk(Lcom/miui/powercenter/deepsave/datamodel/BatterySaveIdeaModel;Lcom/miui/powercenter/deepsave/IdeaModel;Landroid/content/Context;)V

    :cond_1
    const-string/jumbo v0, "save_idea"

    invoke-static {v0}, Lcom/miui/powercenter/b/b;->bds(Ljava/lang/String;)V

    goto :goto_0
.end method
