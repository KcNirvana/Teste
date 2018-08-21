.class public Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;
.super Ljava/lang/Object;
.source "SimplePassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/safepaybase/widget/SimplePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->b:Z

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->c:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$0(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$1(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$2(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$3(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;I)V

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$2(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$4(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$4(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$5(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v2}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$6(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v3}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$7(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v4}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$8(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v5}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$9(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/EncryptRandomType;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alipay/android/app/safepaybase/b/b;->a(ILjava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/safepaybase/EncryptRandomType;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/safepaybase/b;->onUserConfirm(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->c:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {p1, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->b:Z

    add-int/lit8 v2, v0, 0x1

    const-string/jumbo v3, "0"

    invoke-interface {p1, v0, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    iget-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->b:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$5(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)Lcom/alipay/android/app/safepaybase/b/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->a:Lcom/alipay/android/app/safepaybase/widget/SimplePassword;

    invoke-static {v1}, Lcom/alipay/android/app/safepaybase/widget/SimplePassword;->access$6(Lcom/alipay/android/app/safepaybase/widget/SimplePassword;)I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/safepaybase/b/b;->a(ILjava/lang/String;III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/safepaybase/widget/SimplePassword$a;->b:Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/safepaybase/b/c;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
