.class public Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;
.super Ljava/lang/Object;
.source "ApplistUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/apmobilesecuritysdk/commonbiz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:[B

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->d:J

    iput-wide v2, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->e:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;-><init>()V

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/apmobilesecuritysdk/commonbiz/b$b;->b:[B

    return-void
.end method
