.class public Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;
.super Ljava/lang/Object;
.source "CustomToast.java"


# static fields
.field public static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancalToast()V
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public static showTextToastCenter(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static showToast(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v3, 0x11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->showToast(Landroid/app/Activity;ILjava/lang/String;III)V

    return-void
.end method

.method public static showToast(Landroid/app/Activity;ILjava/lang/String;III)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const-string/jumbo v1, "mini_ui_custom_toast"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v0, "mini_toast_icon"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string/jumbo v0, "mini_toast_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    const/4 v0, 0x1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v2, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v0}, Landroid/widget/Toast;->setDuration(I)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/widget/CustomToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
