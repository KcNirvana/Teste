.class public Lcom/alipay/android/app/b/a/a;
.super Ljava/lang/Object;
.source "DefaultMsgObserver.java"

# interfaces
.implements Lcom/alipay/android/app/b/a/e;


# instance fields
.field private a:Lcom/alipay/android/app/b/a/g;

.field private b:I


# direct methods
.method public constructor <init>(ILcom/alipay/android/app/b/a/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/android/app/b/a/a;->a:Lcom/alipay/android/app/b/a/g;

    iput p1, p0, Lcom/alipay/android/app/b/a/a;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/alipay/android/app/b/a/a;->b:I

    return v0
.end method

.method public a(Lcom/alipay/android/app/b/a/f;Lcom/alipay/android/app/b/a/j;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/b/a/a;->a:Lcom/alipay/android/app/b/a/g;

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/b/a/g;->a(Lcom/alipay/android/app/b/a/j;)V

    return-void
.end method
