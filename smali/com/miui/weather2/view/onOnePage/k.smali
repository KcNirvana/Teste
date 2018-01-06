.class Lcom/miui/weather2/view/onOnePage/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/k;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iput-object p2, p0, Lcom/miui/weather2/view/onOnePage/k;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/k;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/k;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/weather2/view/onOnePage/k;->b:Lcom/miui/weather2/view/onOnePage/CurrentConditions;

    invoke-static {v2}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->c(Lcom/miui/weather2/view/onOnePage/CurrentConditions;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/weather2/view/onOnePage/CurrentConditions;->a(Lcom/miui/weather2/view/onOnePage/CurrentConditions;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
