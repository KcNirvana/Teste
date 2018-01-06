.class Lcom/miui/weather2/view/onOnePage/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v1, v1, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    iget-object v0, v0, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/onOnePage/at;->a:Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;

    invoke-static {v0}, Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;->e(Lcom/miui/weather2/view/onOnePage/MultiMediaBackground;)Landroid/widget/VideoView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    return-void
.end method
