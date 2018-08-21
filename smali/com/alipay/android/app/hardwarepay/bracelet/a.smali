.class Lcom/alipay/android/app/hardwarepay/bracelet/a;
.super Ljava/lang/Object;
.source "BraceletPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;Lcom/alipay/android/app/hardwarepay/bracelet/f;Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    iput p5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:I

    iput p6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/16 v5, 0x64

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->b:Landroid/content/Context;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I

    sget v0, Lcom/alipay/android/app/hardwarepay/base/n;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x69

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x6a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v0

    const/16 v1, 0x7e

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v0, v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$002(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;I)I

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->a:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v2}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$100(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)Ljava/lang/Object;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->c:I

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v5}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v5

    iget v6, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->d:I

    iget v7, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->e:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->createInitReplyJson(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->toCallback(Lcom/alipay/android/app/hardwarepay/base/a;Ljava/lang/Object;ILjava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    const-string/jumbo v1, "phonecashiermsp#bracelet"

    const-string/jumbo v2, "BraceletPay.execute"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u94b1\u5305\u53d1\u8d77\u8bf7\u6c42\u624b\u73af\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/bracelet/a;->f:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    invoke-static {v4}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->access$000(Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
