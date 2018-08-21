.class Lcom/alipay/android/app/statistic/e/d;
.super Ljava/lang/Object;
.source "UserFeedBackUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/app/statistic/e/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/statistic/e/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/statistic/e/d;->b:Lcom/alipay/android/app/statistic/e/a;

    iput-object p2, p0, Lcom/alipay/android/app/statistic/e/d;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/statistic/e/d;->b:Lcom/alipay/android/app/statistic/e/a;

    invoke-virtual {v1}, Lcom/alipay/android/app/statistic/e/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/statistic/e/d;->a:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/app/plugin/b;->userFeedBack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
