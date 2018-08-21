.class public Lcom/alipay/android/app/birdnest/input/a/b;
.super Ljava/lang/Object;
.source "SimplePasswordTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private a:Z

.field private b:Lcom/alipay/android/app/birdnest/input/a;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/birdnest/input/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->b:Lcom/alipay/android/app/birdnest/input/a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->c:I

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/input/a/b;->b:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {p1}, Lcom/alipay/android/app/birdnest/input/a;->a()I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->c:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/birdnest/input/a/b;->a:Z

    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    iget-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->a:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->b:Lcom/alipay/android/app/birdnest/input/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/input/a;->h()Lcom/alipay/android/app/template/TemplatePasswordService;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/birdnest/input/a/b;->c:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplatePasswordService;->onTextChanged(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/birdnest/input/a/b;->a:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
