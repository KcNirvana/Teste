.class public Lcom/alipay/apmobilesecuritysdk/e/f;
.super Ljava/lang/Object;
.source "DeviceInfoStorageModel.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->c:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->d:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->a:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->c:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->d:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/CommonUtils;->getNonNullString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/e/f;->e:Ljava/lang/String;

    return-void
.end method
