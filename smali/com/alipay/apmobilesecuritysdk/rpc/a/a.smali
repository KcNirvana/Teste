.class public Lcom/alipay/apmobilesecuritysdk/rpc/a/a;
.super Ljava/lang/Object;
.source "BaseResponseModel.java"


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/a;->a:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/rpc/a/a;->b:Ljava/lang/String;

    return-object v0
.end method
