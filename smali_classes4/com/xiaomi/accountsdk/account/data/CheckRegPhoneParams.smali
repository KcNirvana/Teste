.class public Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;
.super Ljava/lang/Object;
.source "CheckRegPhoneParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;
    }
.end annotation


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final hashedSimId:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final ticket:Ljava/lang/String;

.field public final vKey2:Ljava/lang/String;

.field public final vKey2Nonce:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->ticket:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->hashedSimId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->vKey2:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->vKey2Nonce:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;->region:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams;-><init>(Lcom/xiaomi/accountsdk/account/data/CheckRegPhoneParams$Builder;)V

    return-void
.end method
