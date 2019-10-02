.class public Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;
.super Ljava/lang/Object;
.source "PassTokenLoginParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;
    }
.end annotation


# instance fields
.field public final deviceId:Ljava/lang/String;

.field public final isGetPhoneTicketLoginMetaData:Z

.field public final loginRequestUrl:Ljava/lang/String;

.field public final passToken:Ljava/lang/String;

.field public final returnStsUrl:Z

.field public final serviceId:Ljava/lang/String;

.field public final userId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->userId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->passToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->serviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->loginRequestUrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->returnStsUrl:Z

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;->isGetPhoneTicketLoginMetaData:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams;-><init>(Lcom/xiaomi/accountsdk/account/data/PassTokenLoginParams$Builder;)V

    return-void
.end method
