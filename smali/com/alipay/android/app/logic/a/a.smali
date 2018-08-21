.class public abstract Lcom/alipay/android/app/logic/a/a;
.super Ljava/lang/Object;
.source "BaseDecorator.java"


# instance fields
.field protected a:Lcom/alipay/android/app/logic/a/a;

.field protected b:Lcom/alipay/android/app/trans/config/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/logic/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/logic/a/a;->a:Lcom/alipay/android/app/logic/a/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public a(Lcom/alipay/android/app/trans/config/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/logic/a/a;->b:Lcom/alipay/android/app/trans/config/a;

    return-void
.end method

.method public abstract a([BLjava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/json/JSONException;
        }
    .end annotation
.end method
