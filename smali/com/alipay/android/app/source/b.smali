.class public Lcom/alipay/android/app/source/b;
.super Ljava/lang/Object;
.source "SourceMessageObserver.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/e;


# instance fields
.field private a:I

.field private b:Lcom/alipay/android/app/source/c;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/source/b;->a:I

    iput p1, p0, Lcom/alipay/android/app/source/b;->a:I

    invoke-static {}, Lcom/alipay/android/app/source/c;->a()Lcom/alipay/android/app/source/c;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/source/b;->b:Lcom/alipay/android/app/source/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/source/b;->a:I

    return v0
.end method

.method public a(Lcom/alipay/android/app/b/a/f;Lcom/alipay/android/app/b/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/source/b;->b:Lcom/alipay/android/app/source/c;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/source/c;->a(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method
