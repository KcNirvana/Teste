.class public Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;
.super Ljava/lang/Object;
.source "SendPhoneTicketParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    }
.end annotation


# instance fields
.field public final activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field public final activatorToken:Ljava/lang/String;

.field public final captCode:Ljava/lang/String;

.field public final captIck:Ljava/lang/String;

.field public final deviceId:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final phoneHash:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final serviceId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$000(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->phone:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$100(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v0, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->phoneHash:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->phoneHash:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v0, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->activatorToken:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorToken:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$200(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->deviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$300(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->serviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$400(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->captCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$500(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->captIck:Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->access$600(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->region:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;-><init>(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;)V

    return-void
.end method

.method public static copyFrom(Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->phone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->activatorPhoneInfo:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->phoneHashActivatorToken(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->serviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->deviceId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->captCode:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->captIck:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->captchaCode(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams;->region:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;->region(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/SendPhoneTicketParams$Builder;

    move-result-object p0

    return-object p0
.end method
