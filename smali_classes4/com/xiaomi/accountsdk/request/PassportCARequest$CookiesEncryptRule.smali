.class Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;
.super Ljava/lang/Object;
.source "PassportCARequest.java"

# interfaces
.implements Lcom/xiaomi/accountsdk/request/PassportCARequest$EncryptRule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/request/PassportCARequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CookiesEncryptRule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/request/PassportCARequest$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/request/PassportCARequest$CookiesEncryptRule;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEncrypt(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "__"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passport_ca_token"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
