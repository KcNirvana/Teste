.class public Lcom/alipay/android/app/birdnest/input/a/a;
.super Ljava/lang/Object;
.source "NormalPasswordTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/android/app/birdnest/input/a;

.field private c:Landroid/widget/EditText;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->a:Z

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->b:Lcom/alipay/android/app/birdnest/input/a;

    iput-object v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->d:I

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->b:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {p1}, Lcom/alipay/android/app/birdnest/input/a;->c()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/alipay/android/app/birdnest/input/a;->a()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->d:I

    return-void
.end method

.method private a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-string/jumbo v1, ""

    move v2, v0

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v5

    const/16 v6, 0xf7

    if-eq v4, v6, :cond_0

    const v6, 0xffe5

    if-eq v4, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_COMPATIBILITY_IDEOGRAPHS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->CJK_SYMBOLS_AND_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->HALFWIDTH_AND_FULLWIDTH_FORMS:Ljava/lang/Character$UnicodeBlock;

    if-eq v5, v6, :cond_0

    sget-object v6, Ljava/lang/Character$UnicodeBlock;->GENERAL_PUNCTUATION:Ljava/lang/Character$UnicodeBlock;

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    :cond_3
    return-object v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->b:Lcom/alipay/android/app/birdnest/input/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/android/app/birdnest/input/a/a;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a/a;->a:Z

    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "*"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/alipay/android/app/birdnest/input/a/a;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->c:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->b:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/input/a;->h()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->d:I

    invoke-interface {v0, v1}, Lcom/alipay/android/app/template/TemplatePasswordService;->clear(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->a:Z

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->b:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/input/a;->h()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a/a;->d:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplatePasswordService;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/a;->a:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
