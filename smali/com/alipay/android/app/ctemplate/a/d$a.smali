.class public Lcom/alipay/android/app/ctemplate/a/d$a;
.super Ljava/lang/Object;
.source "TemplateStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ctemplate/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:I


# direct methods
.method private constructor <init>(Lcom/alipay/android/app/ctemplate/model/Template;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "template is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    const-string/jumbo v1, "HTML"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->g:I

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->format:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->publishVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->time:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->tplVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->e:Ljava/lang/String;

    return-void

    :cond_1
    iget-object v0, p1, Lcom/alipay/android/app/ctemplate/model/Template;->data:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Lcom/alipay/android/app/ctemplate/model/Template;)Lcom/alipay/android/app/ctemplate/a/d$a;
    .locals 1

    new-instance v0, Lcom/alipay/android/app/ctemplate/a/d$a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ctemplate/a/d$a;-><init>(Lcom/alipay/android/app/ctemplate/model/Template;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/a/d$a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method
