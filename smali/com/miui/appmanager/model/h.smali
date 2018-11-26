.class public Lcom/miui/appmanager/model/h;
.super Lcom/miui/appmanager/model/f;
.source ""


# instance fields
.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/appmanager/model/f;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a00fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/appmanager/model/h;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/appmanager/model/h;->textView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method


# virtual methods
.method public bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/appmanager/model/f;->bgT(Landroid/view/View;Lcom/miui/appmanager/model/k;I)V

    check-cast p2, Lcom/miui/appmanager/model/g;

    iget-object v0, p0, Lcom/miui/appmanager/model/h;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/h;->textView:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/miui/appmanager/model/g;->bhc(Lcom/miui/appmanager/model/g;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
