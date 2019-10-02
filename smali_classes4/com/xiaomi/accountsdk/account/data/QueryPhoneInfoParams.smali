.class public Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;
.super Ljava/lang/Object;
.source "QueryPhoneInfoParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;
    }
.end annotation


# instance fields
.field public final activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final activatorToken:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final phoneHash:Ljava/lang/String;

.field public final ticket:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->ticket:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->activatorToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->phoneHash:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams;-><init>(Lcom/xiaomi/accountsdk/account/data/QueryPhoneInfoParams$Builder;)V

    return-void
.end method
