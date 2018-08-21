.class Lcom/alipay/android/app/hardwarepay/bracelet/c;
.super Ljava/lang/Object;
.source "BraceletPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/c;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
