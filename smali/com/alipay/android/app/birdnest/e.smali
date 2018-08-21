.class Lcom/alipay/android/app/birdnest/e;
.super Ljava/lang/Object;
.source "FlybirdRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/FBFocusable;

.field final synthetic b:Lcom/alipay/android/app/birdnest/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/birdnest/a;Lcom/alipay/android/app/template/FBFocusable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/birdnest/e;->b:Lcom/alipay/android/app/birdnest/a;

    iput-object p2, p0, Lcom/alipay/android/app/birdnest/e;->a:Lcom/alipay/android/app/template/FBFocusable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/e;->a:Lcom/alipay/android/app/template/FBFocusable;

    invoke-interface {v0}, Lcom/alipay/android/app/template/FBFocusable;->requestFocus()V

    return-void
.end method
