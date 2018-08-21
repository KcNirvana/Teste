.class Lcom/alipay/android/app/statistic/e/c;
.super Ljava/lang/Object;
.source "UserFeedBackUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/statistic/e/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/statistic/e/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/e/c;->a:Lcom/alipay/android/app/statistic/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
