.class final Lcom/miui/applicationlock/widget/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic adI:Lcom/miui/applicationlock/widget/a;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/a;->ahq(Lcom/miui/applicationlock/widget/a;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->aho(Lcom/miui/applicationlock/widget/a;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahl(Lcom/miui/applicationlock/widget/a;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->ahp(Lcom/miui/applicationlock/widget/a;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v0}, Lcom/miui/applicationlock/widget/a;->aho(Lcom/miui/applicationlock/widget/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f020303

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    iget-object v1, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    invoke-static {v1}, Lcom/miui/applicationlock/widget/a;->aho(Lcom/miui/applicationlock/widget/a;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/a;->ahr(Lcom/miui/applicationlock/widget/a;Z)Z

    iget-object v0, p0, Lcom/miui/applicationlock/widget/o;->adI:Lcom/miui/applicationlock/widget/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/applicationlock/widget/a;->ahq(Lcom/miui/applicationlock/widget/a;Z)Z

    return-void

    :cond_1
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v0, 0x7f020304

    goto :goto_1
.end method
