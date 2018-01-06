.class Lcom/miui/weather2/model/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/model/SecondaryPageListItem;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/SecondaryPageListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    iget-object v0, v0, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->b(Lcom/miui/weather2/model/SecondaryPageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    iget-object v1, v1, Lcom/miui/weather2/model/SecondaryPageListItem;->m:Ljava/lang/String;

    const-string v2, "Info"

    iget-object v3, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v3}, Lcom/miui/weather2/model/SecondaryPageListItem;->c(Lcom/miui/weather2/model/SecondaryPageListItem;)I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v4}, Lcom/miui/weather2/model/SecondaryPageListItem;->d(Lcom/miui/weather2/model/SecondaryPageListItem;)Z

    move-result v4

    iget-object v5, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v5}, Lcom/miui/weather2/model/SecondaryPageListItem;->e(Lcom/miui/weather2/model/SecondaryPageListItem;)I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/miui/weather2/tools/bi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->b(Lcom/miui/weather2/model/SecondaryPageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    iget-object v1, v1, Lcom/miui/weather2/model/SecondaryPageListItem;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    invoke-static {v0}, Lcom/miui/weather2/model/SecondaryPageListItem;->b(Lcom/miui/weather2/model/SecondaryPageListItem;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    iget-object v1, v1, Lcom/miui/weather2/model/SecondaryPageListItem;->p:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->q(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/model/ab;->a:Lcom/miui/weather2/model/SecondaryPageListItem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/weather2/model/SecondaryPageListItem;->a(Lcom/miui/weather2/model/SecondaryPageListItem;Z)V

    goto :goto_0
.end method
