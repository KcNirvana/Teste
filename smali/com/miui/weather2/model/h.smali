.class Lcom/miui/weather2/model/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/miui/weather2/model/g;


# direct methods
.method constructor <init>(Lcom/miui/weather2/model/g;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/model/h;->b:Lcom/miui/weather2/model/g;

    iput p2, p0, Lcom/miui/weather2/model/h;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/model/h;->b:Lcom/miui/weather2/model/g;

    invoke-static {v0}, Lcom/miui/weather2/model/g;->a(Lcom/miui/weather2/model/g;)Lcom/miui/weather2/view/WeatherDynamicListView;

    move-result-object v0

    iget v1, p0, Lcom/miui/weather2/model/h;->a:I

    invoke-virtual {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->startDragging(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
