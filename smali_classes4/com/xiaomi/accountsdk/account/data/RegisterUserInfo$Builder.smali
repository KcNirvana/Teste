.class public Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
.super Ljava/lang/Object;
.source "RegisterUserInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private avatarAddress:Ljava/lang/String;

.field private bindTime:J

.field private hasPwd:Z

.field private maskedUserId:Ljava/lang/String;

.field private needGetActiveTime:Z

.field private needToast:Z

.field private phone:Ljava/lang/String;

.field private registerPwd:Z

.field private status:I

.field private ticketToken:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->status:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->status:I

    return p0
.end method

.method static synthetic access$100(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needToast:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->registerPwd:Z

    return p0
.end method

.method static synthetic access$200(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->avatarAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->ticketToken:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->phone:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->maskedUserId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->hasPwd:Z

    return p0
.end method

.method static synthetic access$800(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->bindTime:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needGetActiveTime:Z

    return p0
.end method


# virtual methods
.method public avatarAddress(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->avatarAddress:Ljava/lang/String;

    return-object p0
.end method

.method public bindTime(J)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->bindTime:J

    return-object p0
.end method

.method public build()Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;
    .locals 2

    new-instance v0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo;-><init>(Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$1;)V

    return-object v0
.end method

.method public hasPwd(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->hasPwd:Z

    return-object p0
.end method

.method public maskedUserId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->maskedUserId:Ljava/lang/String;

    return-object p0
.end method

.method public needGetActiveTime(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needGetActiveTime:Z

    return-object p0
.end method

.method public needToast(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->needToast:Z

    return-object p0
.end method

.method public phone(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->phone:Ljava/lang/String;

    return-object p0
.end method

.method public registerPwd(Z)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->registerPwd:Z

    return-object p0
.end method

.method public status(I)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->status:I

    return-object p0
.end method

.method public ticketToken(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->ticketToken:Ljava/lang/String;

    return-object p0
.end method

.method public userId(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public userName(Ljava/lang/String;)Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/account/data/RegisterUserInfo$Builder;->userName:Ljava/lang/String;

    return-object p0
.end method
