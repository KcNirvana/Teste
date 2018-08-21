.class Lcom/alipay/android/app/birdnest/d;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"

# interfaces
.implements Lcom/alipay/android/app/template/TemplatePasswordService;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/birdnest/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/d;->a:Lcom/alipay/android/app/birdnest/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/d;->a:Lcom/alipay/android/app/birdnest/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a;->a(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/a/a/a;->b(I)V

    return-void
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/d;->a:Lcom/alipay/android/app/birdnest/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a;->a(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/a/a/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(ILjava/lang/String;III)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/d;->a:Lcom/alipay/android/app/birdnest/a;

    invoke-static {v0}, Lcom/alipay/android/app/birdnest/a;->a(Lcom/alipay/android/app/birdnest/a;)Lcom/alipay/android/app/ui/a/a/a;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/app/ui/a/a/a;->a(ILjava/lang/String;III)V

    return-void
.end method
