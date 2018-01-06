.class Lcom/miui/weather2/view/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/AqiQualitySecondPart;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/AqiQualitySecondPart;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/e;->a:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/e;->a:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/e;->a:Lcom/miui/weather2/view/AqiQualitySecondPart;

    invoke-static {v0}, Lcom/miui/weather2/view/AqiQualitySecondPart;->f(Lcom/miui/weather2/view/AqiQualitySecondPart;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
