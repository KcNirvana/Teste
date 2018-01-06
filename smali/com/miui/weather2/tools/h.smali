.class Lcom/miui/weather2/tools/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/tools/AdViewTrigger;


# direct methods
.method constructor <init>(Lcom/miui/weather2/tools/AdViewTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/tools/h;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/tools/h;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-virtual {v0}, Lcom/miui/weather2/tools/AdViewTrigger;->i()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/weather2/tools/h;->a:Lcom/miui/weather2/tools/AdViewTrigger;

    invoke-virtual {v1}, Lcom/miui/weather2/tools/AdViewTrigger;->j()Lcom/miui/weather2/structures/InfoDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/weather2/structures/InfoDataBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/weather2/tools/bi;->q(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
