.class Lcom/miui/weather2/view/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/miui/weather2/view/ShareWaitCover;


# direct methods
.method constructor <init>(Lcom/miui/weather2/view/ShareWaitCover;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/ad;->a:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/view/ad;->a:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-static {v0}, Lcom/miui/weather2/view/ShareWaitCover;->a(Lcom/miui/weather2/view/ShareWaitCover;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020175

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/weather2/view/ad;->a:Lcom/miui/weather2/view/ShareWaitCover;

    invoke-static {v0}, Lcom/miui/weather2/view/ShareWaitCover;->a(Lcom/miui/weather2/view/ShareWaitCover;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
